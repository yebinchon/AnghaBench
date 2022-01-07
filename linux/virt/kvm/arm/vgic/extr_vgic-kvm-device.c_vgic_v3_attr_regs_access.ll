; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-kvm-device.c_vgic_v3_attr_regs_access.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-kvm-device.c_vgic_v3_attr_regs_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_device_attr = type { i32, i32 }
%struct.vgic_reg_attr = type { i32, %struct.kvm_vcpu* }
%struct.kvm_vcpu = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@KVM_DEV_ARM_VGIC_SYSREG_INSTR_MASK = common dso_local global i32 0, align 4
@KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK = common dso_local global i32 0, align 4
@KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT = common dso_local global i32 0, align 4
@VGIC_LEVEL_INFO_LINE_LEVEL = common dso_local global i32 0, align 4
@KVM_DEV_ARM_VGIC_LINE_LEVEL_INTID_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, %struct.kvm_device_attr*, i32*, i32)* @vgic_v3_attr_regs_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_v3_attr_regs_access(%struct.kvm_device* %0, %struct.kvm_device_attr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_device*, align 8
  %7 = alloca %struct.kvm_device_attr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vgic_reg_attr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm_vcpu*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.kvm_device* %0, %struct.kvm_device** %6, align 8
  store %struct.kvm_device_attr* %1, %struct.kvm_device_attr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %19 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %7, align 8
  %20 = call i32 @vgic_v3_parse_attr(%struct.kvm_device* %18, %struct.kvm_device_attr* %19, %struct.vgic_reg_attr* %10)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %146

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %10, i32 0, i32 1
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %26, align 8
  store %struct.kvm_vcpu* %27, %struct.kvm_vcpu** %12, align 8
  %28 = getelementptr inbounds %struct.vgic_reg_attr, %struct.vgic_reg_attr* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %36 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @vgic_initialized(%struct.TYPE_4__* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %139

47:                                               ; preds = %25
  %48 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %49 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 @lock_all_vcpus(%struct.TYPE_4__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  br label %139

56:                                               ; preds = %47
  %57 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %7, align 8
  %58 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %131 [
    i32 130, label %60
    i32 128, label %77
    i32 131, label %94
    i32 129, label %105
  ]

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @vgic_v3_dist_uaccess(%struct.kvm_vcpu* %67, i32 %68, i32 %69, i32* %14)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %66
  br label %134

77:                                               ; preds = %56
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @vgic_v3_redist_uaccess(%struct.kvm_vcpu* %84, i32 %85, i32 %86, i32* %14)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %14, align 4
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %83
  br label %134

94:                                               ; preds = %56
  %95 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %7, align 8
  %96 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @KVM_DEV_ARM_VGIC_SYSREG_INSTR_MASK, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %15, align 4
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @vgic_v3_cpu_sysregs_uaccess(%struct.kvm_vcpu* %100, i32 %101, i32 %102, i32* %103)
  store i32 %104, i32* %13, align 4
  br label %134

105:                                              ; preds = %56
  %106 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %7, align 8
  %107 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT, align 4
  %112 = lshr i32 %110, %111
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* @VGIC_LEVEL_INFO_LINE_LEVEL, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %105
  %117 = load %struct.kvm_device_attr*, %struct.kvm_device_attr** %7, align 8
  %118 = getelementptr inbounds %struct.kvm_device_attr, %struct.kvm_device_attr* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @KVM_DEV_ARM_VGIC_LINE_LEVEL_INTID_MASK, align 4
  %121 = and i32 %119, %120
  store i32 %121, i32* %17, align 4
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @vgic_v3_line_level_info_uaccess(%struct.kvm_vcpu* %122, i32 %123, i32 %124, i32* %125)
  store i32 %126, i32* %13, align 4
  br label %130

127:                                              ; preds = %105
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %127, %116
  br label %134

131:                                              ; preds = %56
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %131, %130, %94, %93, %76
  %135 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %136 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = call i32 @unlock_all_vcpus(%struct.TYPE_4__* %137)
  br label %139

139:                                              ; preds = %134, %53, %44
  %140 = load %struct.kvm_device*, %struct.kvm_device** %6, align 8
  %141 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %139, %23
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @vgic_v3_parse_attr(%struct.kvm_device*, %struct.kvm_device_attr*, %struct.vgic_reg_attr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vgic_initialized(%struct.TYPE_4__*) #1

declare dso_local i32 @lock_all_vcpus(%struct.TYPE_4__*) #1

declare dso_local i32 @vgic_v3_dist_uaccess(%struct.kvm_vcpu*, i32, i32, i32*) #1

declare dso_local i32 @vgic_v3_redist_uaccess(%struct.kvm_vcpu*, i32, i32, i32*) #1

declare dso_local i32 @vgic_v3_cpu_sysregs_uaccess(%struct.kvm_vcpu*, i32, i32, i32*) #1

declare dso_local i32 @vgic_v3_line_level_info_uaccess(%struct.kvm_vcpu*, i32, i32, i32*) #1

declare dso_local i32 @unlock_all_vcpus(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
