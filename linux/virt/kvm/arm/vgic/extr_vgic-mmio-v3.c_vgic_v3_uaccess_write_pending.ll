; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_v3_uaccess_write_pending.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_v3_uaccess_write_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, i64)* @vgic_v3_uaccess_write_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_v3_uaccess_write_pending(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3) #0 {
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
  %14 = call i64 @VGIC_ADDR_TO_INTID(i32 %13, i32 1)
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %59, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = mul i32 %17, 8
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call %struct.vgic_irq* @vgic_get_irq(i32 %23, %struct.kvm_vcpu* %24, i64 %28)
  store %struct.vgic_irq* %29, %struct.vgic_irq** %12, align 8
  %30 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %31 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %30, i32 0, i32 1
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @raw_spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @test_bit(i32 %34, i64* %8)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %20
  %38 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %39 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @vgic_queue_irq_unlock(i32 %42, %struct.vgic_irq* %43, i64 %44)
  br label %53

46:                                               ; preds = %20
  %47 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %48 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %50 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %49, i32 0, i32 1
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @raw_spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %46, %37
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vgic_irq*, %struct.vgic_irq** %12, align 8
  %58 = call i32 @vgic_put_irq(i32 %56, %struct.vgic_irq* %57)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %15

62:                                               ; preds = %15
  ret i32 0
}

declare dso_local i64 @VGIC_ADDR_TO_INTID(i32, i32) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, %struct.kvm_vcpu*, i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @vgic_queue_irq_unlock(i32, %struct.vgic_irq*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
