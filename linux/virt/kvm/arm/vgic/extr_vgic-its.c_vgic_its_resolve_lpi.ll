; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_resolve_lpi.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_resolve_lpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32 }
%struct.vgic_irq = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.its_ite = type { %struct.vgic_irq*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@E_ITS_INT_UNMAPPED_INTERRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_its_resolve_lpi(%struct.kvm* %0, %struct.vgic_its* %1, i32 %2, i32 %3, %struct.vgic_irq** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca %struct.vgic_its*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vgic_irq**, align 8
  %12 = alloca %struct.kvm_vcpu*, align 8
  %13 = alloca %struct.its_ite*, align 8
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.vgic_irq** %4, %struct.vgic_irq*** %11, align 8
  %14 = load %struct.vgic_its*, %struct.vgic_its** %8, align 8
  %15 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %71

21:                                               ; preds = %5
  %22 = load %struct.vgic_its*, %struct.vgic_its** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.its_ite* @find_ite(%struct.vgic_its* %22, i32 %23, i32 %24)
  store %struct.its_ite* %25, %struct.its_ite** %13, align 8
  %26 = load %struct.its_ite*, %struct.its_ite** %13, align 8
  %27 = icmp ne %struct.its_ite* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.its_ite*, %struct.its_ite** %13, align 8
  %30 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @its_is_collection_mapped(%struct.TYPE_6__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28, %21
  %35 = load i32, i32* @E_ITS_INT_UNMAPPED_INTERRUPT, align 4
  store i32 %35, i32* %6, align 4
  br label %71

36:                                               ; preds = %28
  %37 = load %struct.kvm*, %struct.kvm** %7, align 8
  %38 = load %struct.its_ite*, %struct.its_ite** %13, align 8
  %39 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %37, i32 %42)
  store %struct.kvm_vcpu* %43, %struct.kvm_vcpu** %12, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %45 = icmp ne %struct.kvm_vcpu* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @E_ITS_INT_UNMAPPED_INTERRUPT, align 4
  store i32 %47, i32* %6, align 4
  br label %71

48:                                               ; preds = %36
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %71

58:                                               ; preds = %48
  %59 = load %struct.kvm*, %struct.kvm** %7, align 8
  %60 = load %struct.vgic_its*, %struct.vgic_its** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.its_ite*, %struct.its_ite** %13, align 8
  %64 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %63, i32 0, i32 0
  %65 = load %struct.vgic_irq*, %struct.vgic_irq** %64, align 8
  %66 = call i32 @vgic_its_cache_translation(%struct.kvm* %59, %struct.vgic_its* %60, i32 %61, i32 %62, %struct.vgic_irq* %65)
  %67 = load %struct.its_ite*, %struct.its_ite** %13, align 8
  %68 = getelementptr inbounds %struct.its_ite, %struct.its_ite* %67, i32 0, i32 0
  %69 = load %struct.vgic_irq*, %struct.vgic_irq** %68, align 8
  %70 = load %struct.vgic_irq**, %struct.vgic_irq*** %11, align 8
  store %struct.vgic_irq* %69, %struct.vgic_irq** %70, align 8
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %58, %55, %46, %34, %18
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.its_ite* @find_ite(%struct.vgic_its*, i32, i32) #1

declare dso_local i32 @its_is_collection_mapped(%struct.TYPE_6__*) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm*, i32) #1

declare dso_local i32 @vgic_its_cache_translation(%struct.kvm*, %struct.vgic_its*, i32, i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
