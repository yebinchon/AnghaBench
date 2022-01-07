; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_write_target.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_write_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vgic_irq = type { i64, i32, i32 }

@VGIC_NR_PRIVATE_IRQS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i32, i64)* @vgic_mmio_write_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_mmio_write_target(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.vgic_irq*, align 8
  %14 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @VGIC_ADDR_TO_INTID(i32 %15, i32 8)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i64 @atomic_read(i32* %20)
  %22 = sub nsw i64 %21, 1
  %23 = call i64 @GENMASK(i64 %22, i32 0)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @VGIC_NR_PRIVATE_IRQS, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %86

28:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %83, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %29
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call %struct.vgic_irq* @vgic_get_irq(%struct.TYPE_4__* %36, i32* null, i64 %40)
  store %struct.vgic_irq* %41, %struct.vgic_irq** %13, align 8
  %42 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %43 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %42, i32 0, i32 1
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @raw_spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %47, 8
  %49 = zext i32 %48 to i64
  %50 = lshr i64 %46, %49
  %51 = load i64, i64* %10, align 8
  %52 = and i64 %50, %51
  %53 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %54 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %56 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %33
  %60 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %61 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @__ffs(i64 %62)
  br label %65

64:                                               ; preds = %33
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i32 [ %63, %59 ], [ 0, %64 ]
  store i32 %66, i32* %14, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @kvm_get_vcpu(%struct.TYPE_4__* %69, i32 %70)
  %72 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %73 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %75 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %74, i32 0, i32 1
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @raw_spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %82 = call i32 @vgic_put_irq(%struct.TYPE_4__* %80, %struct.vgic_irq* %81)
  br label %83

83:                                               ; preds = %65
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %29

86:                                               ; preds = %27, %29
  ret void
}

declare dso_local i64 @VGIC_ADDR_TO_INTID(i32, i32) #1

declare dso_local i64 @GENMASK(i64, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(%struct.TYPE_4__*, i32*, i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @kvm_get_vcpu(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(%struct.TYPE_4__*, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
