; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-kvm-device.c_vgic_v2_parse_attr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-kvm-device.c_vgic_v2_parse_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_device_attr = type { i32 }
%struct.vgic_reg_attr = type { i32, i32 }

@KVM_DEV_ARM_VGIC_CPUID_MASK = common dso_local global i32 0, align 4
@KVM_DEV_ARM_VGIC_CPUID_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KVM_DEV_ARM_VGIC_OFFSET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_v2_parse_attr(%struct.kvm_device* %0, %struct.kvm_device_attr* %1, %struct.vgic_reg_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_device*, align 8
  %6 = alloca %struct.kvm_device_attr*, align 8
  %7 = alloca %struct.vgic_reg_attr*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %5, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %6, align 8
  store %struct.vgic_reg_attr* %2, %struct.vgic_reg_attr** %7, align 8
  %9 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %6, align 8
  %10 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @KVM_DEV_ARM_VGIC_CPUID_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @KVM_DEV_ARM_VGIC_CPUID_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.kvm_device*, %struct.kvm_device** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @atomic_read(i32* %20)
  %22 = icmp sge i32 %16, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %41

26:                                               ; preds = %3
  %27 = load %struct.kvm_device*, %struct.kvm_device** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @kvm_get_vcpu(%struct.TYPE_2__* %29, i32 %30)
  %32 = load %struct.vgic_reg_attr*, %struct.vgic_reg_attr** %7, align 8
  %33 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %6, align 8
  %35 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @KVM_DEV_ARM_VGIC_OFFSET_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.vgic_reg_attr*, %struct.vgic_reg_attr** %7, align 8
  %40 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %26, %23
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kvm_get_vcpu(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
