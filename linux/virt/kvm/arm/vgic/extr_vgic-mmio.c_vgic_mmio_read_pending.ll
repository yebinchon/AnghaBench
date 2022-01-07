; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_mmio_read_pending.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_mmio_read_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vgic_mmio_read_pending(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vgic_irq*, align 8
  %11 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @VGIC_ADDR_TO_INTID(i32 %12, i32 1)
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %50, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul i32 %16, 8
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %14
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %24, %25
  %27 = call %struct.vgic_irq* @vgic_get_irq(i32 %22, %struct.kvm_vcpu* %23, i32 %26)
  store %struct.vgic_irq* %27, %struct.vgic_irq** %10, align 8
  %28 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %29 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %28, i32 0, i32 0
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @raw_spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %33 = call i64 @irq_is_pending(%struct.vgic_irq* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %19
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %35, %19
  %41 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %42 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %41, i32 0, i32 0
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @raw_spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %49 = call i32 @vgic_put_irq(i32 %47, %struct.vgic_irq* %48)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %14

53:                                               ; preds = %14
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  ret i64 %55
}

declare dso_local i32 @VGIC_ADDR_TO_INTID(i32, i32) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @irq_is_pending(%struct.vgic_irq*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
