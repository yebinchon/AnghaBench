; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_mmio_write_priority.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_mmio_write_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i64, i32 }

@VGIC_PRI_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_mmio_write_priority(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.vgic_irq*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @VGIC_ADDR_TO_INTID(i32 %13, i32 8)
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %53, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call %struct.vgic_irq* @vgic_get_irq(i32 %22, %struct.kvm_vcpu* %23, i64 %27)
  store %struct.vgic_irq* %28, %struct.vgic_irq** %12, align 8
  %29 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %30 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %29, i32 0, i32 1
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @raw_spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %34, 8
  %36 = zext i32 %35 to i64
  %37 = lshr i64 %33, %36
  %38 = load i64, i64* @VGIC_PRI_BITS, align 8
  %39 = sub nsw i64 8, %38
  %40 = call i64 @GENMASK(i32 7, i64 %39)
  %41 = and i64 %37, %40
  %42 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %43 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %45 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %44, i32 0, i32 1
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @raw_spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %52 = call i32 @vgic_put_irq(i32 %50, %struct.vgic_irq* %51)
  br label %53

53:                                               ; preds = %19
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %15

56:                                               ; preds = %15
  ret void
}

declare dso_local i64 @VGIC_ADDR_TO_INTID(i32, i32) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, %struct.kvm_vcpu*, i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @GENMASK(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
