; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_v2_has_attr_regs.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v2.c_vgic_v2_has_attr_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { i32 }
%struct.kvm_device_attr = type { i32 }
%struct.vgic_register_region = type { i32 }
%struct.vgic_io_device = type { i32, i8*, i8* }
%struct.vgic_reg_attr = type { i32, %struct.kvm_vcpu* }
%struct.kvm_vcpu = type { i32 }

@vgic_v2_dist_registers = common dso_local global i8* null, align 8
@vgic_v2_cpu_registers = common dso_local global i8* null, align 8
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_v2_has_attr_regs(%struct.kvm_device* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_device*, align 8
  %5 = alloca %struct.kvm_device_attr*, align 8
  %6 = alloca %struct.vgic_register_region*, align 8
  %7 = alloca %struct.vgic_io_device, align 8
  %8 = alloca %struct.vgic_reg_attr, align 8
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %4, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %5, align 8
  %12 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %13 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %14 = call i32 @vgic_v2_parse_attr(%struct.kvm_device* %12, %struct.kvm_device_attr* %13, %struct.vgic_reg_attr* %8)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %8, i32 0, i32 1
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %20, align 8
  store %struct.kvm_vcpu* %21, %struct.kvm_vcpu** %9, align 8
  %22 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %41 [
    i32 128, label %27
    i32 129, label %34
  ]

27:                                               ; preds = %19
  %28 = load i8*, i8** @vgic_v2_dist_registers, align 8
  %29 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** @vgic_v2_dist_registers, align 8
  %31 = call i8* @ARRAY_SIZE(i8* %30)
  %32 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %44

34:                                               ; preds = %19
  %35 = load i8*, i8** @vgic_v2_cpu_registers, align 8
  %36 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** @vgic_v2_cpu_registers, align 8
  %38 = call i8* @ARRAY_SIZE(i8* %37)
  %39 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %44

41:                                               ; preds = %19
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %61

44:                                               ; preds = %34, %27
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %61

51:                                               ; preds = %44
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call %struct.vgic_register_region* @vgic_get_mmio_region(%struct.kvm_vcpu* %52, %struct.vgic_io_device* %7, i32 %53, i32 4)
  store %struct.vgic_register_region* %54, %struct.vgic_register_region** %6, align 8
  %55 = load %struct.vgic_register_region*, %struct.vgic_register_region** %6, align 8
  %56 = icmp ne %struct.vgic_register_region* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ENXIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57, %48, %41, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @vgic_v2_parse_attr(%struct.kvm_device*, %struct.kvm_device_attr*, %struct.vgic_reg_attr*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local %struct.vgic_register_region* @vgic_get_mmio_region(%struct.kvm_vcpu*, %struct.vgic_io_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
