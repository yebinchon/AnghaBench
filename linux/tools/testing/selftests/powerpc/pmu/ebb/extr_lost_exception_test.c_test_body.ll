; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_lost_exception_test.c_test_body.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_lost_exception_test.c_test_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"instructions\00", align 1
@standard_ebb_callee = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@SPRN_PMC4 = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_body() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.event, align 4
  %5 = call i32 (...) @ebb_is_supported()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @SKIP_IF(i32 %8)
  %10 = call i32 @event_init_named(%struct.event* %4, i32 262146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @event_leader_ebb_init(%struct.event* %4)
  %12 = getelementptr inbounds %struct.event, %struct.event* %4, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.event, %struct.event* %4, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.event, %struct.event* %4, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 1, i32* %17, align 4
  %18 = call i32 @event_open(%struct.event* %4)
  %19 = call i32 @FAIL_IF(i32 %18)
  %20 = call i32 @ebb_enable_pmc_counting(i32 4)
  %21 = load i32, i32* @standard_ebb_callee, align 4
  %22 = call i32 @setup_ebb_handler(i32 %21)
  %23 = call i32 (...) @ebb_global_enable()
  %24 = call i32 @ebb_event_enable(%struct.event* %4)
  %25 = call i32 @FAIL_IF(i32 %24)
  store i32 400, i32* @sample_period, align 4
  store i32 400, i32* %3, align 4
  store i32 400, i32* %2, align 4
  %26 = load i32, i32* @SPRN_PMC4, align 4
  %27 = load i32, i32* @sample_period, align 4
  %28 = call i32 @pmc_sample_period(i32 %27)
  %29 = call i32 @mtspr(i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %58, %0
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %32 = icmp slt i32 %31, 1000000
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %39, %33
  %35 = load i32, i32* %1, align 4
  %36 = icmp slt i32 %35, 100000
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = call i32 (...) @sched_yield()
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %34

42:                                               ; preds = %34
  %43 = load i32, i32* @sample_period, align 4
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 200
  %46 = icmp sge i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %2, align 4
  store i32 %48, i32* @sample_period, align 4
  br label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @sample_period, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @sample_period, align 4
  br label %52

52:                                               ; preds = %49, %47
  %53 = load i32, i32* @sample_period, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @sample_period, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %52
  br label %30

59:                                               ; preds = %30
  %60 = call i32 (...) @ebb_freeze_pmcs()
  %61 = call i32 (...) @ebb_global_disable()
  %62 = load i32, i32* @sample_period, align 4
  %63 = call i32 @count_pmc(i32 4, i32 %62)
  %64 = load i32, i32* @SPRN_PMC4, align 4
  %65 = call i32 @mtspr(i32 %64, i32 57005)
  %66 = call i32 (...) @dump_summary_ebb_state()
  %67 = call i32 (...) @dump_ebb_hw_state()
  %68 = call i32 @event_close(%struct.event* %4)
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @FAIL_IF(i32 %71)
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %2, align 4
  %76 = sub nsw i32 %74, %75
  %77 = mul nsw i32 2, %76
  %78 = call i32 @ebb_check_count(i32 4, i32 %73, i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @FAIL_IF(i32 %81)
  ret i32 0
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

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

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @ebb_freeze_pmcs(...) #1

declare dso_local i32 @ebb_global_disable(...) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @dump_summary_ebb_state(...) #1

declare dso_local i32 @dump_ebb_hw_state(...) #1

declare dso_local i32 @event_close(%struct.event*) #1

declare dso_local i32 @ebb_check_count(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
