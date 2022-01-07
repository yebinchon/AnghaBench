; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_register_dist_iodev.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_register_dist_iodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vgic_io_device }
%struct.vgic_io_device = type { i32, i32*, i32, i32 }

@IODEV_DIST = common dso_local global i32 0, align 4
@KVM_MMIO_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_register_dist_iodev(%struct.kvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vgic_io_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.kvm*, %struct.kvm** %4, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.vgic_io_device* %13, %struct.vgic_io_device** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 128, label %18
  ]

15:                                               ; preds = %3
  %16 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %17 = call i32 @vgic_v2_init_dist_iodev(%struct.vgic_io_device* %16)
  store i32 %17, i32* %9, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %20 = call i32 @vgic_v3_init_dist_iodev(%struct.vgic_io_device* %19)
  store i32 %20, i32* %9, align 4
  br label %23

21:                                               ; preds = %3
  %22 = call i32 @BUG_ON(i32 1)
  br label %23

23:                                               ; preds = %21, %18, %15
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %26 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @IODEV_DIST, align 4
  %28 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %29 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %31 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.kvm*, %struct.kvm** %4, align 8
  %33 = getelementptr inbounds %struct.kvm, %struct.kvm* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.kvm*, %struct.kvm** %4, align 8
  %36 = load i32, i32* @KVM_MMIO_BUS, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %40 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %39, i32 0, i32 0
  %41 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %35, i32 %36, i32 %37, i32 %38, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.kvm*, %struct.kvm** %4, align 8
  %43 = getelementptr inbounds %struct.kvm, %struct.kvm* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @vgic_v2_init_dist_iodev(%struct.vgic_io_device*) #1

declare dso_local i32 @vgic_v3_init_dist_iodev(%struct.vgic_io_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
