; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-kvm-device.c_vgic_v3_parse_attr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-kvm-device.c_vgic_v3_parse_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { i32 }
%struct.kvm_device_attr = type { i64, i64 }
%struct.vgic_reg_attr = type { i32, i32 }

@KVM_DEV_ARM_VGIC_GRP_DIST_REGS = common dso_local global i64 0, align 8
@KVM_DEV_ARM_VGIC_V3_MPIDR_MASK = common dso_local global i64 0, align 8
@KVM_DEV_ARM_VGIC_V3_MPIDR_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KVM_DEV_ARM_VGIC_OFFSET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_v3_parse_attr(%struct.kvm_device* %0, %struct.kvm_device_attr* %1, %struct.vgic_reg_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_device*, align 8
  %6 = alloca %struct.kvm_device_attr*, align 8
  %7 = alloca %struct.vgic_reg_attr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.kvm_device* %0, %struct.kvm_device** %5, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %6, align 8
  store %struct.vgic_reg_attr* %2, %struct.vgic_reg_attr** %7, align 8
  %10 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %6, align 8
  %11 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @KVM_DEV_ARM_VGIC_GRP_DIST_REGS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %6, align 8
  %17 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @KVM_DEV_ARM_VGIC_V3_MPIDR_MASK, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* @KVM_DEV_ARM_VGIC_V3_MPIDR_SHIFT, align 8
  %22 = lshr i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @VGIC_TO_MPIDR(i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load %struct.kvm_device*, %struct.kvm_device** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @kvm_mpidr_to_vcpu(i32 %27, i64 %28)
  %30 = load %struct.vgic_reg_attr*, %struct.vgic_reg_attr** %7, align 8
  %31 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load %struct.kvm_device*, %struct.kvm_device** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kvm_get_vcpu(i32 %35, i32 0)
  %37 = load %struct.vgic_reg_attr*, %struct.vgic_reg_attr** %7, align 8
  %38 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %15
  %40 = load %struct.vgic_reg_attr*, %struct.vgic_reg_attr** %7, align 8
  %41 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %57

47:                                               ; preds = %39
  %48 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %6, align 8
  %49 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @KVM_DEV_ARM_VGIC_OFFSET_MASK, align 4
  %52 = sext i32 %51 to i64
  %53 = and i64 %50, %52
  %54 = trunc i64 %53 to i32
  %55 = load %struct.vgic_reg_attr*, %struct.vgic_reg_attr** %7, align 8
  %56 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %47, %44
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @VGIC_TO_MPIDR(i64) #1

declare dso_local i32 @kvm_mpidr_to_vcpu(i32, i64) #1

declare dso_local i32 @kvm_get_vcpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
