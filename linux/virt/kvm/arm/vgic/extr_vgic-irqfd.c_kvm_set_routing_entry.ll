; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-irqfd.c_kvm_set_routing_entry.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-irqfd.c_kvm_set_routing_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_kernel_irq_routing_entry = type { %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.kvm_irq_routing_entry = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@vgic_irqfd_set_irq = common dso_local global i32 0, align 4
@KVM_IRQCHIP_NUM_PINS = common dso_local global i32 0, align 4
@KVM_NR_IRQCHIPS = common dso_local global i32 0, align 4
@kvm_set_msi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_routing_entry(%struct.kvm* %0, %struct.kvm_kernel_irq_routing_entry* %1, %struct.kvm_irq_routing_entry* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_kernel_irq_routing_entry*, align 8
  %6 = alloca %struct.kvm_irq_routing_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_kernel_irq_routing_entry* %1, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  store %struct.kvm_irq_routing_entry* %2, %struct.kvm_irq_routing_entry** %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %6, align 8
  %11 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %90 [
    i32 129, label %13
    i32 128, label %48
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @vgic_irqfd_set_irq, align 4
  %15 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %6, align 8
  %18 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %6, align 8
  %26 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %31 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @KVM_IRQCHIP_NUM_PINS, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %13
  %40 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @KVM_NR_IRQCHIPS, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %13
  br label %92

47:                                               ; preds = %39
  br label %91

48:                                               ; preds = %3
  %49 = load i32, i32* @kvm_set_msi, align 4
  %50 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %51 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %6, align 8
  %53 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %58 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 4
  %60 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %6, align 8
  %61 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %66 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 4
  %68 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %6, align 8
  %69 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %74 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %6, align 8
  %77 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %80 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %6, align 8
  %83 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %88 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  br label %91

90:                                               ; preds = %3
  br label %92

91:                                               ; preds = %48, %47
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %90, %46
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
