; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_reset.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i64, i64, i64, i64, i32, i32 }

@GITS_BASER_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.vgic_its*)* @vgic_its_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_its_reset(%struct.kvm* %0, %struct.vgic_its* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.vgic_its*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %4, align 8
  %5 = load i32, i32* @GITS_BASER_VALID, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %8 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GITS_BASER_VALID, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %14 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %18 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %20 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %22 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %24 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.kvm*, %struct.kvm** %3, align 8
  %26 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %27 = call i32 @vgic_its_free_device_list(%struct.kvm* %25, %struct.vgic_its* %26)
  %28 = load %struct.kvm*, %struct.kvm** %3, align 8
  %29 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %30 = call i32 @vgic_its_free_collection_list(%struct.kvm* %28, %struct.vgic_its* %29)
  ret void
}

declare dso_local i32 @vgic_its_free_device_list(%struct.kvm*, %struct.vgic_its*) #1

declare dso_local i32 @vgic_its_free_collection_list(%struct.kvm*, %struct.vgic_its*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
