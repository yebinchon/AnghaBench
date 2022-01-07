; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v4.c_vgic_v4_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v4.c_vgic_v4_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.its_vm }
%struct.its_vm = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.kvm_vcpu = type { i32 }

@DB_IRQ_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_v4_teardown(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.its_vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %7 = load %struct.kvm*, %struct.kvm** %2, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.its_vm* %10, %struct.its_vm** %3, align 8
  %11 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %12 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %14 = icmp ne %struct.TYPE_6__** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %56

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %20 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load %struct.kvm*, %struct.kvm** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %24, i32 %25)
  store %struct.kvm_vcpu* %26, %struct.kvm_vcpu** %5, align 8
  %27 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %28 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DB_IRQ_FLAGS, align 4
  %38 = call i32 @irq_clear_status_flags(i32 %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %41 = call i32 @free_irq(i32 %39, %struct.kvm_vcpu* %40)
  br label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %17

45:                                               ; preds = %17
  %46 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %47 = call i32 @its_free_vcpu_irqs(%struct.its_vm* %46)
  %48 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %49 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %49, align 8
  %51 = call i32 @kfree(%struct.TYPE_6__** %50)
  %52 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %53 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.its_vm*, %struct.its_vm** %3, align 8
  %55 = getelementptr inbounds %struct.its_vm, %struct.its_vm* %54, i32 0, i32 1
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %55, align 8
  br label %56

56:                                               ; preds = %45, %15
  ret void
}

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm*, i32) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @its_free_vcpu_irqs(%struct.its_vm*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
