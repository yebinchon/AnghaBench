; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_dispatch_mmio_write.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_dispatch_mmio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_io_device = type { i32 }
%struct.vgic_io_device = type { i32, i32, %struct.kvm_vcpu* }
%struct.vgic_register_region = type { i32 (i32, i32, i32, i32, i64)*, i32 (%struct.kvm_vcpu.0*, i32, i32, i64)* }
%struct.kvm_vcpu.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_io_device*, i32, i32, i8*)* @dispatch_mmio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispatch_mmio_write(%struct.kvm_vcpu* %0, %struct.kvm_io_device* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.kvm_io_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.vgic_io_device*, align 8
  %13 = alloca %struct.vgic_register_region*, align 8
  %14 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_io_device* %1, %struct.kvm_io_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load %struct.kvm_io_device*, %struct.kvm_io_device** %8, align 8
  %16 = call %struct.vgic_io_device* @kvm_to_vgic_iodev(%struct.kvm_io_device* %15)
  store %struct.vgic_io_device* %16, %struct.vgic_io_device** %12, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @vgic_data_mmio_bus_to_host(i8* %17, i32 %18)
  store i64 %19, i64* %14, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %21 = load %struct.vgic_io_device*, %struct.vgic_io_device** %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.vgic_register_region* @vgic_get_mmio_region(%struct.kvm_vcpu* %20, %struct.vgic_io_device* %21, i32 %22, i32 %23)
  store %struct.vgic_register_region* %24, %struct.vgic_register_region** %13, align 8
  %25 = load %struct.vgic_register_region*, %struct.vgic_register_region** %13, align 8
  %26 = icmp ne %struct.vgic_register_region* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %79

28:                                               ; preds = %5
  %29 = load %struct.vgic_io_device*, %struct.vgic_io_device** %12, align 8
  %30 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %78 [
    i32 131, label %32
    i32 130, label %42
    i32 128, label %52
    i32 129, label %64
  ]

32:                                               ; preds = %28
  %33 = load %struct.vgic_register_region*, %struct.vgic_register_region** %13, align 8
  %34 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %33, i32 0, i32 1
  %35 = load i32 (%struct.kvm_vcpu.0*, i32, i32, i64)*, i32 (%struct.kvm_vcpu.0*, i32, i32, i64)** %34, align 8
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %37 = bitcast %struct.kvm_vcpu* %36 to %struct.kvm_vcpu.0*
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i64, i64* %14, align 8
  %41 = call i32 %35(%struct.kvm_vcpu.0* %37, i32 %38, i32 %39, i64 %40)
  br label %78

42:                                               ; preds = %28
  %43 = load %struct.vgic_register_region*, %struct.vgic_register_region** %13, align 8
  %44 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %43, i32 0, i32 1
  %45 = load i32 (%struct.kvm_vcpu.0*, i32, i32, i64)*, i32 (%struct.kvm_vcpu.0*, i32, i32, i64)** %44, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %47 = bitcast %struct.kvm_vcpu* %46 to %struct.kvm_vcpu.0*
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i64, i64* %14, align 8
  %51 = call i32 %45(%struct.kvm_vcpu.0* %47, i32 %48, i32 %49, i64 %50)
  br label %78

52:                                               ; preds = %28
  %53 = load %struct.vgic_register_region*, %struct.vgic_register_region** %13, align 8
  %54 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %53, i32 0, i32 1
  %55 = load i32 (%struct.kvm_vcpu.0*, i32, i32, i64)*, i32 (%struct.kvm_vcpu.0*, i32, i32, i64)** %54, align 8
  %56 = load %struct.vgic_io_device*, %struct.vgic_io_device** %12, align 8
  %57 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %56, i32 0, i32 2
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %57, align 8
  %59 = bitcast %struct.kvm_vcpu* %58 to %struct.kvm_vcpu.0*
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i64, i64* %14, align 8
  %63 = call i32 %55(%struct.kvm_vcpu.0* %59, i32 %60, i32 %61, i64 %62)
  br label %78

64:                                               ; preds = %28
  %65 = load %struct.vgic_register_region*, %struct.vgic_register_region** %13, align 8
  %66 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %65, i32 0, i32 0
  %67 = load i32 (i32, i32, i32, i32, i64)*, i32 (i32, i32, i32, i32, i64)** %66, align 8
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vgic_io_device*, %struct.vgic_io_device** %12, align 8
  %72 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i64, i64* %14, align 8
  %77 = call i32 %67(i32 %70, i32 %73, i32 %74, i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %28, %64, %52, %42, %32
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %27
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.vgic_io_device* @kvm_to_vgic_iodev(%struct.kvm_io_device*) #1

declare dso_local i64 @vgic_data_mmio_bus_to_host(i8*, i32) #1

declare dso_local %struct.vgic_register_region* @vgic_get_mmio_region(%struct.kvm_vcpu*, %struct.vgic_io_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
