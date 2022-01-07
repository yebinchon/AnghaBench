; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_multi_ebb_procs_test.c_cycles_child.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_multi_ebb_procs_test.c_cycles_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SIGINT = common dso_local global i32 0, align 4
@sigint_action = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@standard_ebb_callee = common dso_local global i32 0, align 4
@SPRN_PMC1 = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@child_should_exit = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cycles_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cycles_child() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.event, align 4
  %3 = load i32, i32* @SIGINT, align 4
  %4 = call i64 @sigaction(i32 %3, i32* @sigint_action, i32* null)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %49

8:                                                ; preds = %0
  %9 = call i32 @event_init_named(%struct.event* %2, i32 65566, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @event_leader_ebb_init(%struct.event* %2)
  %11 = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.event, %struct.event* %2, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = call i32 @event_open(%struct.event* %2)
  %18 = call i32 @FAIL_IF(i32 %17)
  %19 = call i32 @ebb_enable_pmc_counting(i32 1)
  %20 = load i32, i32* @standard_ebb_callee, align 4
  %21 = call i32 @setup_ebb_handler(i32 %20)
  %22 = call i32 (...) @ebb_global_enable()
  %23 = call i32 @ebb_event_enable(%struct.event* %2)
  %24 = call i32 @FAIL_IF(i32 %23)
  %25 = load i32, i32* @SPRN_PMC1, align 4
  %26 = load i32, i32* @sample_period, align 4
  %27 = call i32 @pmc_sample_period(i32 %26)
  %28 = call i32 @mtspr(i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %33, %8
  %30 = load i32, i32* @child_should_exit, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = call i32 (...) @core_busy_loop()
  %35 = call i32 @FAIL_IF(i32 %34)
  %36 = call i32 (...) @ebb_check_mmcr0()
  %37 = call i32 @FAIL_IF(i32 %36)
  br label %29

38:                                               ; preds = %29
  %39 = call i32 (...) @ebb_global_disable()
  %40 = call i32 (...) @ebb_freeze_pmcs()
  %41 = load i32, i32* @sample_period, align 4
  %42 = call i32 @count_pmc(i32 1, i32 %41)
  %43 = call i32 (...) @dump_summary_ebb_state()
  %44 = call i32 @event_close(%struct.event* %2)
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @FAIL_IF(i32 %47)
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %38, %6
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i64 @sigaction(i32, i32*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @event_init_named(%struct.event*, i32, i8*) #1

declare dso_local i32 @event_leader_ebb_init(%struct.event*) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @event_open(%struct.event*) #1

declare dso_local i32 @ebb_enable_pmc_counting(i32) #1

declare dso_local i32 @setup_ebb_handler(i32) #1

declare dso_local i32 @ebb_global_enable(...) #1

declare dso_local i32 @ebb_event_enable(%struct.event*) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @pmc_sample_period(i32) #1

declare dso_local i32 @core_busy_loop(...) #1

declare dso_local i32 @ebb_check_mmcr0(...) #1

declare dso_local i32 @ebb_global_disable(...) #1

declare dso_local i32 @ebb_freeze_pmcs(...) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @dump_summary_ebb_state(...) #1

declare dso_local i32 @event_close(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
