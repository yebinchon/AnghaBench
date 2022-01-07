; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_save_ite.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_save_ite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.its_device = type { i32 }
%struct.its_ite = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@KVM_ITS_ITE_NEXT_SHIFT = common dso_local global i32 0, align 4
@KVM_ITS_ITE_PINTID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, %struct.its_device*, %struct.its_ite*, i32, i32)* @vgic_its_save_ite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_save_ite(%struct.vgic_its* %0, %struct.its_device* %1, %struct.its_ite* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca %struct.its_device*, align 8
  %8 = alloca %struct.its_ite*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvm*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.vgic_its* %0, %struct.vgic_its** %6, align 8
  store %struct.its_device* %1, %struct.its_device** %7, align 8
  store %struct.its_ite* %2, %struct.its_ite** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %15 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.kvm*, %struct.kvm** %17, align 8
  store %struct.kvm* %18, %struct.kvm** %11, align 8
  %19 = load %struct.its_device*, %struct.its_device** %7, align 8
  %20 = getelementptr inbounds %struct.its_device, %struct.its_device* %19, i32 0, i32 0
  %21 = load %struct.its_ite*, %struct.its_ite** %8, align 8
  %22 = call i64 @compute_next_eventid_offset(i32* %20, %struct.its_ite* %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @KVM_ITS_ITE_NEXT_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.its_ite*, %struct.its_ite** %8, align 8
  %28 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @KVM_ITS_ITE_PINTID_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %26, %34
  %36 = load %struct.its_ite*, %struct.its_ite** %8, align 8
  %37 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %35, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @cpu_to_le64(i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.kvm*, %struct.kvm** %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @kvm_write_guest_lock(%struct.kvm* %44, i32 %45, i32* %13, i32 %46)
  ret i32 %47
}

declare dso_local i64 @compute_next_eventid_offset(i32*, %struct.its_ite*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @kvm_write_guest_lock(%struct.kvm*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
