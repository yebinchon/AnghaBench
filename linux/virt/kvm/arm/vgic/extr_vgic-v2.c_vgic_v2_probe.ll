; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v2.c_vgic_v2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v2.c_vgic_v2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.gic_kvm_info = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"GICH not present in the firmware table\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"GICV region size/alignment is unsafe, using trapping (reduced performance)\0A\00", align 1
@kvm_vgic_global_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot map GICV into hyp\0A\00", align 1
@vgic_v2_cpuif_trap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot map VCTRL into hyp\0A\00", align 1
@GICH_VTR = common dso_local global i64 0, align 8
@KVM_DEV_TYPE_ARM_VGIC_V2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Cannot register GICv2 KVM device\0A\00", align 1
@VGIC_V2 = common dso_local global i32 0, align 4
@VGIC_V2_MAX_CPUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"vgic-v2@%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_v2_probe(%struct.gic_kvm_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gic_kvm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gic_kvm_info* %0, %struct.gic_kvm_info** %3, align 8
  %6 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %7 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 @kvm_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %97

15:                                               ; preds = %1
  %16 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %17 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PAGE_ALIGNED(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %24 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %23, i32 0, i32 1
  %25 = call i32 @resource_size(%struct.TYPE_3__* %24)
  %26 = call i32 @PAGE_ALIGNED(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %22, %15
  %29 = call i32 @kvm_info(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %31 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %35 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %34, i32 0, i32 1
  %36 = call i32 @resource_size(%struct.TYPE_3__* %35)
  %37 = call i32 @create_hyp_io_mappings(i32 %33, i32 %36, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 2), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 8))
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = call i32 @kvm_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %83

42:                                               ; preds = %28
  %43 = call i32 @static_branch_enable(i32* @vgic_v2_cpuif_trap)
  br label %44

44:                                               ; preds = %42, %22
  %45 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %46 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %50 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %49, i32 0, i32 0
  %51 = call i32 @resource_size(%struct.TYPE_3__* %50)
  %52 = call i32 @create_hyp_io_mappings(i32 %48, i32 %51, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 3), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 7))
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = call i32 @kvm_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %83

57:                                               ; preds = %44
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 3), align 8
  %59 = load i64, i64* @GICH_VTR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl_relaxed(i64 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 63
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 0), align 8
  %65 = load i32, i32* @KVM_DEV_TYPE_ARM_VGIC_V2, align 4
  %66 = call i32 @kvm_register_vgic_device(i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = call i32 @kvm_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %83

71:                                               ; preds = %57
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 1), align 4
  %72 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %73 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 6), align 8
  %76 = load i32, i32* @VGIC_V2, align 4
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 5), align 4
  %77 = load i32, i32* @VGIC_V2_MAX_CPUS, align 4
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 4), align 8
  %78 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %3, align 8
  %79 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @kvm_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  store i32 0, i32* %2, align 4
  br label %97

83:                                               ; preds = %69, %55, %40
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 3), align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 3), align 8
  %88 = call i32 @iounmap(i64 %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 2), align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 2), align 8
  %94 = call i32 @iounmap(i64 %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %71, %11
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @kvm_err(i8*) #1

declare dso_local i32 @PAGE_ALIGNED(i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_3__*) #1

declare dso_local i32 @kvm_info(i8*) #1

declare dso_local i32 @create_hyp_io_mappings(i32, i32, i64*, i32*) #1

declare dso_local i32 @static_branch_enable(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @kvm_register_vgic_device(i32) #1

declare dso_local i32 @kvm_debug(i8*, i32) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
