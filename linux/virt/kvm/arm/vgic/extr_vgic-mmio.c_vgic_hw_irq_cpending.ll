; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_hw_irq_cpending.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_hw_irq_cpending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.vgic_irq*, i32)* @vgic_hw_irq_cpending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_hw_irq_cpending(%struct.kvm_vcpu* %0, %struct.vgic_irq* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vgic_irq*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vgic_irq* %1, %struct.vgic_irq** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %22

10:                                               ; preds = %3
  %11 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %12 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %14 = call i32 @vgic_irq_set_phys_pending(%struct.vgic_irq* %13, i32 0)
  %15 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %16 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %21 = call i32 @vgic_irq_set_phys_active(%struct.vgic_irq* %20, i32 0)
  br label %22

22:                                               ; preds = %9, %19, %10
  ret void
}

declare dso_local i32 @vgic_irq_set_phys_pending(%struct.vgic_irq*, i32) #1

declare dso_local i32 @vgic_irq_set_phys_active(%struct.vgic_irq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
