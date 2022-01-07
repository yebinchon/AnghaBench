; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_lpi_sync_pending_status.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_lpi_sync_pending_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_irq = type { i32, i32, i32, %struct.kvm_vcpu* }
%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_v3_lpi_sync_pending_status(%struct.kvm* %0, %struct.vgic_irq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.vgic_irq*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.vgic_irq* %1, %struct.vgic_irq** %5, align 8
  br label %15

15:                                               ; preds = %64, %2
  %16 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %17 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %16, i32 0, i32 3
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %17, align 8
  store %struct.kvm_vcpu* %18, %struct.kvm_vcpu** %6, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %20 = icmp ne %struct.kvm_vcpu* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %96

22:                                               ; preds = %15
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @GICR_PENDBASER_ADDRESS(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %30 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BITS_PER_BYTE, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %35 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BITS_PER_BYTE, align 4
  %38 = srem i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  store i64 %42, i64* %10, align 8
  %43 = load %struct.kvm*, %struct.kvm** %4, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @kvm_read_guest_lock(%struct.kvm* %43, i64 %44, i32* %12, i32 1)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %22
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %3, align 4
  br label %96

50:                                               ; preds = %22
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  store i32 %54, i32* %11, align 4
  %55 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %56 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %55, i32 0, i32 2
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @raw_spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %60 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %59, i32 0, i32 3
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %60, align 8
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %63 = icmp ne %struct.kvm_vcpu* %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %66 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %65, i32 0, i32 2
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @raw_spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %15

69:                                               ; preds = %50
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %72 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %77 = load i64, i64* %14, align 8
  %78 = call i32 @vgic_queue_irq_unlock(i32 %75, %struct.vgic_irq* %76, i64 %77)
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %69
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 1, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load %struct.kvm*, %struct.kvm** %4, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @kvm_write_guest_lock(%struct.kvm* %87, i64 %88, i32* %12, i32 1)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %3, align 4
  br label %96

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %69
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %92, %48, %21
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @GICR_PENDBASER_ADDRESS(i32) #1

declare dso_local i32 @kvm_read_guest_lock(%struct.kvm*, i64, i32*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_queue_irq_unlock(i32, %struct.vgic_irq*, i64) #1

declare dso_local i32 @kvm_write_guest_lock(%struct.kvm*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
