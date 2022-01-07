; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_vgic_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic.c_vgic_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_irq = type { i32 }
%struct.kvm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.vgic_irq* }
%struct.kvm_vcpu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.vgic_irq* }

@VGIC_MAX_PRIVATE = common dso_local global i64 0, align 8
@VGIC_NR_PRIVATE_IRQS = common dso_local global i64 0, align 8
@VGIC_MIN_LPI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Looking up struct vgic_irq for reserved INTID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vgic_irq* @vgic_get_irq(%struct.kvm* %0, %struct.kvm_vcpu* %1, i64 %2) #0 {
  %4 = alloca %struct.vgic_irq*, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VGIC_MAX_PRIVATE, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @VGIC_MAX_PRIVATE, align 8
  %14 = add i64 %13, 1
  %15 = call i64 @array_index_nospec(i64 %12, i64 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.vgic_irq*, %struct.vgic_irq** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %20, i64 %21
  store %struct.vgic_irq* %22, %struct.vgic_irq** %4, align 8
  br label %62

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.kvm*, %struct.kvm** %5, align 8
  %26 = getelementptr inbounds %struct.kvm, %struct.kvm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VGIC_NR_PRIVATE_IRQS, align 8
  %31 = add i64 %29, %30
  %32 = icmp ult i64 %24, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %23
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.kvm*, %struct.kvm** %5, align 8
  %36 = getelementptr inbounds %struct.kvm, %struct.kvm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VGIC_NR_PRIVATE_IRQS, align 8
  %41 = add i64 %39, %40
  %42 = call i64 @array_index_nospec(i64 %34, i64 %41)
  store i64 %42, i64* %7, align 8
  %43 = load %struct.kvm*, %struct.kvm** %5, align 8
  %44 = getelementptr inbounds %struct.kvm, %struct.kvm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.vgic_irq*, %struct.vgic_irq** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @VGIC_NR_PRIVATE_IRQS, align 8
  %50 = sub i64 %48, %49
  %51 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %47, i64 %50
  store %struct.vgic_irq* %51, %struct.vgic_irq** %4, align 8
  br label %62

52:                                               ; preds = %23
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @VGIC_MIN_LPI, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.kvm*, %struct.kvm** %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call %struct.vgic_irq* @vgic_get_lpi(%struct.kvm* %57, i64 %58)
  store %struct.vgic_irq* %59, %struct.vgic_irq** %4, align 8
  br label %62

60:                                               ; preds = %52
  %61 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store %struct.vgic_irq* null, %struct.vgic_irq** %4, align 8
  br label %62

62:                                               ; preds = %60, %56, %33, %11
  %63 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  ret %struct.vgic_irq* %63
}

declare dso_local i64 @array_index_nospec(i64, i64) #1

declare dso_local %struct.vgic_irq* @vgic_get_lpi(%struct.kvm*, i64) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
