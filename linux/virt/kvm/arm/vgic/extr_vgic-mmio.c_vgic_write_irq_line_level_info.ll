; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_write_irq_line_level_info.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_write_irq_line_level_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vgic_irq = type { i32, i32 }

@VGIC_NR_PRIVATE_IRQS = common dso_local global i32 0, align 4
@VGIC_NR_SGIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_write_irq_line_level_info(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.vgic_irq*, align 8
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VGIC_NR_PRIVATE_IRQS, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %81, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %84

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @VGIC_NR_SGIS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24
  br label %81

37:                                               ; preds = %30
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = call %struct.vgic_irq* @vgic_get_irq(%struct.TYPE_8__* %40, %struct.kvm_vcpu* %41, i32 %44)
  store %struct.vgic_irq* %45, %struct.vgic_irq** %10, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %55 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %54, i32 0, i32 1
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @raw_spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %60 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %37
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @vgic_queue_irq_unlock(%struct.TYPE_8__* %66, %struct.vgic_irq* %67, i64 %68)
  br label %75

70:                                               ; preds = %37
  %71 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %72 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %71, i32 0, i32 1
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @raw_spin_unlock_irqrestore(i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %70, %63
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %80 = call i32 @vgic_put_irq(%struct.TYPE_8__* %78, %struct.vgic_irq* %79)
  br label %81

81:                                               ; preds = %75, %36
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %21

84:                                               ; preds = %21
  ret void
}

declare dso_local %struct.vgic_irq* @vgic_get_irq(%struct.TYPE_8__*, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vgic_queue_irq_unlock(%struct.TYPE_8__*, %struct.vgic_irq*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(%struct.TYPE_8__*, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
