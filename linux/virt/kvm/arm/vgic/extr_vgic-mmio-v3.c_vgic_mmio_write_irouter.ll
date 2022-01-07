; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_mmio_write_irouter.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_mmio_write_irouter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vgic_irq = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i32, i64)* @vgic_mmio_write_irouter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_mmio_write_irouter(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vgic_irq*, align 8
  %11 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @VGIC_ADDR_TO_INTID(i32 %12, i32 64)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %55

18:                                               ; preds = %4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.vgic_irq* @vgic_get_irq(i32 %21, i32* null, i32 %22)
  store %struct.vgic_irq* %23, %struct.vgic_irq** %10, align 8
  %24 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %25 = icmp ne %struct.vgic_irq* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %55

27:                                               ; preds = %18
  %28 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %29 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %28, i32 0, i32 1
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @raw_spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @GENMASK(i32 23, i32 0)
  %34 = and i64 %32, %33
  %35 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %36 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %41 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @kvm_mpidr_to_vcpu(i32 %39, i64 %42)
  %44 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %45 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %47 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %46, i32 0, i32 1
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @raw_spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vgic_irq*, %struct.vgic_irq** %10, align 8
  %54 = call i32 @vgic_put_irq(i32 %52, %struct.vgic_irq* %53)
  br label %55

55:                                               ; preds = %27, %26, %17
  ret void
}

declare dso_local i32 @VGIC_ADDR_TO_INTID(i32, i32) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(i32, i32*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i32 @kvm_mpidr_to_vcpu(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(i32, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
