; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_uaccess_write.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_uaccess_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_io_device = type { i32 }
%struct.vgic_io_device = type { %struct.kvm_vcpu* }
%struct.vgic_register_region = type { i32 (%struct.kvm_vcpu.0*, i32, i32, i32)*, i32 (%struct.kvm_vcpu.1*, i32, i32, i32)* }
%struct.kvm_vcpu.0 = type opaque
%struct.kvm_vcpu.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_io_device*, i32, i32*)* @vgic_uaccess_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_uaccess_write(%struct.kvm_vcpu* %0, %struct.kvm_io_device* %1, i32 %2, i32* %3) #0 {
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
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  %23 = load %struct.vgic_io_device*, %struct.vgic_io_device** %10, align 8
  %24 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %23, i32 0, i32 0
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %24, align 8
  %26 = icmp ne %struct.kvm_vcpu* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.vgic_io_device*, %struct.vgic_io_device** %10, align 8
  %29 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %28, i32 0, i32 0
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %29, align 8
  br label %33

31:                                               ; preds = %22
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi %struct.kvm_vcpu* [ %30, %27 ], [ %32, %31 ]
  store %struct.kvm_vcpu* %34, %struct.kvm_vcpu** %12, align 8
  %35 = load %struct.vgic_register_region*, %struct.vgic_register_region** %11, align 8
  %36 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %35, i32 0, i32 0
  %37 = load i32 (%struct.kvm_vcpu.0*, i32, i32, i32)*, i32 (%struct.kvm_vcpu.0*, i32, i32, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.kvm_vcpu.0*, i32, i32, i32)* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.vgic_register_region*, %struct.vgic_register_region** %11, align 8
  %41 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %40, i32 0, i32 0
  %42 = load i32 (%struct.kvm_vcpu.0*, i32, i32, i32)*, i32 (%struct.kvm_vcpu.0*, i32, i32, i32)** %41, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %44 = bitcast %struct.kvm_vcpu* %43 to %struct.kvm_vcpu.0*
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %42(%struct.kvm_vcpu.0* %44, i32 %45, i32 4, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %59

49:                                               ; preds = %33
  %50 = load %struct.vgic_register_region*, %struct.vgic_register_region** %11, align 8
  %51 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %50, i32 0, i32 1
  %52 = load i32 (%struct.kvm_vcpu.1*, i32, i32, i32)*, i32 (%struct.kvm_vcpu.1*, i32, i32, i32)** %51, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %54 = bitcast %struct.kvm_vcpu* %53 to %struct.kvm_vcpu.1*
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %52(%struct.kvm_vcpu.1* %54, i32 %55, i32 4, i32 %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %49, %39, %21
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
