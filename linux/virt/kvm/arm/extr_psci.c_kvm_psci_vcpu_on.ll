; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_psci.c_kvm_psci_vcpu_on.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_psci.c_kvm_psci_vcpu_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, %struct.kvm* }
%struct.TYPE_2__ = type { i32, %struct.vcpu_reset_state }
%struct.vcpu_reset_state = type { i32, i32, i32, i32 }
%struct.kvm = type { i32 }

@MPIDR_HWID_BITMASK = common dso_local global i64 0, align 8
@PSCI_RET_INVALID_PARAMS = common dso_local global i64 0, align 8
@KVM_ARM_PSCI_0_1 = common dso_local global i64 0, align 8
@PSCI_RET_ALREADY_ON = common dso_local global i64 0, align 8
@KVM_REQ_VCPU_RESET = common dso_local global i32 0, align 4
@PSCI_RET_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*)* @kvm_psci_vcpu_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_psci_vcpu_on(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vcpu_reset_state*, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 1
  %10 = load %struct.kvm*, %struct.kvm** %9, align 8
  store %struct.kvm* %10, %struct.kvm** %5, align 8
  store %struct.kvm_vcpu* null, %struct.kvm_vcpu** %6, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call i64 @smccc_get_arg1(%struct.kvm_vcpu* %11)
  %13 = load i64, i64* @MPIDR_HWID_BITMASK, align 8
  %14 = and i64 %12, %13
  store i64 %14, i64* %7, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = call i64 @vcpu_mode_is_32bit(%struct.kvm_vcpu* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %18, %1
  %21 = load %struct.kvm*, %struct.kvm** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.kvm_vcpu* @kvm_mpidr_to_vcpu(%struct.kvm* %21, i64 %22)
  store %struct.kvm_vcpu* %23, %struct.kvm_vcpu** %6, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %25 = icmp ne %struct.kvm_vcpu* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* @PSCI_RET_INVALID_PARAMS, align 8
  store i64 %27, i64* %2, align 8
  br label %74

28:                                               ; preds = %20
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = load %struct.kvm*, %struct.kvm** %5, align 8
  %37 = call i64 @kvm_psci_version(%struct.kvm_vcpu* %35, %struct.kvm* %36)
  %38 = load i64, i64* @KVM_ARM_PSCI_0_1, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @PSCI_RET_ALREADY_ON, align 8
  store i64 %41, i64* %2, align 8
  br label %74

42:                                               ; preds = %34
  %43 = load i64, i64* @PSCI_RET_INVALID_PARAMS, align 8
  store i64 %43, i64* %2, align 8
  br label %74

44:                                               ; preds = %28
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.vcpu_reset_state* %47, %struct.vcpu_reset_state** %4, align 8
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = call i32 @smccc_get_arg2(%struct.kvm_vcpu* %48)
  %50 = load %struct.vcpu_reset_state*, %struct.vcpu_reset_state** %4, align 8
  %51 = getelementptr inbounds %struct.vcpu_reset_state, %struct.vcpu_reset_state* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = call i32 @kvm_vcpu_is_be(%struct.kvm_vcpu* %52)
  %54 = load %struct.vcpu_reset_state*, %struct.vcpu_reset_state** %4, align 8
  %55 = getelementptr inbounds %struct.vcpu_reset_state, %struct.vcpu_reset_state* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = call i32 @smccc_get_arg3(%struct.kvm_vcpu* %56)
  %58 = load %struct.vcpu_reset_state*, %struct.vcpu_reset_state** %4, align 8
  %59 = getelementptr inbounds %struct.vcpu_reset_state, %struct.vcpu_reset_state* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.vcpu_reset_state*, %struct.vcpu_reset_state** %4, align 8
  %61 = getelementptr inbounds %struct.vcpu_reset_state, %struct.vcpu_reset_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @WRITE_ONCE(i32 %62, i32 1)
  %64 = load i32, i32* @KVM_REQ_VCPU_RESET, align 4
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %66 = call i32 @kvm_make_request(i32 %64, %struct.kvm_vcpu* %65)
  %67 = call i32 (...) @smp_wmb()
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %72 = call i32 @kvm_vcpu_wake_up(%struct.kvm_vcpu* %71)
  %73 = load i64, i64* @PSCI_RET_SUCCESS, align 8
  store i64 %73, i64* %2, align 8
  br label %74

74:                                               ; preds = %44, %42, %40, %26
  %75 = load i64, i64* %2, align 8
  ret i64 %75
}

declare dso_local i64 @smccc_get_arg1(%struct.kvm_vcpu*) #1

declare dso_local i64 @vcpu_mode_is_32bit(%struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_vcpu* @kvm_mpidr_to_vcpu(%struct.kvm*, i64) #1

declare dso_local i64 @kvm_psci_version(%struct.kvm_vcpu*, %struct.kvm*) #1

declare dso_local i32 @smccc_get_arg2(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_is_be(%struct.kvm_vcpu*) #1

declare dso_local i32 @smccc_get_arg3(%struct.kvm_vcpu*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @kvm_vcpu_wake_up(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
