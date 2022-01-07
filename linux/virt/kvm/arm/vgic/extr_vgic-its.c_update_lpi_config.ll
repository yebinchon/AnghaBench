; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_update_lpi_config.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_update_lpi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vgic_irq = type { i32, i64, i32, i32, i32, %struct.kvm_vcpu*, i64 }
%struct.kvm_vcpu = type { i32 }

@GIC_LPI_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_irq*, %struct.kvm_vcpu*, i32)* @update_lpi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_lpi_config(%struct.kvm* %0, %struct.vgic_irq* %1, %struct.kvm_vcpu* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.vgic_irq*, align 8
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.vgic_irq* %1, %struct.vgic_irq** %7, align 8
  store %struct.kvm_vcpu* %2, %struct.kvm_vcpu** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kvm*, %struct.kvm** %6, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @GICR_PROPBASER_ADDRESS(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.kvm*, %struct.kvm** %6, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.vgic_irq*, %struct.vgic_irq** %7, align 8
  %23 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i64, i64* @GIC_LPI_OFFSET, align 8
  %27 = sub nsw i64 %25, %26
  %28 = call i32 @kvm_read_guest_lock(%struct.kvm* %20, i64 %27, i32* %11, i32 1)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %82

33:                                               ; preds = %4
  %34 = load %struct.vgic_irq*, %struct.vgic_irq** %7, align 8
  %35 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %34, i32 0, i32 2
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @raw_spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %39 = icmp ne %struct.kvm_vcpu* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %42 = load %struct.vgic_irq*, %struct.vgic_irq** %7, align 8
  %43 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %42, i32 0, i32 5
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %43, align 8
  %45 = icmp eq %struct.kvm_vcpu* %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40, %33
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @LPI_PROP_PRIORITY(i32 %47)
  %49 = load %struct.vgic_irq*, %struct.vgic_irq** %7, align 8
  %50 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @LPI_PROP_ENABLE_BIT(i32 %51)
  %53 = load %struct.vgic_irq*, %struct.vgic_irq** %7, align 8
  %54 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.vgic_irq*, %struct.vgic_irq** %7, align 8
  %56 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %46
  %60 = load %struct.kvm*, %struct.kvm** %6, align 8
  %61 = load %struct.vgic_irq*, %struct.vgic_irq** %7, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @vgic_queue_irq_unlock(%struct.kvm* %60, %struct.vgic_irq* %61, i64 %62)
  store i32 0, i32* %5, align 4
  br label %82

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %64, %40
  %66 = load %struct.vgic_irq*, %struct.vgic_irq** %7, align 8
  %67 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %66, i32 0, i32 2
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @raw_spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.vgic_irq*, %struct.vgic_irq** %7, align 8
  %71 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load %struct.vgic_irq*, %struct.vgic_irq** %7, align 8
  %76 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @its_prop_update_vlpi(i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  br label %82

81:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %74, %59, %31
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @GICR_PROPBASER_ADDRESS(i32) #1

declare dso_local i32 @kvm_read_guest_lock(%struct.kvm*, i64, i32*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @LPI_PROP_PRIORITY(i32) #1

declare dso_local i32 @LPI_PROP_ENABLE_BIT(i32) #1

declare dso_local i32 @vgic_queue_irq_unlock(%struct.kvm*, %struct.vgic_irq*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @its_prop_update_vlpi(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
