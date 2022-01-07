; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_kvm_vgic_inject_irq.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_kvm_vgic_inject_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i64, i32, i32, i32 }

@VGIC_NR_PRIVATE_IRQS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VGIC_CONFIG_LEVEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vgic_inject_irq(%struct.kvm* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.kvm_vcpu*, align 8
  %13 = alloca %struct.vgic_irq*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @trace_vgic_update_irq_pending(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.kvm*, %struct.kvm** %7, align 8
  %21 = call i32 @vgic_lazy_init(%struct.kvm* %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %6, align 4
  br label %88

26:                                               ; preds = %5
  %27 = load %struct.kvm*, %struct.kvm** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %27, i32 %28)
  store %struct.kvm_vcpu* %29, %struct.kvm_vcpu** %12, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %31 = icmp ne %struct.kvm_vcpu* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @VGIC_NR_PRIVATE_IRQS, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %88

39:                                               ; preds = %32, %26
  %40 = load %struct.kvm*, %struct.kvm** %7, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.vgic_irq* @vgic_get_irq(%struct.kvm* %40, %struct.kvm_vcpu* %41, i32 %42)
  store %struct.vgic_irq* %43, %struct.vgic_irq** %13, align 8
  %44 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %45 = icmp ne %struct.vgic_irq* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %88

49:                                               ; preds = %39
  %50 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %51 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %50, i32 0, i32 3
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @raw_spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @vgic_validate_injection(%struct.vgic_irq* %54, i32 %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %49
  %60 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %61 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %60, i32 0, i32 3
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @raw_spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.kvm*, %struct.kvm** %7, align 8
  %65 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %66 = call i32 @vgic_put_irq(%struct.kvm* %64, %struct.vgic_irq* %65)
  store i32 0, i32* %6, align 4
  br label %88

67:                                               ; preds = %49
  %68 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %69 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VGIC_CONFIG_LEVEL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %76 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %80

77:                                               ; preds = %67
  %78 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %79 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %78, i32 0, i32 2
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.kvm*, %struct.kvm** %7, align 8
  %82 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @vgic_queue_irq_unlock(%struct.kvm* %81, %struct.vgic_irq* %82, i64 %83)
  %85 = load %struct.kvm*, %struct.kvm** %7, align 8
  %86 = load %struct.vgic_irq*, %struct.vgic_irq** %13, align 8
  %87 = call i32 @vgic_put_irq(%struct.kvm* %85, %struct.vgic_irq* %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %80, %59, %46, %36, %24
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @trace_vgic_update_irq_pending(i32, i32, i32) #1

declare dso_local i32 @vgic_lazy_init(%struct.kvm*) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm*, i32) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(%struct.kvm*, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vgic_validate_injection(%struct.vgic_irq*, i32, i8*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(%struct.kvm*, %struct.vgic_irq*) #1

declare dso_local i32 @vgic_queue_irq_unlock(%struct.kvm*, %struct.vgic_irq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
