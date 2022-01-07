; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_mmio_change_active.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_mmio_change_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vgic_irq = type { i32, i32, i32, i32, i64 }

@KVM_DEV_TYPE_ARM_VGIC_V2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.vgic_irq*, i32)* @vgic_mmio_change_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_mmio_change_active(%struct.kvm_vcpu* %0, %struct.vgic_irq* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vgic_irq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vgic_irq* %1, %struct.vgic_irq** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call %struct.kvm_vcpu* (...) @vgic_get_mmio_requester_vcpu()
  store %struct.kvm_vcpu* %11, %struct.kvm_vcpu** %8, align 8
  %12 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %13 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %12, i32 0, i32 1
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @raw_spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %17 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %25 = icmp ne %struct.kvm_vcpu* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @vgic_hw_irq_change_active(%struct.kvm_vcpu* %21, %struct.vgic_irq* %22, i32 %23, i32 %27)
  br label %66

29:                                               ; preds = %3
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %39 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %41 = icmp ne %struct.kvm_vcpu* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  br label %47

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 0, %46 ]
  store i32 %48, i32* %10, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V2, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %57 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @vgic_irq_is_sgi(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %64 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %55, %52, %47
  br label %66

66:                                               ; preds = %65, %20
  %67 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %68 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @vgic_queue_irq_unlock(%struct.TYPE_6__* %74, %struct.vgic_irq* %75, i64 %76)
  br label %83

78:                                               ; preds = %66
  %79 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %80 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %79, i32 0, i32 1
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @raw_spin_unlock_irqrestore(i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %78, %71
  ret void
}

declare dso_local %struct.kvm_vcpu* @vgic_get_mmio_requester_vcpu(...) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vgic_hw_irq_change_active(%struct.kvm_vcpu*, %struct.vgic_irq*, i32, i32) #1

declare dso_local i64 @vgic_irq_is_sgi(i32) #1

declare dso_local i32 @vgic_queue_irq_unlock(%struct.TYPE_6__*, %struct.vgic_irq*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
