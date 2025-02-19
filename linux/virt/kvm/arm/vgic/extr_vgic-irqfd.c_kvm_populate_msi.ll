; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-irqfd.c_kvm_populate_msi.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-irqfd.c_kvm_populate_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_kernel_irq_routing_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.kvm_msi = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_kernel_irq_routing_entry*, %struct.kvm_msi*)* @kvm_populate_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_populate_msi(%struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm_msi* %1) #0 {
  %3 = alloca %struct.kvm_kernel_irq_routing_entry*, align 8
  %4 = alloca %struct.kvm_msi*, align 8
  store %struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm_kernel_irq_routing_entry** %3, align 8
  store %struct.kvm_msi* %1, %struct.kvm_msi** %4, align 8
  %5 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.kvm_msi*, %struct.kvm_msi** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_msi, %struct.kvm_msi* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kvm_msi*, %struct.kvm_msi** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_msi, %struct.kvm_msi* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.kvm_msi*, %struct.kvm_msi** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_msi, %struct.kvm_msi* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.kvm_msi*, %struct.kvm_msi** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_msi, %struct.kvm_msi* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kvm_msi*, %struct.kvm_msi** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_msi, %struct.kvm_msi* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
