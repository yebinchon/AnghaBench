; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_psci.c_kvm_hvc_call_handler.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_psci.c_kvm_hvc_call_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@SMCCC_RET_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ARM_SMCCC_VERSION_1_1 = common dso_local global i32 0, align 4
@SMCCC_RET_SUCCESS = common dso_local global i32 0, align 4
@SMCCC_RET_NOT_REQUIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_hvc_call_handler(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call i32 @smccc_get_function(%struct.kvm_vcpu* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @SMCCC_RET_NOT_SUPPORTED, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %34 [
    i32 136, label %11
    i32 139, label %13
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @ARM_SMCCC_VERSION_1_1, align 4
  store i32 %12, i32* %5, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call i32 @smccc_get_arg1(%struct.kvm_vcpu* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %33 [
    i32 138, label %17
    i32 137, label %25
  ]

17:                                               ; preds = %13
  %18 = call i32 (...) @kvm_arm_harden_branch_predictor()
  switch i32 %18, label %24 [
    i32 134, label %19
    i32 133, label %20
    i32 135, label %22
  ]

19:                                               ; preds = %17
  br label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @SMCCC_RET_SUCCESS, align 4
  store i32 %21, i32* %5, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @SMCCC_RET_NOT_REQUIRED, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %17, %22, %20, %19
  br label %33

25:                                               ; preds = %13
  %26 = call i32 (...) @kvm_arm_have_ssbd()
  switch i32 %26, label %32 [
    i32 132, label %27
    i32 128, label %27
    i32 130, label %28
    i32 131, label %30
    i32 129, label %30
  ]

27:                                               ; preds = %25, %25
  br label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @SMCCC_RET_SUCCESS, align 4
  store i32 %29, i32* %5, align 4
  br label %32

30:                                               ; preds = %25, %25
  %31 = load i32, i32* @SMCCC_RET_NOT_REQUIRED, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %25, %30, %28, %27
  br label %33

33:                                               ; preds = %13, %32, %24
  br label %37

34:                                               ; preds = %1
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = call i32 @kvm_psci_call(%struct.kvm_vcpu* %35)
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %33, %11
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @smccc_set_retval(%struct.kvm_vcpu* %38, i32 %39, i32 0, i32 0, i32 0)
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @smccc_get_function(%struct.kvm_vcpu*) #1

declare dso_local i32 @smccc_get_arg1(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_arm_harden_branch_predictor(...) #1

declare dso_local i32 @kvm_arm_have_ssbd(...) #1

declare dso_local i32 @kvm_psci_call(%struct.kvm_vcpu*) #1

declare dso_local i32 @smccc_set_retval(%struct.kvm_vcpu*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
