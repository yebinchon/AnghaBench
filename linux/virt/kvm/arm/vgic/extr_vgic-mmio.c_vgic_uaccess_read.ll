; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_uaccess_read.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_uaccess_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_io_device = type { i32 }
%struct.vgic_io_device = type { %struct.kvm_vcpu* }
%struct.vgic_register_region = type { i32 (%struct.kvm_vcpu.0*, i32, i32)*, i32 (%struct.kvm_vcpu.1*, i32, i32)* }
%struct.kvm_vcpu.0 = type opaque
%struct.kvm_vcpu.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_io_device*, i32, i32*)* @vgic_uaccess_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_uaccess_read(%struct.kvm_vcpu* %0, %struct.kvm_io_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_io_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vgic_io_device*, align 8
  %11 = alloca %struct.vgic_register_region*, align 8
  %12 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_io_device* %1, %struct.kvm_io_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.kvm_io_device*, %struct.kvm_io_device** %7, align 8
  %14 = call %struct.vgic_io_device* @kvm_to_vgic_iodev(%struct.kvm_io_device* %13)
  store %struct.vgic_io_device* %14, %struct.vgic_io_device** %10, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %16 = load %struct.vgic_io_device*, %struct.vgic_io_device** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.vgic_register_region* @vgic_get_mmio_region(%struct.kvm_vcpu* %15, %struct.vgic_io_device* %16, i32 %17, i32 4)
  store %struct.vgic_register_region* %18, %struct.vgic_register_region** %11, align 8
  %19 = load %struct.vgic_register_region*, %struct.vgic_register_region** %11, align 8
  %20 = icmp ne %struct.vgic_register_region* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %5, align 4
  br label %59

23:                                               ; preds = %4
  %24 = load %struct.vgic_io_device*, %struct.vgic_io_device** %10, align 8
  %25 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %24, i32 0, i32 0
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %25, align 8
  %27 = icmp ne %struct.kvm_vcpu* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.vgic_io_device*, %struct.vgic_io_device** %10, align 8
  %30 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %29, i32 0, i32 0
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %30, align 8
  br label %34

32:                                               ; preds = %23
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi %struct.kvm_vcpu* [ %31, %28 ], [ %33, %32 ]
  store %struct.kvm_vcpu* %35, %struct.kvm_vcpu** %12, align 8
  %36 = load %struct.vgic_register_region*, %struct.vgic_register_region** %11, align 8
  %37 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %36, i32 0, i32 1
  %38 = load i32 (%struct.kvm_vcpu.1*, i32, i32)*, i32 (%struct.kvm_vcpu.1*, i32, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.kvm_vcpu.1*, i32, i32)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.vgic_register_region*, %struct.vgic_register_region** %11, align 8
  %42 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %41, i32 0, i32 1
  %43 = load i32 (%struct.kvm_vcpu.1*, i32, i32)*, i32 (%struct.kvm_vcpu.1*, i32, i32)** %42, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %45 = bitcast %struct.kvm_vcpu* %44 to %struct.kvm_vcpu.1*
  %46 = load i32, i32* %8, align 4
  %47 = call i32 %43(%struct.kvm_vcpu.1* %45, i32 %46, i32 4)
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %58

49:                                               ; preds = %34
  %50 = load %struct.vgic_register_region*, %struct.vgic_register_region** %11, align 8
  %51 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %50, i32 0, i32 0
  %52 = load i32 (%struct.kvm_vcpu.0*, i32, i32)*, i32 (%struct.kvm_vcpu.0*, i32, i32)** %51, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %54 = bitcast %struct.kvm_vcpu* %53 to %struct.kvm_vcpu.0*
  %55 = load i32, i32* %8, align 4
  %56 = call i32 %52(%struct.kvm_vcpu.0* %54, i32 %55, i32 4)
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %49, %40
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.vgic_io_device* @kvm_to_vgic_iodev(%struct.kvm_io_device*) #1

declare dso_local %struct.vgic_register_region* @vgic_get_mmio_region(%struct.kvm_vcpu*, %struct.vgic_io_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
