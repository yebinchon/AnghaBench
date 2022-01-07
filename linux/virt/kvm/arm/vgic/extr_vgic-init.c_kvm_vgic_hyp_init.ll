; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-init.c_kvm_vgic_hyp_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-init.c_kvm_vgic_hyp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.gic_kvm_info = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No vgic maintenance irq\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@kvm_vgic_global_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"GIC system register CPU interface enabled\0A\00", align 1
@vgic_maintenance_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"vgic\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot register interrupt %d\0A\00", align 1
@CPUHP_AP_KVM_ARM_VGIC_INIT_STARTING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"kvm/arm/vgic:starting\00", align 1
@vgic_init_cpu_starting = common dso_local global i32 0, align 4
@vgic_init_cpu_dying = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Cannot register vgic CPU notifier\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"vgic interrupt IRQ%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vgic_hyp_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.gic_kvm_info*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.gic_kvm_info* (...) @gic_get_kvm_info()
  store %struct.gic_kvm_info* %4, %struct.gic_kvm_info** %2, align 8
  %5 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %2, align 8
  %6 = icmp ne %struct.gic_kvm_info* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %74

10:                                               ; preds = %0
  %11 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %2, align 8
  %12 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %1, align 4
  br label %74

19:                                               ; preds = %10
  %20 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %2, align 8
  %21 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %35 [
    i32 129, label %23
    i32 128, label %26
  ]

23:                                               ; preds = %19
  %24 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %2, align 8
  %25 = call i32 @vgic_v2_probe(%struct.gic_kvm_info* %24)
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %19
  %27 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %2, align 8
  %28 = call i32 @vgic_v3_probe(%struct.gic_kvm_info* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = call i32 @static_branch_enable(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvm_vgic_global_state, i32 0, i32 1))
  %33 = call i32 (i8*, ...) @kvm_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  br label %38

35:                                               ; preds = %19
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %34, %23
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* %1, align 4
  br label %74

43:                                               ; preds = %38
  %44 = load %struct.gic_kvm_info*, %struct.gic_kvm_info** %2, align 8
  %45 = getelementptr inbounds %struct.gic_kvm_info, %struct.gic_kvm_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvm_vgic_global_state, i32 0, i32 0), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvm_vgic_global_state, i32 0, i32 0), align 8
  %48 = load i32, i32* @vgic_maintenance_handler, align 4
  %49 = call i32 (...) @kvm_get_running_vcpus()
  %50 = call i32 @request_percpu_irq(i64 %47, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvm_vgic_global_state, i32 0, i32 0), align 8
  %55 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* %3, align 4
  store i32 %56, i32* %1, align 4
  br label %74

57:                                               ; preds = %43
  %58 = load i32, i32* @CPUHP_AP_KVM_ARM_VGIC_INIT_STARTING, align 4
  %59 = load i32, i32* @vgic_init_cpu_starting, align 4
  %60 = load i32, i32* @vgic_init_cpu_dying, align 4
  %61 = call i32 @cpuhp_setup_state(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %69

66:                                               ; preds = %57
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvm_vgic_global_state, i32 0, i32 0), align 8
  %68 = call i32 (i8*, ...) @kvm_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %67)
  store i32 0, i32* %1, align 4
  br label %74

69:                                               ; preds = %64
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvm_vgic_global_state, i32 0, i32 0), align 8
  %71 = call i32 (...) @kvm_get_running_vcpus()
  %72 = call i32 @free_percpu_irq(i64 %70, i32 %71)
  %73 = load i32, i32* %3, align 4
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %69, %66, %53, %41, %15, %7
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local %struct.gic_kvm_info* @gic_get_kvm_info(...) #1

declare dso_local i32 @kvm_err(i8*, ...) #1

declare dso_local i32 @vgic_v2_probe(%struct.gic_kvm_info*) #1

declare dso_local i32 @vgic_v3_probe(%struct.gic_kvm_info*) #1

declare dso_local i32 @static_branch_enable(i32*) #1

declare dso_local i32 @kvm_info(i8*, ...) #1

declare dso_local i32 @request_percpu_irq(i64, i32, i8*, i32) #1

declare dso_local i32 @kvm_get_running_vcpus(...) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32, i32) #1

declare dso_local i32 @free_percpu_irq(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
