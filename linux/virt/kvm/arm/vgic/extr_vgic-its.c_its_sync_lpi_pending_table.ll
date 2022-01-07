; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_its_sync_lpi_pending_table.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_its_sync_lpi_pending_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vgic_irq = type { i32, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @its_sync_lpi_pending_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_sync_lpi_pending_table(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vgic_irq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @GICR_PENDBASER_ADDRESS(i32 %19)
  store i64 %20, i64* %4, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = call i32 @vgic_copy_lpi_list(i32 %23, %struct.kvm_vcpu* %24, i32** %8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %2, align 4
  br label %108

30:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %101, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %104

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BITS_PER_BYTE, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BITS_PER_BYTE, align 4
  %49 = srem i32 %47, %48
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %35
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %4, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @kvm_read_guest_lock(i32 %56, i64 %60, i32* %12, i32 1)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @kfree(i32* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %108

68:                                               ; preds = %53
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %35
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.vgic_irq* @vgic_get_irq(i32 %73, i32* null, i32 %78)
  store %struct.vgic_irq* %79, %struct.vgic_irq** %5, align 8
  %80 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %81 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %80, i32 0, i32 1
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @raw_spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %14, align 4
  %86 = shl i32 1, %85
  %87 = and i32 %84, %86
  %88 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %89 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @vgic_queue_irq_unlock(i32 %92, %struct.vgic_irq* %93, i64 %94)
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vgic_irq*, %struct.vgic_irq** %5, align 8
  %100 = call i32 @vgic_put_irq(i32 %98, %struct.vgic_irq* %99)
  br label %101

101:                                              ; preds = %70
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %31

104:                                              ; preds = %31
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @kfree(i32* %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %104, %64, %28
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @GICR_PENDBASER_ADDRESS(i32) #1

declare dso_local i32 @vgic_copy_lpi_list(i32, %struct.kvm_vcpu*, i32**) #1

declare dso_local i32 @kvm_read_guest_lock(i32, i64, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, i32*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vgic_queue_irq_unlock(i32, %struct.vgic_irq*, i64) #1

declare dso_local i32 @vgic_put_irq(i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
