; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_v3_has_attr_regs.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_v3_has_attr_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { i32 }
%struct.kvm_device_attr = type { i32, i32 }
%struct.vgic_register_region = type { i32 }
%struct.vgic_io_device = type { i32, i8*, i8* }
%struct.vgic_reg_attr = type { i32, %struct.kvm_vcpu* }
%struct.kvm_vcpu = type { i32 }

@vgic_v3_dist_registers = common dso_local global i8* null, align 8
@vgic_v3_rd_registers = common dso_local global i8* null, align 8
@KVM_DEV_ARM_VGIC_SYSREG_INSTR_MASK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_v3_has_attr_regs(%struct.kvm_device* %0, %struct.kvm_device_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_device*, align 8
  %5 = alloca %struct.kvm_device_attr*, align 8
  %6 = alloca %struct.vgic_register_region*, align 8
  %7 = alloca %struct.vgic_io_device, align 8
  %8 = alloca %struct.vgic_reg_attr, align 8
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %4, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %5, align 8
  %14 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %15 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %16 = call i32 @vgic_v3_parse_attr(%struct.kvm_device* %14, %struct.kvm_device_attr* %15, %struct.vgic_reg_attr* %8)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %8, i32 0, i32 1
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %22, align 8
  store %struct.kvm_vcpu* %23, %struct.kvm_vcpu** %9, align 8
  %24 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %52 [
    i32 129, label %29
    i32 128, label %36
    i32 130, label %43
  ]

29:                                               ; preds = %21
  %30 = load i8*, i8** @vgic_v3_dist_registers, align 8
  %31 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** @vgic_v3_dist_registers, align 8
  %33 = call i8* @ARRAY_SIZE(i8* %32)
  %34 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %55

36:                                               ; preds = %21
  %37 = load i8*, i8** @vgic_v3_rd_registers, align 8
  %38 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** @vgic_v3_rd_registers, align 8
  %40 = call i8* @ARRAY_SIZE(i8* %39)
  %41 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.vgic_io_device, %struct.vgic_io_device* %7, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %55

43:                                               ; preds = %21
  %44 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @KVM_DEV_ARM_VGIC_SYSREG_INSTR_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %13, align 4
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @vgic_v3_has_cpu_sysregs_attr(%struct.kvm_vcpu* %49, i32 0, i32 %50, i32* %12)
  store i32 %51, i32* %3, align 4
  br label %72

52:                                               ; preds = %21
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %72

55:                                               ; preds = %36, %29
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @ENXIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %72

62:                                               ; preds = %55
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call %struct.vgic_register_region* @vgic_get_mmio_region(%struct.kvm_vcpu* %63, %struct.vgic_io_device* %7, i32 %64, i32 4)
  store %struct.vgic_register_region* %65, %struct.vgic_register_region** %6, align 8
  %66 = load %struct.vgic_register_region*, %struct.vgic_register_region** %6, align 8
  %67 = icmp ne %struct.vgic_register_region* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ENXIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %68, %59, %52, %43, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @vgic_v3_parse_attr(%struct.kvm_device*, %struct.kvm_device_attr*, %struct.vgic_reg_attr*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @vgic_v3_has_cpu_sysregs_attr(%struct.kvm_vcpu*, i32, i32, i32*) #1

declare dso_local %struct.vgic_register_region* @vgic_get_mmio_region(%struct.kvm_vcpu*, %struct.vgic_io_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
