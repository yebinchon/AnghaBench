; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_vgic_queue_irq_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_vgic_queue_irq_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_irq = type { i32, %struct.kvm_vcpu*, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@KVM_REQ_IRQ_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_queue_irq_unlock(%struct.kvm* %0, %struct.vgic_irq* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_irq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.vgic_irq* %1, %struct.vgic_irq** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %10 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %9, i32 0, i32 0
  %11 = call i32 @lockdep_assert_held(i32* %10)
  br label %12

12:                                               ; preds = %64, %3
  %13 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %14 = call %struct.kvm_vcpu* @vgic_target_oracle(%struct.vgic_irq* %13)
  store %struct.kvm_vcpu* %14, %struct.kvm_vcpu** %8, align 8
  %15 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %16 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %15, i32 0, i32 1
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %16, align 8
  %18 = icmp ne %struct.kvm_vcpu* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %21 = icmp ne %struct.kvm_vcpu* %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %24 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @raw_spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %28 = icmp ne %struct.kvm_vcpu* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @KVM_REQ_IRQ_PENDING, align 4
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %32 = call i32 @kvm_make_request(i32 %30, %struct.kvm_vcpu* %31)
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %34 = call i32 @kvm_vcpu_kick(%struct.kvm_vcpu* %33)
  br label %35

35:                                               ; preds = %29, %22
  store i32 0, i32* %4, align 4
  br label %105

36:                                               ; preds = %19
  %37 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %38 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %37, i32 0, i32 0
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @raw_spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @raw_spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %48 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %47, i32 0, i32 0
  %49 = call i32 @raw_spin_lock(i32* %48)
  %50 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %51 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %50, i32 0, i32 1
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %51, align 8
  %53 = icmp ne %struct.kvm_vcpu* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %36
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %56 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %57 = call %struct.kvm_vcpu* @vgic_target_oracle(%struct.vgic_irq* %56)
  %58 = icmp ne %struct.kvm_vcpu* %55, %57
  br label %59

59:                                               ; preds = %54, %36
  %60 = phi i1 [ true, %36 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %66 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %65, i32 0, i32 0
  %67 = call i32 @raw_spin_unlock(i32* %66)
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @raw_spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %75 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %74, i32 0, i32 0
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @raw_spin_lock_irqsave(i32* %75, i64 %76)
  br label %12

78:                                               ; preds = %59
  %79 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %80 = call i32 @vgic_get_irq_kref(%struct.vgic_irq* %79)
  %81 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %82 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %81, i32 0, i32 2
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = call i32 @list_add_tail(i32* %82, i32* %86)
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %89 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %90 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %89, i32 0, i32 1
  store %struct.kvm_vcpu* %88, %struct.kvm_vcpu** %90, align 8
  %91 = load %struct.vgic_irq*, %struct.vgic_irq** %6, align 8
  %92 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %91, i32 0, i32 0
  %93 = call i32 @raw_spin_unlock(i32* %92)
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %95 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @raw_spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* @KVM_REQ_IRQ_PENDING, align 4
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %102 = call i32 @kvm_make_request(i32 %100, %struct.kvm_vcpu* %101)
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %104 = call i32 @kvm_vcpu_kick(%struct.kvm_vcpu* %103)
  store i32 1, i32* %4, align 4
  br label %105

105:                                              ; preds = %78, %35
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.kvm_vcpu* @vgic_target_oracle(%struct.vgic_irq*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_kick(%struct.kvm_vcpu*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @vgic_get_irq_kref(%struct.vgic_irq*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
