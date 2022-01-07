; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_kvm_vgic_set_owner.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_kvm_vgic_set_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i8*, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vgic_set_owner(%struct.kvm_vcpu* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vgic_irq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vgic_initialized(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %67

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @irq_is_ppi(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @vgic_valid_spi(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %67

33:                                               ; preds = %23, %19
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.vgic_irq* @vgic_get_irq(i32 %36, %struct.kvm_vcpu* %37, i32 %38)
  store %struct.vgic_irq* %39, %struct.vgic_irq** %8, align 8
  %40 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %41 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %40, i32 0, i32 1
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @raw_spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %45 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %33
  %49 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %50 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EEXIST, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %61

57:                                               ; preds = %48, %33
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %60 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %63 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %62, i32 0, i32 1
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @raw_spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %30, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @vgic_initialized(i32) #1

declare dso_local i32 @irq_is_ppi(i32) #1

declare dso_local i32 @vgic_valid_spi(i32, i32) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
