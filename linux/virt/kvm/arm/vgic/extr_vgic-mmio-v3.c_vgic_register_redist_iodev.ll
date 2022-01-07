; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_register_redist_iodev.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_register_redist_iodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, %struct.kvm* }
%struct.TYPE_4__ = type { %struct.vgic_cpu }
%struct.vgic_cpu = type { %struct.vgic_redist_region*, %struct.vgic_io_device }
%struct.vgic_redist_region = type { i32, i64 }
%struct.vgic_io_device = type { i32, %struct.kvm_vcpu*, i32, i32, i32, i64 }
%struct.kvm = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KVM_VGIC_V3_REDIST_SIZE = common dso_local global i32 0, align 4
@kvm_io_gic_ops = common dso_local global i32 0, align 4
@IODEV_REDIST = common dso_local global i32 0, align 4
@vgic_v3_rd_registers = common dso_local global i32 0, align 4
@KVM_MMIO_BUS = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_register_redist_iodev(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.vgic_dist*, align 8
  %6 = alloca %struct.vgic_cpu*, align 8
  %7 = alloca %struct.vgic_io_device*, align 8
  %8 = alloca %struct.vgic_redist_region*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 1
  %13 = load %struct.kvm*, %struct.kvm** %12, align 8
  store %struct.kvm* %13, %struct.kvm** %4, align 8
  %14 = load %struct.kvm*, %struct.kvm** %4, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.vgic_dist* %16, %struct.vgic_dist** %5, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.vgic_cpu* %19, %struct.vgic_cpu** %6, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %22, i32 0, i32 1
  store %struct.vgic_io_device* %23, %struct.vgic_io_device** %7, align 8
  %24 = load %struct.vgic_cpu*, %struct.vgic_cpu** %6, align 8
  %25 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @IS_VGIC_ADDR_UNDEF(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

31:                                               ; preds = %1
  %32 = load %struct.vgic_dist*, %struct.vgic_dist** %5, align 8
  %33 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %32, i32 0, i32 0
  %34 = call %struct.vgic_redist_region* @vgic_v3_rdist_free_slot(i32* %33)
  store %struct.vgic_redist_region* %34, %struct.vgic_redist_region** %8, align 8
  %35 = load %struct.vgic_redist_region*, %struct.vgic_redist_region** %8, align 8
  %36 = icmp ne %struct.vgic_redist_region* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %101

38:                                               ; preds = %31
  %39 = load %struct.kvm*, %struct.kvm** %4, align 8
  %40 = call i32 @vgic_v3_check_base(%struct.kvm* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %101

45:                                               ; preds = %38
  %46 = load %struct.vgic_redist_region*, %struct.vgic_redist_region** %8, align 8
  %47 = load %struct.vgic_cpu*, %struct.vgic_cpu** %6, align 8
  %48 = getelementptr inbounds %struct.vgic_cpu, %struct.vgic_cpu* %47, i32 0, i32 0
  store %struct.vgic_redist_region* %46, %struct.vgic_redist_region** %48, align 8
  %49 = load %struct.vgic_redist_region*, %struct.vgic_redist_region** %8, align 8
  %50 = getelementptr inbounds %struct.vgic_redist_region, %struct.vgic_redist_region* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vgic_redist_region*, %struct.vgic_redist_region** %8, align 8
  %53 = getelementptr inbounds %struct.vgic_redist_region, %struct.vgic_redist_region* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @KVM_VGIC_V3_REDIST_SIZE, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %51, %57
  store i64 %58, i64* %9, align 8
  %59 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %60 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %59, i32 0, i32 0
  %61 = call i32 @kvm_iodevice_init(i32* %60, i32* @kvm_io_gic_ops)
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %64 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %63, i32 0, i32 5
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @IODEV_REDIST, align 4
  %66 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %67 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @vgic_v3_rd_registers, align 4
  %69 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %70 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @vgic_v3_rd_registers, align 4
  %72 = call i32 @ARRAY_SIZE(i32 %71)
  %73 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %74 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %76 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %77 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %76, i32 0, i32 1
  store %struct.kvm_vcpu* %75, %struct.kvm_vcpu** %77, align 8
  %78 = load %struct.kvm*, %struct.kvm** %4, align 8
  %79 = getelementptr inbounds %struct.kvm, %struct.kvm* %78, i32 0, i32 0
  %80 = call i32 @mutex_lock(i32* %79)
  %81 = load %struct.kvm*, %struct.kvm** %4, align 8
  %82 = load i32, i32* @KVM_MMIO_BUS, align 4
  %83 = load i64, i64* %9, align 8
  %84 = load i32, i32* @SZ_64K, align 4
  %85 = mul nsw i32 2, %84
  %86 = load %struct.vgic_io_device*, %struct.vgic_io_device** %7, align 8
  %87 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %86, i32 0, i32 0
  %88 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %81, i32 %82, i64 %83, i32 %85, i32* %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.kvm*, %struct.kvm** %4, align 8
  %90 = getelementptr inbounds %struct.kvm, %struct.kvm* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %45
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %2, align 4
  br label %101

96:                                               ; preds = %45
  %97 = load %struct.vgic_redist_region*, %struct.vgic_redist_region** %8, align 8
  %98 = getelementptr inbounds %struct.vgic_redist_region, %struct.vgic_redist_region* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %96, %94, %42, %37, %30
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @IS_VGIC_ADDR_UNDEF(i64) #1

declare dso_local %struct.vgic_redist_region* @vgic_v3_rdist_free_slot(i32*) #1

declare dso_local i32 @vgic_v3_check_base(%struct.kvm*) #1

declare dso_local i32 @kvm_iodevice_init(i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i64, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
