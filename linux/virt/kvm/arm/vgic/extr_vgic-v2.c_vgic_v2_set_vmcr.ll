; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v2.c_vgic_v2_set_vmcr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v2.c_vgic_v2_set_vmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vgic_v2_cpu_if }
%struct.vgic_v2_cpu_if = type { i32 }
%struct.vgic_vmcr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GICH_VMCR_ENABLE_GRP0_SHIFT = common dso_local global i32 0, align 4
@GICH_VMCR_ENABLE_GRP0_MASK = common dso_local global i32 0, align 4
@GICH_VMCR_ENABLE_GRP1_SHIFT = common dso_local global i32 0, align 4
@GICH_VMCR_ENABLE_GRP1_MASK = common dso_local global i32 0, align 4
@GICH_VMCR_ACK_CTL_SHIFT = common dso_local global i32 0, align 4
@GICH_VMCR_ACK_CTL_MASK = common dso_local global i32 0, align 4
@GICH_VMCR_FIQ_EN_SHIFT = common dso_local global i32 0, align 4
@GICH_VMCR_FIQ_EN_MASK = common dso_local global i32 0, align 4
@GICH_VMCR_CBPR_SHIFT = common dso_local global i32 0, align 4
@GICH_VMCR_CBPR_MASK = common dso_local global i32 0, align 4
@GICH_VMCR_EOI_MODE_SHIFT = common dso_local global i32 0, align 4
@GICH_VMCR_EOI_MODE_MASK = common dso_local global i32 0, align 4
@GICH_VMCR_ALIAS_BINPOINT_SHIFT = common dso_local global i32 0, align 4
@GICH_VMCR_ALIAS_BINPOINT_MASK = common dso_local global i32 0, align 4
@GICH_VMCR_BINPOINT_SHIFT = common dso_local global i32 0, align 4
@GICH_VMCR_BINPOINT_MASK = common dso_local global i32 0, align 4
@GICV_PMR_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@GICH_VMCR_PRIMASK_SHIFT = common dso_local global i32 0, align 4
@GICH_VMCR_PRIMASK_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_v2_set_vmcr(%struct.kvm_vcpu* %0, %struct.vgic_vmcr* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vgic_vmcr*, align 8
  %5 = alloca %struct.vgic_v2_cpu_if*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.vgic_vmcr* %1, %struct.vgic_vmcr** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.vgic_v2_cpu_if* %10, %struct.vgic_v2_cpu_if** %5, align 8
  %11 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %12 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GICH_VMCR_ENABLE_GRP0_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* @GICH_VMCR_ENABLE_GRP0_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %19 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GICH_VMCR_ENABLE_GRP1_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @GICH_VMCR_ENABLE_GRP1_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %28 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GICH_VMCR_ACK_CTL_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* @GICH_VMCR_ACK_CTL_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %37 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GICH_VMCR_FIQ_EN_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @GICH_VMCR_FIQ_EN_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %46 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GICH_VMCR_CBPR_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @GICH_VMCR_CBPR_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %55 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GICH_VMCR_EOI_MODE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* @GICH_VMCR_EOI_MODE_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %64 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GICH_VMCR_ALIAS_BINPOINT_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* @GICH_VMCR_ALIAS_BINPOINT_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %73 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @GICH_VMCR_BINPOINT_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* @GICH_VMCR_BINPOINT_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.vgic_vmcr*, %struct.vgic_vmcr** %4, align 8
  %82 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GICV_PMR_PRIORITY_SHIFT, align 4
  %85 = ashr i32 %83, %84
  %86 = load i32, i32* @GICH_VMCR_PRIMASK_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* @GICH_VMCR_PRIMASK_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.vgic_v2_cpu_if*, %struct.vgic_v2_cpu_if** %5, align 8
  %94 = getelementptr inbounds %struct.vgic_v2_cpu_if, %struct.vgic_v2_cpu_if* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
