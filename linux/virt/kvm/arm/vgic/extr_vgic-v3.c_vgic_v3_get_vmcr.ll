; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_get_vmcr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_get_vmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vgic_v3_cpu_if }
%struct.vgic_v3_cpu_if = type { i64 }
%struct.vgic_vmcr = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@KVM_DEV_TYPE_ARM_VGIC_V2 = common dso_local global i64 0, align 8
@ICH_VMCR_ACK_CTL_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_ACK_CTL_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_FIQ_EN_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_FIQ_EN_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_CBPR_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_CBPR_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_EOIM_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_EOIM_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_BPR1_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_BPR1_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_BPR0_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_BPR0_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_PMR_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_PMR_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_ENG0_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_ENG0_SHIFT = common dso_local global i64 0, align 8
@ICH_VMCR_ENG1_MASK = common dso_local global i64 0, align 8
@ICH_VMCR_ENG1_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_v3_get_vmcr(%struct.kvm_vcpu* %0, %struct.vgic_vmcr* %1) #0 {
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
  %19 = load %struct.vgic_v3_cpu_if*, %struct.vgic_v3_cpu_if** %5, align 8
  %20 = getelementptr inbounds %struct.vgic_v3_cpu_if, %struct.vgic_v3_cpu_if* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @ICH_VMCR_ACK_CTL_MASK, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @ICH_VMCR_ACK_CTL_SHIFT, align 8
  %30 = ashr i64 %28, %29
  %31 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %32 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %31, i32 0, i32 8
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @ICH_VMCR_FIQ_EN_MASK, align 8
  %35 = and i64 %33, %34
  %36 = load i64, i64* @ICH_VMCR_FIQ_EN_SHIFT, align 8
  %37 = ashr i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %40 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %46

41:                                               ; preds = %2
  %42 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %43 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %45 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %44, i32 0, i32 8
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %25
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @ICH_VMCR_CBPR_MASK, align 8
  %49 = and i64 %47, %48
  %50 = load i64, i64* @ICH_VMCR_CBPR_SHIFT, align 8
  %51 = ashr i64 %49, %50
  %52 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %53 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %52, i32 0, i32 7
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @ICH_VMCR_EOIM_MASK, align 8
  %56 = and i64 %54, %55
  %57 = load i64, i64* @ICH_VMCR_EOIM_SHIFT, align 8
  %58 = ashr i64 %56, %57
  %59 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %60 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %59, i32 0, i32 6
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @ICH_VMCR_BPR1_MASK, align 8
  %63 = and i64 %61, %62
  %64 = load i64, i64* @ICH_VMCR_BPR1_SHIFT, align 8
  %65 = ashr i64 %63, %64
  %66 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %67 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %66, i32 0, i32 5
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @ICH_VMCR_BPR0_MASK, align 8
  %70 = and i64 %68, %69
  %71 = load i64, i64* @ICH_VMCR_BPR0_SHIFT, align 8
  %72 = ashr i64 %70, %71
  %73 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %74 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @ICH_VMCR_PMR_MASK, align 8
  %77 = and i64 %75, %76
  %78 = load i64, i64* @ICH_VMCR_PMR_SHIFT, align 8
  %79 = ashr i64 %77, %78
  %80 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %81 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @ICH_VMCR_ENG0_MASK, align 8
  %84 = and i64 %82, %83
  %85 = load i64, i64* @ICH_VMCR_ENG0_SHIFT, align 8
  %86 = ashr i64 %84, %85
  %87 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %88 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @ICH_VMCR_ENG1_MASK, align 8
  %91 = and i64 %89, %90
  %92 = load i64, i64* @ICH_VMCR_ENG1_SHIFT, align 8
  %93 = ashr i64 %91, %92
  %94 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %95 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
