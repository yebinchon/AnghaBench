; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_get_mmio_region.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio.c_vgic_get_mmio_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_register_region = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.vgic_io_device = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vgic_register_region* @vgic_get_mmio_region(%struct.kvm_vcpu* %0, %struct.vgic_io_device* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vgic_register_region*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.vgic_io_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vgic_register_region*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.vgic_io_device* %1, %struct.vgic_io_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %12 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %15 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %19 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = call %struct.vgic_register_region* @vgic_find_mmio_region(i32 %13, i32 %16, i64 %21)
  store %struct.vgic_register_region* %22, %struct.vgic_register_region** %10, align 8
  %23 = load %struct.vgic_register_region*, %struct.vgic_register_region** %10, align 8
  %24 = icmp ne %struct.vgic_register_region* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vgic_register_region*, %struct.vgic_register_region** %10, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @check_region(i32 %28, %struct.vgic_register_region* %29, i64 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25, %4
  store %struct.vgic_register_region* null, %struct.vgic_register_region** %5, align 8
  br label %37

35:                                               ; preds = %25
  %36 = load %struct.vgic_register_region*, %struct.vgic_register_region** %10, align 8
  store %struct.vgic_register_region* %36, %struct.vgic_register_region** %5, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = load %struct.vgic_register_region*, %struct.vgic_register_region** %5, align 8
  ret %struct.vgic_register_region* %38
}

declare dso_local %struct.vgic_register_region* @vgic_find_mmio_region(i32, i32, i64) #1

declare dso_local i32 @check_region(i32, %struct.vgic_register_region*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
