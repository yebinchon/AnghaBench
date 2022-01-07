; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-irqfd.c_kvm_vgic_setup_default_irq_routing.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-irqfd.c_kvm_vgic_setup_default_irq_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i32 }
%struct.kvm_irq_routing_entry = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVM_IRQ_ROUTING_IRQCHIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vgic_setup_default_irq_routing(%struct.kvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_irq_routing_entry*, align 8
  %5 = alloca %struct.vgic_dist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %9 = load %struct.kvm*, %struct.kvm** %3, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.vgic_dist* %11, %struct.vgic_dist** %5, align 8
  %12 = load %struct.vgic_dist*, %struct.vgic_dist** %5, align 8
  %13 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.kvm_irq_routing_entry* @kcalloc(i32 %15, i32 32, i32 %16)
  store %struct.kvm_irq_routing_entry* %17, %struct.kvm_irq_routing_entry** %4, align 8
  %18 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %4, align 8
  %19 = icmp ne %struct.kvm_irq_routing_entry* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %67

23:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %30, i64 %32
  %34 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 8
  %35 = load i32, i32* @KVM_IRQ_ROUTING_IRQCHIP, align 4
  %36 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %36, i64 %38
  %40 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %39, i32 0, i32 2
  store i32 %35, i32* %40, align 8
  %41 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %41, i64 %43
  %45 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %49, i64 %51
  %53 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 8
  br label %56

56:                                               ; preds = %28
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %24

59:                                               ; preds = %24
  %60 = load %struct.kvm*, %struct.kvm** %3, align 8
  %61 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @kvm_set_irq_routing(%struct.kvm* %60, %struct.kvm_irq_routing_entry* %61, i32 %62, i32 0)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %4, align 8
  %65 = call i32 @kfree(%struct.kvm_irq_routing_entry* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %59, %20
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.kvm_irq_routing_entry* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kvm_set_irq_routing(%struct.kvm*, %struct.kvm_irq_routing_entry*, i32, i32) #1

declare dso_local i32 @kfree(%struct.kvm_irq_routing_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
