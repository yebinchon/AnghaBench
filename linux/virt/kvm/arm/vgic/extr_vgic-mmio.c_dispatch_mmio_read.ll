; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_dispatch_mmio_read.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_dispatch_mmio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_io_device = type { i32 }
%struct.vgic_io_device = type { i32, i32, %struct.kvm_vcpu* }
%struct.vgic_register_region = type { i64 (%struct.kvm_vcpu.0*, i32, i32)*, i64 (i32, i32, i32, i32)* }
%struct.kvm_vcpu.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_io_device*, i32, i32, i8*)* @dispatch_mmio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispatch_mmio_read(%struct.kvm_vcpu* %0, %struct.kvm_io_device* %1, i32 %2, i32 %3, i8* %4) #0 {
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
  store i64 0, i64* %14, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %18 = load %struct.vgic_io_device*, %struct.vgic_io_device** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.vgic_register_region* @vgic_get_mmio_region(%struct.kvm_vcpu* %17, %struct.vgic_io_device* %18, i32 %19, i32 %20)
  store %struct.vgic_register_region* %21, %struct.vgic_register_region** %13, align 8
  %22 = load %struct.vgic_register_region*, %struct.vgic_register_region** %13, align 8
  %23 = icmp ne %struct.vgic_register_region* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @memset(i8* %25, i32 0, i32 %26)
  store i32 0, i32* %6, align 4
  br label %79

28:                                               ; preds = %5
  %29 = load %struct.vgic_io_device*, %struct.vgic_io_device** %12, align 8
  %30 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %74 [
    i32 131, label %32
    i32 130, label %41
    i32 128, label %50
    i32 129, label %61
  ]

32:                                               ; preds = %28
  %33 = load %struct.vgic_register_region*, %struct.vgic_register_region** %13, align 8
  %34 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %33, i32 0, i32 0
  %35 = load i64 (%struct.kvm_vcpu.0*, i32, i32)*, i64 (%struct.kvm_vcpu.0*, i32, i32)** %34, align 8
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %37 = bitcast %struct.kvm_vcpu* %36 to %struct.kvm_vcpu.0*
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i64 %35(%struct.kvm_vcpu.0* %37, i32 %38, i32 %39)
  store i64 %40, i64* %14, align 8
  br label %74

41:                                               ; preds = %28
  %42 = load %struct.vgic_register_region*, %struct.vgic_register_region** %13, align 8
  %43 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %42, i32 0, i32 0
  %44 = load i64 (%struct.kvm_vcpu.0*, i32, i32)*, i64 (%struct.kvm_vcpu.0*, i32, i32)** %43, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %46 = bitcast %struct.kvm_vcpu* %45 to %struct.kvm_vcpu.0*
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i64 %44(%struct.kvm_vcpu.0* %46, i32 %47, i32 %48)
  store i64 %49, i64* %14, align 8
  br label %74

50:                                               ; preds = %28
  %51 = load %struct.vgic_register_region*, %struct.vgic_register_region** %13, align 8
  %52 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %51, i32 0, i32 0
  %53 = load i64 (%struct.kvm_vcpu.0*, i32, i32)*, i64 (%struct.kvm_vcpu.0*, i32, i32)** %52, align 8
  %54 = load %struct.vgic_io_device*, %struct.vgic_io_device** %12, align 8
  %55 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %54, i32 0, i32 2
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %55, align 8
  %57 = bitcast %struct.kvm_vcpu* %56 to %struct.kvm_vcpu.0*
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i64 %53(%struct.kvm_vcpu.0* %57, i32 %58, i32 %59)
  store i64 %60, i64* %14, align 8
  br label %74

61:                                               ; preds = %28
  %62 = load %struct.vgic_register_region*, %struct.vgic_register_region** %13, align 8
  %63 = getelementptr inbounds %struct.vgic_register_region, %struct.vgic_register_region* %62, i32 0, i32 1
  %64 = load i64 (i32, i32, i32, i32)*, i64 (i32, i32, i32, i32)** %63, align 8
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vgic_io_device*, %struct.vgic_io_device** %12, align 8
  %69 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i64 %64(i32 %67, i32 %70, i32 %71, i32 %72)
  store i64 %73, i64* %14, align 8
  br label %74

74:                                               ; preds = %28, %61, %50, %41, %32
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i64, i64* %14, align 8
  %78 = call i32 @vgic_data_host_to_mmio_bus(i8* %75, i32 %76, i64 %77)
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %74, %24
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.vgic_io_device* @kvm_to_vgic_iodev(%struct.kvm_io_device*) #1

declare dso_local %struct.vgic_register_region* @vgic_get_mmio_region(%struct.kvm_vcpu*, %struct.vgic_io_device*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @vgic_data_host_to_mmio_bus(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
