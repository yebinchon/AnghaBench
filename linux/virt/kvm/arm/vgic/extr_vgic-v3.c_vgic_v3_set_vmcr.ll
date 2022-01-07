; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_set_vmcr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_set_vmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vgic_v3_cpu_if }
%struct.vgic_v3_cpu_if = type { i64 }
%struct.vgic_vmcr = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@KVM_DEV_TYPE_ARM_VGIC_V2 = common dso_local global i64 0, align 8
@ICH_VMCR_ACK_CTL_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_ACK_CTL_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_FIQ_EN_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_FIQ_EN_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_CBPR_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_CBPR_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_EOIM_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_EOIM_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_BPR1_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_BPR1_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_BPR0_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_BPR0_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_PMR_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_PMR_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_ENG0_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_ENG0_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_ENG1_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_ENG1_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_v3_set_vmcr(%struct.kvm_vcpu* %0, %struct.vgic_vmcr* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vgic_vmcr*, align 8
  %5 = alloca %struct.vgic_v3_cpu_if*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.vgic_vmcr* %1, %struct.vgic_vmcr** %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.vgic_v3_cpu_if* %11, %struct.vgic_v3_cpu_if** %5, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V2, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %24 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ICH_VMCR_ACK_CTL_SHIFT, align 8
  %27 = shl i64 %25, %26
  %28 = load i64, i64* @ICH_VMCR_ACK_CTL_MASK, align 8
  %29 = and i64 %27, %28
  store i64 %29, i64* %7, align 8
  %30 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %31 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ICH_VMCR_FIQ_EN_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = load i64, i64* @ICH_VMCR_FIQ_EN_MASK, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %41

39:                                               ; preds = %2
  %40 = load i64, i64* @ICH_VMCR_FIQ_EN_MASK, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %39, %22
  %42 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %43 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ICH_VMCR_CBPR_SHIFT, align 8
  %46 = shl i64 %44, %45
  %47 = load i64, i64* @ICH_VMCR_CBPR_MASK, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* %7, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %52 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ICH_VMCR_EOIM_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = load i64, i64* @ICH_VMCR_EOIM_MASK, align 8
  %57 = and i64 %55, %56
  %58 = load i64, i64* %7, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %7, align 8
  %60 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %61 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ICH_VMCR_BPR1_SHIFT, align 8
  %64 = shl i64 %62, %63
  %65 = load i64, i64* @ICH_VMCR_BPR1_MASK, align 8
  %66 = and i64 %64, %65
  %67 = load i64, i64* %7, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %7, align 8
  %69 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %70 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ICH_VMCR_BPR0_SHIFT, align 8
  %73 = shl i64 %71, %72
  %74 = load i64, i64* @ICH_VMCR_BPR0_MASK, align 8
  %75 = and i64 %73, %74
  %76 = load i64, i64* %7, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %7, align 8
  %78 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %79 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ICH_VMCR_PMR_SHIFT, align 8
  %82 = shl i64 %80, %81
  %83 = load i64, i64* @ICH_VMCR_PMR_MASK, align 8
  %84 = and i64 %82, %83
  %85 = load i64, i64* %7, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %7, align 8
  %87 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %88 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ICH_VMCR_ENG0_SHIFT, align 8
  %91 = shl i64 %89, %90
  %92 = load i64, i64* @ICH_VMCR_ENG0_MASK, align 8
  %93 = and i64 %91, %92
  %94 = load i64, i64* %7, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %7, align 8
  %96 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %97 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ICH_VMCR_ENG1_SHIFT, align 8
  %100 = shl i64 %98, %99
  %101 = load i64, i64* @ICH_VMCR_ENG1_MASK, align 8
  %102 = and i64 %100, %101
  %103 = load i64, i64* %7, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %7, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %5, align 8
  %107 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
