; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_write_sgipends.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_mmio_write_sgipends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i32, i64)* @vgic_mmio_write_sgipends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_mmio_write_sgipends(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.vgic_irq*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %66, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %15
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %24, %25
  %27 = call %struct.vgic_irq* @vgic_get_irq(i32 %22, %struct.kvm_vcpu* %23, i32 %26)
  store %struct.vgic_irq* %27, %struct.vgic_irq** %12, align 8
  %28 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %29 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %28, i32 0, i32 2
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @raw_spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %33, 8
  %35 = zext i32 %34 to i64
  %36 = lshr i64 %32, %35
  %37 = and i64 %36, 255
  %38 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %39 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %43 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %19
  %47 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %48 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @vgic_queue_irq_unlock(i32 %51, %struct.vgic_irq* %52, i64 %53)
  br label %60

55:                                               ; preds = %19
  %56 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %57 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %56, i32 0, i32 2
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @raw_spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %46
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %65 = call i32 @vgic_put_irq(i32 %63, %struct.vgic_irq* %64)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %15

69:                                               ; preds = %15
  ret void
}

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vgic_queue_irq_unlock(i32, %struct.vgic_irq*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
