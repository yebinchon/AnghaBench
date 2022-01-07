; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { i32, %struct.kvm_device*, %struct.kvm* }
%struct.kvm = type { i32 }
%struct.vgic_its = type { i32, %struct.vgic_its*, %struct.kvm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_device*)* @vgic_its_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_its_destroy(%struct.kvm_device* %0) #0 {
  %2 = alloca %struct.kvm_device*, align 8
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.vgic_its*, align 8
  store %struct.kvm_device* %0, %struct.kvm_device** %2, align 8
  %5 = load %struct.kvm_device*, %struct.kvm_device** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %5, i32 0, i32 2
  %7 = load %struct.kvm*, %struct.kvm** %6, align 8
  store %struct.kvm* %7, %struct.kvm** %3, align 8
  %8 = load %struct.kvm_device*, %struct.kvm_device** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %8, i32 0, i32 1
  %10 = load %struct.kvm_device*, %struct.kvm_device** %9, align 8
  %11 = bitcast %struct.kvm_device* %10 to %struct.vgic_its*
  store %struct.vgic_its* %11, %struct.vgic_its** %4, align 8
  %12 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %13 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.kvm*, %struct.kvm** %3, align 8
  %16 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %17 = call i32 @vgic_its_free_device_list(%struct.kvm* %15, %struct.vgic_its* %16)
  %18 = load %struct.kvm*, %struct.kvm** %3, align 8
  %19 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %20 = call i32 @vgic_its_free_collection_list(%struct.kvm* %18, %struct.vgic_its* %19)
  %21 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %22 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %25 = call i32 @kfree(%struct.vgic_its* %24)
  %26 = load %struct.kvm_device*, %struct.kvm_device** %2, align 8
  %27 = bitcast %struct.kvm_device* %26 to %struct.vgic_its*
  %28 = call i32 @kfree(%struct.vgic_its* %27)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vgic_its_free_device_list(%struct.kvm*, %struct.vgic_its*) #1

declare dso_local i32 @vgic_its_free_collection_list(%struct.kvm*, %struct.vgic_its*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.vgic_its*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
