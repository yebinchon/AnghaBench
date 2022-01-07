; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_register_its_iodev.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_register_its_iodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32, %struct.vgic_io_device }
%struct.vgic_io_device = type { i32, i32, %struct.vgic_its*, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@its_registers = common dso_local global i32 0, align 4
@kvm_io_gic_ops = common dso_local global i32 0, align 4
@IODEV_ITS = common dso_local global i32 0, align 4
@KVM_MMIO_BUS = common dso_local global i32 0, align 4
@KVM_VGIC_V3_ITS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_its*, i32)* @vgic_register_its_iodev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_register_its_iodev(%struct.kvm* %0, %struct.vgic_its* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.vgic_its*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vgic_io_device*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %10 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %9, i32 0, i32 1
  store %struct.vgic_io_device* %10, %struct.vgic_io_device** %7, align 8
  %11 = load %struct.kvm*, %struct.kvm** %4, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %15 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @IS_VGIC_ADDR_UNDEF(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %56

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %25 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @its_registers, align 4
  %27 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %28 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @its_registers, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %32 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %34 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %33, i32 0, i32 0
  %35 = call i32 @kvm_iodevice_init(i32* %34, i32* @kvm_io_gic_ops)
  %36 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %37 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %40 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @IODEV_ITS, align 4
  %42 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %43 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %45 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %46 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %45, i32 0, i32 2
  store %struct.vgic_its* %44, %struct.vgic_its** %46, align 8
  %47 = load %struct.kvm*, %struct.kvm** %4, align 8
  %48 = load i32, i32* @KVM_MMIO_BUS, align 4
  %49 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %50 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @KVM_VGIC_V3_ITS_SIZE, align 4
  %53 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %54 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %53, i32 0, i32 0
  %55 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %47, i32 %48, i32 %51, i32 %52, i32* %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %22, %19
  %57 = load %struct.kvm*, %struct.kvm** %4, align 8
  %58 = getelementptr inbounds %struct.kvm, %struct.kvm* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IS_VGIC_ADDR_UNDEF(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @kvm_iodevice_init(i32*, i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
