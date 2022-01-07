; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32 }
%struct.vgic_its_abi = type { i32 (%struct.vgic_its.0*)*, i32 (%struct.vgic_its.1*)* }
%struct.vgic_its.0 = type opaque
%struct.vgic_its.1 = type opaque

@KVM_DEV_ARM_VGIC_CTRL_INIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_its*, i32)* @vgic_its_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_ctrl(%struct.kvm* %0, %struct.vgic_its* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vgic_its_abi*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %11 = call %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its* %10)
  store %struct.vgic_its_abi* %11, %struct.vgic_its_abi** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @KVM_DEV_ARM_VGIC_CTRL_INIT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

16:                                               ; preds = %3
  %17 = load %struct.kvm*, %struct.kvm** %5, align 8
  %18 = getelementptr inbounds %struct.kvm, %struct.kvm* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %21 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.kvm*, %struct.kvm** %5, align 8
  %24 = call i32 @lock_all_vcpus(%struct.kvm* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %16
  %27 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %28 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.kvm*, %struct.kvm** %5, align 8
  %31 = getelementptr inbounds %struct.kvm, %struct.kvm* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %65

35:                                               ; preds = %16
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %55 [
    i32 130, label %37
    i32 128, label %41
    i32 129, label %48
  ]

37:                                               ; preds = %35
  %38 = load %struct.kvm*, %struct.kvm** %5, align 8
  %39 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %40 = call i32 @vgic_its_reset(%struct.kvm* %38, %struct.vgic_its* %39)
  br label %55

41:                                               ; preds = %35
  %42 = load %struct.vgic_its_abi*, %struct.vgic_its_abi** %8, align 8
  %43 = getelementptr inbounds %struct.vgic_its_abi, %struct.vgic_its_abi* %42, i32 0, i32 0
  %44 = load i32 (%struct.vgic_its.0*)*, i32 (%struct.vgic_its.0*)** %43, align 8
  %45 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %46 = bitcast %struct.vgic_its* %45 to %struct.vgic_its.0*
  %47 = call i32 %44(%struct.vgic_its.0* %46)
  store i32 %47, i32* %9, align 4
  br label %55

48:                                               ; preds = %35
  %49 = load %struct.vgic_its_abi*, %struct.vgic_its_abi** %8, align 8
  %50 = getelementptr inbounds %struct.vgic_its_abi, %struct.vgic_its_abi* %49, i32 0, i32 1
  %51 = load i32 (%struct.vgic_its.1*)*, i32 (%struct.vgic_its.1*)** %50, align 8
  %52 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %53 = bitcast %struct.vgic_its* %52 to %struct.vgic_its.1*
  %54 = call i32 %51(%struct.vgic_its.1* %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %35, %48, %41, %37
  %56 = load %struct.kvm*, %struct.kvm** %5, align 8
  %57 = call i32 @unlock_all_vcpus(%struct.kvm* %56)
  %58 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %59 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.kvm*, %struct.kvm** %5, align 8
  %62 = getelementptr inbounds %struct.kvm, %struct.kvm* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %55, %26, %15
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.vgic_its_abi* @vgic_its_get_abi(%struct.vgic_its*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lock_all_vcpus(%struct.kvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vgic_its_reset(%struct.kvm*, %struct.vgic_its*) #1

declare dso_local i32 @unlock_all_vcpus(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
