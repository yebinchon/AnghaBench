; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_update_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_update_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_irq = type { i32, i64, i32, %struct.kvm_vcpu* }
%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.its_vlpi_map = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_irq*, %struct.kvm_vcpu*)* @update_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_affinity(%struct.vgic_irq* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vgic_irq*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.its_vlpi_map, align 8
  store %struct.vgic_irq* %0, %struct.vgic_irq** %4, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  %10 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %9, i32 0, i32 2
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  %15 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %14, i32 0, i32 3
  store %struct.kvm_vcpu* %13, %struct.kvm_vcpu** %15, align 8
  %16 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  %17 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %16, i32 0, i32 2
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @raw_spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  %21 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %2
  %25 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  %26 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @its_get_vlpi(i32 %27, %struct.its_vlpi_map* %8)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %24
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.its_vlpi_map, %struct.its_vlpi_map* %8, i32 0, i32 0
  store i32* %38, i32** %39, align 8
  %40 = load %struct.vgic_irq*, %struct.vgic_irq** %4, align 8
  %41 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @its_map_vlpi(i32 %42, %struct.its_vlpi_map* %8)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %33, %2
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %31
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @its_get_vlpi(i32, %struct.its_vlpi_map*) #1

declare dso_local i32 @its_map_vlpi(i32, %struct.its_vlpi_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
