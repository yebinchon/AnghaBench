; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_vgic_target_oracle.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_vgic_target_oracle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vgic_irq = type { %struct.kvm_vcpu*, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_vcpu* (%struct.vgic_irq*)* @vgic_target_oracle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_vcpu* @vgic_target_oracle(%struct.vgic_irq* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vgic_irq*, align 8
  store %struct.vgic_irq* %0, %struct.vgic_irq** %3, align 8
  %4 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %5 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %4, i32 0, i32 4
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %8 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %13 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = inttoptr i64 %14 to %struct.kvm_vcpu*
  br label %22

18:                                               ; preds = %11
  %19 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %20 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %19, i32 0, i32 0
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %20, align 8
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi %struct.kvm_vcpu* [ %17, %16 ], [ %21, %18 ]
  store %struct.kvm_vcpu* %23, %struct.kvm_vcpu** %2, align 8
  br label %61

24:                                               ; preds = %1
  %25 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %26 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %24
  %30 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %31 = call i64 @irq_is_pending(%struct.vgic_irq* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %35 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %34, i32 0, i32 0
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %35, align 8
  %37 = icmp ne %struct.kvm_vcpu* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %40 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %39, i32 0, i32 0
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %40, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %38, %33
  %51 = phi i1 [ false, %33 ], [ %49, %38 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store %struct.kvm_vcpu* null, %struct.kvm_vcpu** %2, align 8
  br label %61

56:                                               ; preds = %50
  %57 = load %struct.vgic_irq*, %struct.vgic_irq** %3, align 8
  %58 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %57, i32 0, i32 0
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %58, align 8
  store %struct.kvm_vcpu* %59, %struct.kvm_vcpu** %2, align 8
  br label %61

60:                                               ; preds = %29, %24
  store %struct.kvm_vcpu* null, %struct.kvm_vcpu** %2, align 8
  br label %61

61:                                               ; preds = %60, %56, %55, %22
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  ret %struct.kvm_vcpu* %62
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @irq_is_pending(%struct.vgic_irq*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
