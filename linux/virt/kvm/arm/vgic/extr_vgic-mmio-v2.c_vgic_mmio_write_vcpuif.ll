; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_write_vcpuif.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_write_vcpuif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_vmcr = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@GIC_CPU_CTRL_EnableGrp0 = common dso_local global i64 0, align 8
@GIC_CPU_CTRL_EnableGrp1 = common dso_local global i64 0, align 8
@GIC_CPU_CTRL_AckCtl = common dso_local global i64 0, align 8
@GIC_CPU_CTRL_FIQEn = common dso_local global i64 0, align 8
@GIC_CPU_CTRL_CBPR = common dso_local global i64 0, align 8
@GIC_CPU_CTRL_EOImodeNS = common dso_local global i64 0, align 8
@GICV_PMR_PRIORITY_SHIFT = common dso_local global i64 0, align 8
@GICV_PMR_PRIORITY_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i32, i64)* @vgic_mmio_write_vcpuif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_mmio_write_vcpuif(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.vgic_vmcr, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = call i32 @vgic_get_vmcr(%struct.kvm_vcpu* %10, %struct.vgic_vmcr* %9)
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 255
  switch i32 %13, label %76 [
    i32 129, label %14
    i32 128, label %63
    i32 130, label %70
    i32 131, label %73
  ]

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @GIC_CPU_CTRL_EnableGrp0, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @GIC_CPU_CTRL_EnableGrp1, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @GIC_CPU_CTRL_AckCtl, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %9, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @GIC_CPU_CTRL_FIQEn, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %9, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @GIC_CPU_CTRL_CBPR, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %9, i32 0, i32 4
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @GIC_CPU_CTRL_EOImodeNS, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %9, i32 0, i32 5
  store i32 %61, i32* %62, align 4
  br label %76

63:                                               ; preds = %4
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @GICV_PMR_PRIORITY_SHIFT, align 8
  %66 = shl i64 %64, %65
  %67 = load i64, i64* @GICV_PMR_PRIORITY_MASK, align 8
  %68 = and i64 %66, %67
  %69 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %9, i32 0, i32 6
  store i64 %68, i64* %69, align 8
  br label %76

70:                                               ; preds = %4
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %9, i32 0, i32 7
  store i64 %71, i64* %72, align 8
  br label %76

73:                                               ; preds = %4
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.vgic_vmcr, %struct.vgic_vmcr* %9, i32 0, i32 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %4, %73, %70, %63, %14
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %78 = call i32 @vgic_set_vmcr(%struct.kvm_vcpu* %77, %struct.vgic_vmcr* %9)
  ret void
}

declare dso_local i32 @vgic_get_vmcr(%struct.kvm_vcpu*, %struct.vgic_vmcr*) #1

declare dso_local i32 @vgic_set_vmcr(%struct.kvm_vcpu*, %struct.vgic_vmcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
