; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_hyp_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_hyp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.arch_timer_kvm_info = type { i64, i64, %struct.TYPE_2__ }

@timecounter = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"kvm_arch_timer: uninitialized timecounter\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"kvm_arch_timer: invalid virtual timer IRQ: %d\0A\00", align 1
@host_vtimer_irq = common dso_local global i64 0, align 8
@host_vtimer_irq_flags = common dso_local global i64 0, align 8
@IRQF_TRIGGER_HIGH = common dso_local global i64 0, align 8
@IRQF_TRIGGER_LOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"Invalid trigger for vtimer IRQ%d, assuming level low\0A\00", align 1
@kvm_arch_timer_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"kvm guest vtimer\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"kvm_arch_timer: can't request vtimer interrupt %d (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"kvm_arch_timer: error setting vcpu affinity\0A\00", align 1
@has_gic_active_state = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"virtual timer IRQ%d\0A\00", align 1
@host_ptimer_irq = common dso_local global i64 0, align 8
@host_ptimer_irq_flags = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [54 x i8] c"Invalid trigger for ptimer IRQ%d, assuming level low\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"kvm guest ptimer\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"kvm_arch_timer: can't request ptimer interrupt %d (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"physical timer IRQ%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"kvm_arch_timer: invalid physical timer IRQ: %d\0A\00", align 1
@CPUHP_AP_KVM_ARM_TIMER_STARTING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"kvm/arm/timer:starting\00", align 1
@kvm_timer_starting_cpu = common dso_local global i32 0, align 4
@kvm_timer_dying_cpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_timer_hyp_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.arch_timer_kvm_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call %struct.arch_timer_kvm_info* (...) @arch_timer_get_kvm_info()
  store %struct.arch_timer_kvm_info* %6, %struct.arch_timer_kvm_info** %4, align 8
  %7 = load %struct.arch_timer_kvm_info*, %struct.arch_timer_kvm_info** %4, align 8
  %8 = getelementptr inbounds %struct.arch_timer_kvm_info, %struct.arch_timer_kvm_info* %7, i32 0, i32 2
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** @timecounter, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timecounter, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %143

17:                                               ; preds = %1
  %18 = load %struct.arch_timer_kvm_info*, %struct.arch_timer_kvm_info** %4, align 8
  %19 = getelementptr inbounds %struct.arch_timer_kvm_info, %struct.arch_timer_kvm_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.arch_timer_kvm_info*, %struct.arch_timer_kvm_info** %4, align 8
  %24 = getelementptr inbounds %struct.arch_timer_kvm_info, %struct.arch_timer_kvm_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %143

29:                                               ; preds = %17
  %30 = load %struct.arch_timer_kvm_info*, %struct.arch_timer_kvm_info** %4, align 8
  %31 = getelementptr inbounds %struct.arch_timer_kvm_info, %struct.arch_timer_kvm_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* @host_vtimer_irq, align 8
  %33 = load i64, i64* @host_vtimer_irq, align 8
  %34 = call i64 @irq_get_trigger_type(i64 %33)
  store i64 %34, i64* @host_vtimer_irq_flags, align 8
  %35 = load i64, i64* @host_vtimer_irq_flags, align 8
  %36 = load i64, i64* @IRQF_TRIGGER_HIGH, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load i64, i64* @host_vtimer_irq_flags, align 8
  %40 = load i64, i64* @IRQF_TRIGGER_LOW, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* @host_vtimer_irq, align 8
  %44 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* @IRQF_TRIGGER_LOW, align 8
  store i64 %45, i64* @host_vtimer_irq_flags, align 8
  br label %46

46:                                               ; preds = %42, %38, %29
  %47 = load i64, i64* @host_vtimer_irq, align 8
  %48 = load i32, i32* @kvm_arch_timer_handler, align 4
  %49 = call i32 (...) @kvm_get_running_vcpus()
  %50 = call i32 @request_percpu_irq(i64 %47, i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i64, i64* @host_vtimer_irq, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i64 %54, i32 %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %143

58:                                               ; preds = %46
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i64, i64* @host_vtimer_irq, align 8
  %63 = call i32 (...) @kvm_get_running_vcpus()
  %64 = call i32 @irq_set_vcpu_affinity(i64 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %138

69:                                               ; preds = %61
  %70 = call i32 @static_branch_enable(i32* @has_gic_active_state)
  br label %71

71:                                               ; preds = %69, %58
  %72 = load i64, i64* @host_vtimer_irq, align 8
  %73 = call i32 @kvm_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %72)
  %74 = load %struct.arch_timer_kvm_info*, %struct.arch_timer_kvm_info** %4, align 8
  %75 = getelementptr inbounds %struct.arch_timer_kvm_info, %struct.arch_timer_kvm_info* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %122

78:                                               ; preds = %71
  %79 = load %struct.arch_timer_kvm_info*, %struct.arch_timer_kvm_info** %4, align 8
  %80 = getelementptr inbounds %struct.arch_timer_kvm_info, %struct.arch_timer_kvm_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* @host_ptimer_irq, align 8
  %82 = load i64, i64* @host_ptimer_irq, align 8
  %83 = call i64 @irq_get_trigger_type(i64 %82)
  store i64 %83, i64* @host_ptimer_irq_flags, align 8
  %84 = load i64, i64* @host_ptimer_irq_flags, align 8
  %85 = load i64, i64* @IRQF_TRIGGER_HIGH, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load i64, i64* @host_ptimer_irq_flags, align 8
  %89 = load i64, i64* @IRQF_TRIGGER_LOW, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i64, i64* @host_ptimer_irq, align 8
  %93 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i64 %92)
  %94 = load i64, i64* @IRQF_TRIGGER_LOW, align 8
  store i64 %94, i64* @host_ptimer_irq_flags, align 8
  br label %95

95:                                               ; preds = %91, %87, %78
  %96 = load i64, i64* @host_ptimer_irq, align 8
  %97 = load i32, i32* @kvm_arch_timer_handler, align 4
  %98 = call i32 (...) @kvm_get_running_vcpus()
  %99 = call i32 @request_percpu_irq(i64 %96, i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load i64, i64* @host_ptimer_irq, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i64 %103, i32 %104)
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %143

107:                                              ; preds = %95
  %108 = load i32, i32* %3, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i64, i64* @host_ptimer_irq, align 8
  %112 = call i32 (...) @kvm_get_running_vcpus()
  %113 = call i32 @irq_set_vcpu_affinity(i64 %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %138

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %107
  %120 = load i64, i64* @host_ptimer_irq, align 8
  %121 = call i32 @kvm_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i64 %120)
  br label %133

122:                                              ; preds = %71
  %123 = call i64 (...) @has_vhe()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.arch_timer_kvm_info*, %struct.arch_timer_kvm_info** %4, align 8
  %127 = getelementptr inbounds %struct.arch_timer_kvm_info, %struct.arch_timer_kvm_info* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (i8*, ...) @kvm_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i64 %128)
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %138

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %119
  %134 = load i32, i32* @CPUHP_AP_KVM_ARM_TIMER_STARTING, align 4
  %135 = load i32, i32* @kvm_timer_starting_cpu, align 4
  %136 = load i32, i32* @kvm_timer_dying_cpu, align 4
  %137 = call i32 @cpuhp_setup_state(i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %135, i32 %136)
  store i32 0, i32* %2, align 4
  br label %143

138:                                              ; preds = %125, %116, %67
  %139 = load i64, i64* @host_vtimer_irq, align 8
  %140 = call i32 (...) @kvm_get_running_vcpus()
  %141 = call i32 @free_percpu_irq(i64 %139, i32 %140)
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %138, %133, %102, %53, %22, %13
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.arch_timer_kvm_info* @arch_timer_get_kvm_info(...) #1

declare dso_local i32 @kvm_err(i8*, ...) #1

declare dso_local i64 @irq_get_trigger_type(i64) #1

declare dso_local i32 @request_percpu_irq(i64, i32, i8*, i32) #1

declare dso_local i32 @kvm_get_running_vcpus(...) #1

declare dso_local i32 @irq_set_vcpu_affinity(i64, i32) #1

declare dso_local i32 @static_branch_enable(i32*) #1

declare dso_local i32 @kvm_debug(i8*, i64) #1

declare dso_local i64 @has_vhe(...) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32, i32) #1

declare dso_local i32 @free_percpu_irq(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
