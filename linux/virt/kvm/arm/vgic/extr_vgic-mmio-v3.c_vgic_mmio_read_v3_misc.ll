; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_mmio_read_v3_misc.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_mmio_read_v3_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i32, i32, i32 }

@GICD_CTLR_ENABLE_SS_G1 = common dso_local global i32 0, align 4
@GICD_CTLR_ARE_NS = common dso_local global i32 0, align 4
@GICD_CTLR_DS = common dso_local global i32 0, align 4
@VGIC_NR_PRIVATE_IRQS = common dso_local global i32 0, align 4
@INTERRUPT_ID_BITS_ITS = common dso_local global i32 0, align 4
@GICD_TYPER_LPIS = common dso_local global i32 0, align 4
@INTERRUPT_ID_BITS_SPIS = common dso_local global i32 0, align 4
@PRODUCT_ID_KVM = common dso_local global i32 0, align 4
@GICD_IIDR_PRODUCT_ID_SHIFT = common dso_local global i32 0, align 4
@GICD_IIDR_REVISION_SHIFT = common dso_local global i32 0, align 4
@IMPLEMENTER_ARM = common dso_local global i32 0, align 4
@GICD_IIDR_IMPLEMENTER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i32, i32)* @vgic_mmio_read_v3_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vgic_mmio_read_v3_misc(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vgic_dist*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.vgic_dist* %14, %struct.vgic_dist** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 12
  switch i32 %16, label %76 [
    i32 130, label %17
    i32 128, label %32
    i32 129, label %62
  ]

17:                                               ; preds = %3
  %18 = load %struct.vgic_dist*, %struct.vgic_dist** %8, align 8
  %19 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @GICD_CTLR_ENABLE_SS_G1, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* @GICD_CTLR_ARE_NS, align 4
  %28 = load i32, i32* @GICD_CTLR_DS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %77

32:                                               ; preds = %3
  %33 = load %struct.vgic_dist*, %struct.vgic_dist** %8, align 8
  %34 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VGIC_NR_PRIVATE_IRQS, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 5
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @vgic_has_its(%struct.TYPE_4__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %32
  %47 = load i32, i32* @INTERRUPT_ID_BITS_ITS, align 4
  %48 = sub nsw i32 %47, 1
  %49 = shl i32 %48, 19
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @GICD_TYPER_LPIS, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %61

55:                                               ; preds = %32
  %56 = load i32, i32* @INTERRUPT_ID_BITS_SPIS, align 4
  %57 = sub nsw i32 %56, 1
  %58 = shl i32 %57, 19
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %55, %46
  br label %77

62:                                               ; preds = %3
  %63 = load i32, i32* @PRODUCT_ID_KVM, align 4
  %64 = load i32, i32* @GICD_IIDR_PRODUCT_ID_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load %struct.vgic_dist*, %struct.vgic_dist** %8, align 8
  %67 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GICD_IIDR_REVISION_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %65, %70
  %72 = load i32, i32* @IMPLEMENTER_ARM, align 4
  %73 = load i32, i32* @GICD_IIDR_IMPLEMENTER_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %71, %74
  store i32 %75, i32* %9, align 4
  br label %77

76:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %80

77:                                               ; preds = %62, %61, %26
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %77, %76
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local i32 @vgic_has_its(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
