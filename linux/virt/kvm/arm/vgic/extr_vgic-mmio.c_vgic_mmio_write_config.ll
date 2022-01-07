; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_mmio_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_mmio_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i32, i32 }

@VGIC_NR_PRIVATE_IRQS = common dso_local global i64 0, align 8
@VGIC_CONFIG_EDGE = common dso_local global i32 0, align 4
@VGIC_CONFIG_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_mmio_write_config(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3) #0 {
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
  %14 = call i64 @VGIC_ADDR_TO_INTID(i32 %13, i32 2)
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %65, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = mul i32 %17, 4
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %15
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i64, i64* @VGIC_NR_PRIVATE_IRQS, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %65

28:                                               ; preds = %20
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call %struct.vgic_irq* @vgic_get_irq(i32 %31, %struct.kvm_vcpu* %32, i64 %36)
  store %struct.vgic_irq* %37, %struct.vgic_irq** %12, align 8
  %38 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %39 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %38, i32 0, i32 0
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @raw_spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %42, 2
  %44 = add nsw i32 %43, 1
  %45 = call i64 @test_bit(i32 %44, i64* %8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load i32, i32* @VGIC_CONFIG_EDGE, align 4
  %49 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %50 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %55

51:                                               ; preds = %28
  %52 = load i32, i32* @VGIC_CONFIG_LEVEL, align 4
  %53 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %54 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %57 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %56, i32 0, i32 0
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @raw_spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %64 = call i32 @vgic_put_irq(i32 %62, %struct.vgic_irq* %63)
  br label %65

65:                                               ; preds = %55, %27
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %15

68:                                               ; preds = %15
  ret void
}

declare dso_local i64 @VGIC_ADDR_TO_INTID(i32, i32) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, %struct.kvm_vcpu*, i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
