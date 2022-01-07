; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_read_vcpuif.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_read_vcpuif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_vmcr = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@GIC_CPU_CTRL_EnableGrp0_SHIFT = common dso_local global i64 0, align 8
@GIC_CPU_CTRL_EnableGrp1_SHIFT = common dso_local global i64 0, align 8
@GIC_CPU_CTRL_AckCtl_SHIFT = common dso_local global i64 0, align 8
@GIC_CPU_CTRL_FIQEn_SHIFT = common dso_local global i64 0, align 8
@GIC_CPU_CTRL_CBPR_SHIFT = common dso_local global i64 0, align 8
@GIC_CPU_CTRL_EOImodeNS_SHIFT = common dso_local global i64 0, align 8
@GICV_PMR_PRIORITY_MASK = common dso_local global i64 0, align 8
@GICV_PMR_PRIORITY_SHIFT = common dso_local global i64 0, align 8
@PRODUCT_ID_KVM = common dso_local global i32 0, align 4
@GICC_ARCH_VERSION_V2 = common dso_local global i32 0, align 4
@IMPLEMENTER_ARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i32, i32)* @vgic_mmio_read_vcpuif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vgic_mmio_read_vcpuif(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vgic_vmcr, align 8
  %9 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = call i32 @vgic_get_vmcr(%struct.kvm_vcpu* %10, %struct.vgic_vmcr* %8)
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 255
  switch i32 %13, label %71 [
    i32 130, label %14
    i32 128, label %49
    i32 131, label %56
    i32 132, label %59
    i32 129, label %62
  ]

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %8, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GIC_CPU_CTRL_EnableGrp0_SHIFT, align 8
  %18 = shl i64 %16, %17
  store i64 %18, i64* %9, align 8
  %19 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %8, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GIC_CPU_CTRL_EnableGrp1_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = load i64, i64* %9, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %9, align 8
  %25 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %8, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GIC_CPU_CTRL_AckCtl_SHIFT, align 8
  %28 = shl i64 %26, %27
  %29 = load i64, i64* %9, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %9, align 8
  %31 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %8, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GIC_CPU_CTRL_FIQEn_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = load i64, i64* %9, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %9, align 8
  %37 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %8, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GIC_CPU_CTRL_CBPR_SHIFT, align 8
  %40 = shl i64 %38, %39
  %41 = load i64, i64* %9, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %9, align 8
  %43 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %8, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GIC_CPU_CTRL_EOImodeNS_SHIFT, align 8
  %46 = shl i64 %44, %45
  %47 = load i64, i64* %9, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %9, align 8
  br label %72

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %8, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @GICV_PMR_PRIORITY_MASK, align 8
  %53 = and i64 %51, %52
  %54 = load i64, i64* @GICV_PMR_PRIORITY_SHIFT, align 8
  %55 = lshr i64 %53, %54
  store i64 %55, i64* %9, align 8
  br label %72

56:                                               ; preds = %3
  %57 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %8, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %9, align 8
  br label %72

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %8, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %9, align 8
  br label %72

62:                                               ; preds = %3
  %63 = load i32, i32* @PRODUCT_ID_KVM, align 4
  %64 = shl i32 %63, 20
  %65 = load i32, i32* @GICC_ARCH_VERSION_V2, align 4
  %66 = shl i32 %65, 16
  %67 = or i32 %64, %66
  %68 = load i32, i32* @IMPLEMENTER_ARM, align 4
  %69 = or i32 %67, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %9, align 8
  br label %72

71:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %74

72:                                               ; preds = %62, %59, %56, %49, %14
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %72, %71
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i32 @vgic_get_vmcr(%struct.kvm_vcpu*, %struct.vgic_vmcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
