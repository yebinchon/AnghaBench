; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_read_v2_misc.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_read_v2_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i32, i32, i32 }

@GICD_ENABLE = common dso_local global i32 0, align 4
@VGIC_NR_PRIVATE_IRQS = common dso_local global i32 0, align 4
@PRODUCT_ID_KVM = common dso_local global i32 0, align 4
@GICD_IIDR_PRODUCT_ID_SHIFT = common dso_local global i32 0, align 4
@GICD_IIDR_REVISION_SHIFT = common dso_local global i32 0, align 4
@IMPLEMENTER_ARM = common dso_local global i32 0, align 4
@GICD_IIDR_IMPLEMENTER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i32, i32)* @vgic_mmio_read_v2_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vgic_mmio_read_v2_misc(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.vgic_dist* %14, %struct.vgic_dist** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 12
  switch i32 %16, label %59 [
    i32 129, label %17
    i32 130, label %27
    i32 128, label %45
  ]

17:                                               ; preds = %3
  %18 = load %struct.vgic_dist*, %struct.vgic_dist** %8, align 8
  %19 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @GICD_ENABLE, align 4
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %9, align 4
  br label %60

27:                                               ; preds = %3
  %28 = load %struct.vgic_dist*, %struct.vgic_dist** %8, align 8
  %29 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VGIC_NR_PRIVATE_IRQS, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = ashr i32 %33, 5
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @atomic_read(i32* %39)
  %41 = sub nsw i32 %40, 1
  %42 = shl i32 %41, 5
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %60

45:                                               ; preds = %3
  %46 = load i32, i32* @PRODUCT_ID_KVM, align 4
  %47 = load i32, i32* @GICD_IIDR_PRODUCT_ID_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load %struct.vgic_dist*, %struct.vgic_dist** %8, align 8
  %50 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GICD_IIDR_REVISION_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %48, %53
  %55 = load i32, i32* @IMPLEMENTER_ARM, align 4
  %56 = load i32, i32* @GICD_IIDR_IMPLEMENTER_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %54, %57
  store i32 %58, i32* %9, align 4
  br label %60

59:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %63

60:                                               ; preds = %45, %27, %25
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %60, %59
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
