; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_kvm_vgic_map_phys_irq.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_kvm_vgic_map_phys_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vgic_map_phys_irq(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 (i32)* %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32)*, align 8
  %9 = alloca %struct.vgic_irq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 (i32)* %3, i32 (i32)** %8, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.vgic_irq* @vgic_get_irq(i32 %14, %struct.kvm_vcpu* %15, i32 %16)
  store %struct.vgic_irq* %17, %struct.vgic_irq** %9, align 8
  %18 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %19 = icmp ne %struct.vgic_irq* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %24 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %23, i32 0, i32 0
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @raw_spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %28 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32 (i32)*, i32 (i32)** %8, align 8
  %31 = call i32 @kvm_vgic_map_irq(%struct.kvm_vcpu* %27, %struct.vgic_irq* %28, i32 %29, i32 (i32)* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %33 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %32, i32 0, i32 0
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @raw_spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vgic_irq*, %struct.vgic_irq** %9, align 8
  %40 = call i32 @vgic_put_irq(i32 %38, %struct.vgic_irq* %39)
  %41 = load i32, i32* %11, align 4
  ret i32 %41
}

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kvm_vgic_map_irq(%struct.kvm_vcpu*, %struct.vgic_irq*, i32, i32 (i32)*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
