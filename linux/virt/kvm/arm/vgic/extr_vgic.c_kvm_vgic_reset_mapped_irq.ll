; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_kvm_vgic_reset_mapped_irq.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_kvm_vgic_reset_mapped_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_vgic_reset_mapped_irq(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vgic_irq*, align 8
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.vgic_irq* @vgic_get_irq(i32 %9, %struct.kvm_vcpu* %10, i32 %11)
  store %struct.vgic_irq* %12, %struct.vgic_irq** %5, align 8
  %13 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %14 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %20 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %19, i32 0, i32 3
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @raw_spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %24 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %26 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %28 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %27, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %30 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %29, i32 0, i32 3
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @raw_spin_unlock_irqrestore(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %18, %17
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %38 = call i32 @vgic_put_irq(i32 %36, %struct.vgic_irq* %37)
  ret void
}

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
