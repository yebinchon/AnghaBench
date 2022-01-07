; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_psci.c_kvm_psci_0_2_call.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_psci.c_kvm_psci_0_2_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.kvm* }
%struct.kvm = type { i32 }

@KVM_ARM_PSCI_0_2 = common dso_local global i64 0, align 8
@PSCI_RET_SUCCESS = common dso_local global i64 0, align 8
@PSCI_0_2_TOS_MP = common dso_local global i64 0, align 8
@PSCI_RET_INTERNAL_FAILURE = common dso_local global i64 0, align 8
@PSCI_RET_NOT_SUPPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_psci_0_2_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_psci_0_2_call(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = load %struct.kvm*, %struct.kvm** %8, align 8
  store %struct.kvm* %9, %struct.kvm** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call i32 @smccc_get_function(%struct.kvm_vcpu* %10)
  store i32 %11, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %44 [
    i32 130, label %13
    i32 132, label %15
    i32 136, label %15
    i32 134, label %18
    i32 133, label %22
    i32 137, label %22
    i32 135, label %31
    i32 138, label %31
    i32 131, label %34
    i32 129, label %36
    i32 128, label %40
  ]

13:                                               ; preds = %1
  %14 = load i64, i64* @KVM_ARM_PSCI_0_2, align 8
  store i64 %14, i64* %5, align 8
  br label %46

15:                                               ; preds = %1, %1
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = call i64 @kvm_psci_vcpu_suspend(%struct.kvm_vcpu* %16)
  store i64 %17, i64* %5, align 8
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = call i32 @kvm_psci_vcpu_off(%struct.kvm_vcpu* %19)
  %21 = load i64, i64* @PSCI_RET_SUCCESS, align 8
  store i64 %21, i64* %5, align 8
  br label %46

22:                                               ; preds = %1, %1
  %23 = load %struct.kvm*, %struct.kvm** %3, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = call i64 @kvm_psci_vcpu_on(%struct.kvm_vcpu* %26)
  store i64 %27, i64* %5, align 8
  %28 = load %struct.kvm*, %struct.kvm** %3, align 8
  %29 = getelementptr inbounds %struct.kvm, %struct.kvm* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  br label %46

31:                                               ; preds = %1, %1
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %33 = call i64 @kvm_psci_vcpu_affinity_info(%struct.kvm_vcpu* %32)
  store i64 %33, i64* %5, align 8
  br label %46

34:                                               ; preds = %1
  %35 = load i64, i64* @PSCI_0_2_TOS_MP, align 8
  store i64 %35, i64* %5, align 8
  br label %46

36:                                               ; preds = %1
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %38 = call i32 @kvm_psci_system_off(%struct.kvm_vcpu* %37)
  %39 = load i64, i64* @PSCI_RET_INTERNAL_FAILURE, align 8
  store i64 %39, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %46

40:                                               ; preds = %1
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %42 = call i32 @kvm_psci_system_reset(%struct.kvm_vcpu* %41)
  %43 = load i64, i64* @PSCI_RET_INTERNAL_FAILURE, align 8
  store i64 %43, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %46

44:                                               ; preds = %1
  %45 = load i64, i64* @PSCI_RET_NOT_SUPPORTED, align 8
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %44, %40, %36, %34, %31, %22, %18, %15, %13
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @smccc_set_retval(%struct.kvm_vcpu* %47, i64 %48, i32 0, i32 0, i32 0)
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @smccc_get_function(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_psci_vcpu_suspend(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_psci_vcpu_off(%struct.kvm_vcpu*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @kvm_psci_vcpu_on(%struct.kvm_vcpu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @kvm_psci_vcpu_affinity_info(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_psci_system_off(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_psci_system_reset(%struct.kvm_vcpu*) #1

declare dso_local i32 @smccc_set_retval(%struct.kvm_vcpu*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
