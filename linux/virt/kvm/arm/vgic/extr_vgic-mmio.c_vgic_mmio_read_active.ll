; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_mmio_read_active.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_mmio_read_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vgic_mmio_read_active(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vgic_irq*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @VGIC_ADDR_TO_INTID(i32 %11, i32 1)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %42, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul i32 %15, 8
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = add i32 %23, %24
  %26 = call %struct.vgic_irq* @vgic_get_irq(i32 %21, %struct.kvm_vcpu* %22, i32 %25)
  store %struct.vgic_irq* %26, %struct.vgic_irq** %10, align 8
  %27 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %28 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %18
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %41 = call i32 @vgic_put_irq(i32 %39, %struct.vgic_irq* %40)
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %13

45:                                               ; preds = %13
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  ret i64 %47
}

declare dso_local i32 @VGIC_ADDR_TO_INTID(i32, i32) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vgic_put_irq(i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
