; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v2.c_vgic_v2_map_resources.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-v2.c_vgic_v2_map_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Need to set vgic cpu and dist addresses first\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"VGIC CPU and dist frames overlap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Unable to initialize VGIC dynamic data structures\0A\00", align 1
@VGIC_V2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to register VGIC MMIO regions\0A\00", align 1
@vgic_v2_cpuif_trap = common dso_local global i32 0, align 4
@kvm_vgic_global_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@KVM_VGIC_V2_CPU_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to remap VGIC CPU to VCPU\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_v2_map_resources(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.vgic_dist*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.vgic_dist* %7, %struct.vgic_dist** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.kvm*, %struct.kvm** %2, align 8
  %9 = call i64 @vgic_ready(%struct.kvm* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %78

12:                                               ; preds = %1
  %13 = load %struct.vgic_dist*, %struct.vgic_dist** %3, align 8
  %14 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_VGIC_ADDR_UNDEF(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.vgic_dist*, %struct.vgic_dist** %3, align 8
  %20 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_VGIC_ADDR_UNDEF(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %12
  %25 = call i32 @kvm_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %78

28:                                               ; preds = %18
  %29 = load %struct.vgic_dist*, %struct.vgic_dist** %3, align 8
  %30 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vgic_dist*, %struct.vgic_dist** %3, align 8
  %33 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vgic_v2_check_base(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = call i32 @kvm_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %78

41:                                               ; preds = %28
  %42 = load %struct.kvm*, %struct.kvm** %2, align 8
  %43 = call i32 @vgic_init(%struct.kvm* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @kvm_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %78

48:                                               ; preds = %41
  %49 = load %struct.kvm*, %struct.kvm** %2, align 8
  %50 = load %struct.vgic_dist*, %struct.vgic_dist** %3, align 8
  %51 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VGIC_V2, align 4
  %54 = call i32 @vgic_register_dist_iodev(%struct.kvm* %49, i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = call i32 @kvm_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %78

59:                                               ; preds = %48
  %60 = call i32 @static_branch_unlikely(i32* @vgic_v2_cpuif_trap)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %59
  %63 = load %struct.kvm*, %struct.kvm** %2, align 8
  %64 = load %struct.vgic_dist*, %struct.vgic_dist** %3, align 8
  %65 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_vgic_global_state, i32 0, i32 0), align 4
  %68 = load i32, i32* @KVM_VGIC_V2_CPU_SIZE, align 4
  %69 = call i32 @kvm_phys_addr_ioremap(%struct.kvm* %63, i32 %66, i32 %67, i32 %68, i32 1)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = call i32 @kvm_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %78

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %59
  %76 = load %struct.vgic_dist*, %struct.vgic_dist** %3, align 8
  %77 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72, %57, %46, %37, %24, %11
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @vgic_ready(%struct.kvm*) #1

declare dso_local i64 @IS_VGIC_ADDR_UNDEF(i32) #1

declare dso_local i32 @kvm_err(i8*) #1

declare dso_local i32 @vgic_v2_check_base(i32, i32) #1

declare dso_local i32 @vgic_init(%struct.kvm*) #1

declare dso_local i32 @vgic_register_dist_iodev(%struct.kvm*, i32, i32) #1

declare dso_local i32 @static_branch_unlikely(i32*) #1

declare dso_local i32 @kvm_phys_addr_ioremap(%struct.kvm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
