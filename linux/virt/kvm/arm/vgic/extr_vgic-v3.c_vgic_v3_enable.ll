; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_enable.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.vgic_v3_cpu_if }
%struct.vgic_v3_cpu_if = type { i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@KVM_DEV_TYPE_ARM_VGIC_V3 = common dso_local global i64 0, align 8
@ICC_SRE_EL1_DIB = common dso_local global i32 0, align 4
@ICC_SRE_EL1_DFB = common dso_local global i32 0, align 4
@ICC_SRE_EL1_SRE = common dso_local global i32 0, align 4
@INITIAL_PENDBASER_VALUE = common dso_local global i32 0, align 4
@kvm_vgic_global_state = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ICH_VTR_ID_BITS_MASK = common dso_local global i32 0, align 4
@ICH_VTR_ID_BITS_SHIFT = common dso_local global i32 0, align 4
@ICH_VTR_PRI_BITS_MASK = common dso_local global i32 0, align 4
@ICH_VTR_PRI_BITS_SHIFT = common dso_local global i32 0, align 4
@ICH_HCR_EN = common dso_local global i32 0, align 4
@group0_trap = common dso_local global i64 0, align 8
@ICH_HCR_TALL0 = common dso_local global i32 0, align 4
@group1_trap = common dso_local global i64 0, align 8
@ICH_HCR_TALL1 = common dso_local global i32 0, align 4
@common_trap = common dso_local global i64 0, align 8
@ICH_HCR_TC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_v3_enable(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vgic_v3_cpu_if*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  store %struct.vgic_v3_cpu_if* %7, %struct.vgic_v3_cpu_if** %3, align 8
  %8 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %3, align 8
  %9 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load i32, i32* @ICC_SRE_EL1_DIB, align 4
  %21 = load i32, i32* @ICC_SRE_EL1_DFB, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ICC_SRE_EL1_SRE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %3, align 8
  %26 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @INITIAL_PENDBASER_VALUE, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  store i32 %27, i32* %31, align 8
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %3, align 8
  %34 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %19
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvm_vgic_global_state, i32 0, i32 0), align 4
  %37 = load i32, i32* @ICH_VTR_ID_BITS_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @ICH_VTR_ID_BITS_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvm_vgic_global_state, i32 0, i32 0), align 4
  %46 = load i32, i32* @ICH_VTR_PRI_BITS_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @ICH_VTR_PRI_BITS_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @ICH_HCR_EN, align 4
  %56 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %3, align 8
  %57 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i64, i64* @group0_trap, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %35
  %61 = load i32, i32* @ICH_HCR_TALL0, align 4
  %62 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %3, align 8
  %63 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %35
  %67 = load i64, i64* @group1_trap, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* @ICH_HCR_TALL1, align 4
  %71 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %3, align 8
  %72 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i64, i64* @common_trap, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* @ICH_HCR_TC, align 4
  %80 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %3, align 8
  %81 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %75
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
