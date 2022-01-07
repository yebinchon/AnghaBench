; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-irqfd.c_kvm_arch_set_irq_inatomic.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-irqfd.c_kvm_arch_set_irq_inatomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_kernel_irq_routing_entry = type { i64 }
%struct.kvm = type { i32 }
%struct.kvm_msi = type { i32 }

@KVM_IRQ_ROUTING_MSI = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_set_irq_inatomic(%struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_kernel_irq_routing_entry*, align 8
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm_msi, align 4
  store %struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm_kernel_irq_routing_entry** %7, align 8
  store %struct.kvm* %1, %struct.kvm** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %7, align 8
  %14 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KVM_IRQ_ROUTING_MSI, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %5
  %19 = load %struct.kvm*, %struct.kvm** %8, align 8
  %20 = call i64 @vgic_has_its(%struct.kvm* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %7, align 8
  %27 = call i32 @kvm_populate_msi(%struct.kvm_kernel_irq_routing_entry* %26, %struct.kvm_msi* %12)
  %28 = load %struct.kvm*, %struct.kvm** %8, align 8
  %29 = call i32 @vgic_its_inject_cached_translation(%struct.kvm* %28, %struct.kvm_msi* %12)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %36

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %22, %18, %5
  %34 = load i32, i32* @EWOULDBLOCK, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i64 @vgic_has_its(%struct.kvm*) #1

declare dso_local i32 @kvm_populate_msi(%struct.kvm_kernel_irq_routing_entry*, %struct.kvm_msi*) #1

declare dso_local i32 @vgic_its_inject_cached_translation(%struct.kvm*, %struct.kvm_msi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
