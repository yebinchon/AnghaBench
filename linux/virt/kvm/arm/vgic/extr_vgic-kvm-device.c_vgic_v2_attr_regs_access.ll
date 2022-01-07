; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-kvm-device.c_vgic_v2_attr_regs_access.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-kvm-device.c_vgic_v2_attr_regs_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_device_attr = type { i32 }
%struct.vgic_reg_attr = type { i32, %struct.kvm_vcpu* }
%struct.kvm_vcpu = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, %struct.kvm_device_attr*, i32*, i32)* @vgic_v2_attr_regs_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_v2_attr_regs_access(%struct.kvm_device* %0, %struct.kvm_device_attr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_device*, align 8
  %7 = alloca %struct.kvm_device_attr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vgic_reg_attr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm_vcpu*, align 8
  %13 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %6, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %15 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %7, align 8
  %16 = call i32 @vgic_v2_parse_attr(%struct.kvm_device* %14, %struct.kvm_device_attr* %15, %struct.vgic_reg_attr* %10)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %5, align 4
  br label %78

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %10, i32 0, i32 1
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %22, align 8
  store %struct.kvm_vcpu* %23, %struct.kvm_vcpu** %12, align 8
  %24 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %10, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %27 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %32 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @vgic_init(%struct.TYPE_4__* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %71

38:                                               ; preds = %21
  %39 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %40 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @lock_all_vcpus(%struct.TYPE_4__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %71

47:                                               ; preds = %38
  %48 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %7, align 8
  %49 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %63 [
    i32 129, label %51
    i32 128, label %57
  ]

51:                                               ; preds = %47
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @vgic_v2_cpuif_uaccess(%struct.kvm_vcpu* %52, i32 %53, i32 %54, i32* %55)
  store i32 %56, i32* %13, align 4
  br label %66

57:                                               ; preds = %47
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @vgic_v2_dist_uaccess(%struct.kvm_vcpu* %58, i32 %59, i32 %60, i32* %61)
  store i32 %62, i32* %13, align 4
  br label %66

63:                                               ; preds = %47
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %63, %57, %51
  %67 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %68 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @unlock_all_vcpus(%struct.TYPE_4__* %69)
  br label %71

71:                                               ; preds = %66, %44, %37
  %72 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %73 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %71, %19
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @vgic_v2_parse_attr(%struct.kvm_device*, %struct.kvm_device_attr*, %struct.vgic_reg_attr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vgic_init(%struct.TYPE_4__*) #1

declare dso_local i32 @lock_all_vcpus(%struct.TYPE_4__*) #1

declare dso_local i32 @vgic_v2_cpuif_uaccess(%struct.kvm_vcpu*, i32, i32, i32*) #1

declare dso_local i32 @vgic_v2_dist_uaccess(%struct.kvm_vcpu*, i32, i32, i32*) #1

declare dso_local i32 @unlock_all_vcpus(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
