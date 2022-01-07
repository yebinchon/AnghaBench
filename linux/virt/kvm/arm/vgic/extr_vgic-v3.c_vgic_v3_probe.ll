; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v3.c_vgic_v3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i32*, i64 }
%struct.gic_kvm_info = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@__vgic_v3_get_ich_vtr_el2 = common dso_local global i32 0, align 4
@kvm_vgic_global_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@gicv4_enable = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GICv4 support %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"GICv3: no GICV resource entry\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"GICV physical address 0x%llx not page aligned\0A\00", align 1
@KVM_DEV_TYPE_ARM_VGIC_V2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Cannot register GICv2 KVM device.\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"vgic-v2@%llx\0A\00", align 1
@KVM_DEV_TYPE_ARM_VGIC_V3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Cannot register GICv3 KVM device.\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"disabling GICv2 emulation\0A\00", align 1
@group0_trap = common dso_local global i32 0, align 4
@group1_trap = common dso_local global i32 0, align 4
@common_trap = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [63 x i8] c"GICv3 sysreg trapping enabled ([%s%s%s], reduced performance)\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"G0\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"G1\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@vgic_v3_cpuif_trap = common dso_local global i32 0, align 4
@VGIC_V3 = common dso_local global i32 0, align 4
@VGIC_V3_MAX_CPUS = common dso_local global i32 0, align 4
@ARM64_WORKAROUND_CAVIUM_30115 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_v3_probe(%struct.gic_kvm_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gic_kvm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gic_kvm_info* %0, %struct.gic_kvm_info** %3, align 8
  %6 = load i32, i32* @__vgic_v3_get_ich_vtr_el2, align 4
  %7 = call i32 @kvm_call_hyp_ret(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 15
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 1), align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 2), align 8
  %12 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %13 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i64, i64* @gicv4_enable, align 8
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 7), align 8
  %18 = load i64, i64* @gicv4_enable, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 (i8*, ...) @kvm_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %25 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @kvm_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 3), align 8
  br label %63

31:                                               ; preds = %23
  %32 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %33 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @PAGE_ALIGNED(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %40 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %42)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 3), align 8
  br label %62

44:                                               ; preds = %31
  %45 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %46 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 1), align 4
  %49 = load i32, i32* @KVM_DEV_TYPE_ARM_VGIC_V2, align 4
  %50 = call i32 @kvm_register_vgic_device(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = call i32 @kvm_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %105

56:                                               ; preds = %44
  %57 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %58 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @kvm_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %56, %38
  br label %63

63:                                               ; preds = %62, %29
  %64 = load i32, i32* @KVM_DEV_TYPE_ARM_VGIC_V3, align 4
  %65 = call i32 @kvm_register_vgic_device(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = call i32 @kvm_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32, i32* @KVM_DEV_TYPE_ARM_VGIC_V2, align 4
  %71 = call i32 @kvm_unregister_device_ops(i32 %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %105

73:                                               ; preds = %63
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 3), align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 (i8*, ...) @kvm_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i32, i32* @group0_trap, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @group1_trap, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* @common_trap, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84, %81, %78
  %88 = load i32, i32* @group0_trap, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %92 = load i32, i32* @group1_trap, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %96 = load i64, i64* @common_trap, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %100 = call i32 (i8*, ...) @kvm_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i8* %91, i8* %95, i8* %99)
  %101 = call i32 @static_branch_enable(i32* @vgic_v3_cpuif_trap)
  br label %102

102:                                              ; preds = %87, %84
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 6), align 8
  %103 = load i32, i32* @VGIC_V3, align 4
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 5), align 4
  %104 = load i32, i32* @VGIC_V3_MAX_CPUS, align 4
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 4), align 8
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %68, %53
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @kvm_call_hyp_ret(i32) #1

declare dso_local i32 @kvm_info(i8*, ...) #1

declare dso_local i32 @PAGE_ALIGNED(i64) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @kvm_register_vgic_device(i32) #1

declare dso_local i32 @kvm_err(i8*) #1

declare dso_local i32 @kvm_unregister_device_ops(i32) #1

declare dso_local i32 @static_branch_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
