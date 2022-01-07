; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_multi_counter_test.c_multi_counter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_multi_counter_test.c_multi_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"PM_CMPLU_STALL_THRD\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"PM_CMPLU_STALL_FXU\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"PM_CMPLU_STALL_OTHER_CMPL\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PM_CMPLU_STALL\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"PM_RUN_CYC\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"PM_RUN_INST_CMPL\00", align 1
@standard_ebb_callee = common dso_local global i32 0, align 4
@PERF_EVENT_IOC_ENABLE = common dso_local global i32 0, align 4
@PERF_IOC_FLAG_GROUP = common dso_local global i32 0, align 4
@SPRN_PMC1 = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@SPRN_PMC2 = common dso_local global i32 0, align 4
@SPRN_PMC3 = common dso_local global i32 0, align 4
@SPRN_PMC4 = common dso_local global i32 0, align 4
@SPRN_PMC5 = common dso_local global i32 0, align 4
@SPRN_PMC6 = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @multi_counter() #0 {
  %1 = alloca [6 x %struct.event], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @ebb_is_supported()
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @SKIP_IF(i32 %7)
  %9 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 0
  %10 = call i32 @event_init_named(%struct.event* %9, i32 65564, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 1
  %12 = call i32 @event_init_named(%struct.event* %11, i32 184342, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %13 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 2
  %14 = call i32 @event_init_named(%struct.event* %13, i32 196614, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %15 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 3
  %16 = call i32 @event_init_named(%struct.event* %15, i32 262154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %17 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 4
  %18 = call i32 @event_init_named(%struct.event* %17, i32 393460, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %19 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 5
  %20 = call i32 @event_init_named(%struct.event* %19, i32 327930, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %21 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 0
  %22 = call i32 @event_leader_ebb_init(%struct.event* %21)
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %31, %0
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 %28
  %30 = call i32 @event_ebb_init(%struct.event* %29)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %23

34:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %67, %34
  %36 = load i32, i32* %2, align 4
  %37 = icmp slt i32 %36, 6
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.event, %struct.event* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.event, %struct.event* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.event, %struct.event* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 %55
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @event_open_with_group(%struct.event* %56, i32 %57)
  %59 = call i32 @FAIL_IF(i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %38
  %63 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 0
  %64 = getelementptr inbounds %struct.event, %struct.event* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 16
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %35

70:                                               ; preds = %35
  %71 = call i32 @ebb_enable_pmc_counting(i32 1)
  %72 = call i32 @ebb_enable_pmc_counting(i32 2)
  %73 = call i32 @ebb_enable_pmc_counting(i32 3)
  %74 = call i32 @ebb_enable_pmc_counting(i32 4)
  %75 = call i32 @ebb_enable_pmc_counting(i32 5)
  %76 = call i32 @ebb_enable_pmc_counting(i32 6)
  %77 = load i32, i32* @standard_ebb_callee, align 4
  %78 = call i32 @setup_ebb_handler(i32 %77)
  %79 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 0
  %80 = getelementptr inbounds %struct.event, %struct.event* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 16
  %82 = load i32, i32* @PERF_EVENT_IOC_ENABLE, align 4
  %83 = load i32, i32* @PERF_IOC_FLAG_GROUP, align 4
  %84 = call i32 @ioctl(i32 %81, i32 %82, i32 %83)
  %85 = call i32 @FAIL_IF(i32 %84)
  %86 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 0
  %87 = call i32 @event_read(%struct.event* %86)
  %88 = call i32 @FAIL_IF(i32 %87)
  %89 = call i32 (...) @ebb_global_enable()
  %90 = load i32, i32* @SPRN_PMC1, align 4
  %91 = load i32, i32* @sample_period, align 4
  %92 = call i32 @pmc_sample_period(i32 %91)
  %93 = call i32 @mtspr(i32 %90, i32 %92)
  %94 = load i32, i32* @SPRN_PMC2, align 4
  %95 = load i32, i32* @sample_period, align 4
  %96 = call i32 @pmc_sample_period(i32 %95)
  %97 = call i32 @mtspr(i32 %94, i32 %96)
  %98 = load i32, i32* @SPRN_PMC3, align 4
  %99 = load i32, i32* @sample_period, align 4
  %100 = call i32 @pmc_sample_period(i32 %99)
  %101 = call i32 @mtspr(i32 %98, i32 %100)
  %102 = load i32, i32* @SPRN_PMC4, align 4
  %103 = load i32, i32* @sample_period, align 4
  %104 = call i32 @pmc_sample_period(i32 %103)
  %105 = call i32 @mtspr(i32 %102, i32 %104)
  %106 = load i32, i32* @SPRN_PMC5, align 4
  %107 = load i32, i32* @sample_period, align 4
  %108 = call i32 @pmc_sample_period(i32 %107)
  %109 = call i32 @mtspr(i32 %106, i32 %108)
  %110 = load i32, i32* @SPRN_PMC6, align 4
  %111 = load i32, i32* @sample_period, align 4
  %112 = call i32 @pmc_sample_period(i32 %111)
  %113 = call i32 @mtspr(i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %117, %70
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %116 = icmp slt i32 %115, 50
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = call i32 (...) @core_busy_loop()
  %119 = call i32 @FAIL_IF(i32 %118)
  %120 = call i32 (...) @ebb_check_mmcr0()
  %121 = call i32 @FAIL_IF(i32 %120)
  br label %114

122:                                              ; preds = %114
  %123 = call i32 (...) @ebb_global_disable()
  %124 = call i32 (...) @ebb_freeze_pmcs()
  %125 = load i32, i32* @sample_period, align 4
  %126 = call i32 @count_pmc(i32 1, i32 %125)
  %127 = load i32, i32* @sample_period, align 4
  %128 = call i32 @count_pmc(i32 2, i32 %127)
  %129 = load i32, i32* @sample_period, align 4
  %130 = call i32 @count_pmc(i32 3, i32 %129)
  %131 = load i32, i32* @sample_period, align 4
  %132 = call i32 @count_pmc(i32 4, i32 %131)
  %133 = load i32, i32* @sample_period, align 4
  %134 = call i32 @count_pmc(i32 5, i32 %133)
  %135 = load i32, i32* @sample_period, align 4
  %136 = call i32 @count_pmc(i32 6, i32 %135)
  %137 = call i32 (...) @dump_ebb_state()
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %146, %122
  %139 = load i32, i32* %2, align 4
  %140 = icmp slt i32 %139, 6
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [6 x %struct.event], [6 x %struct.event]* %1, i64 0, i64 %143
  %145 = call i32 @event_close(%struct.event* %144)
  br label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %2, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %2, align 4
  br label %138

149:                                              ; preds = %138
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 4
  %151 = icmp eq i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @FAIL_IF(i32 %152)
  ret i32 0
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

declare dso_local i32 @event_init_named(%struct.event*, i32, i8*) #1

declare dso_local i32 @event_leader_ebb_init(%struct.event*) #1

declare dso_local i32 @event_ebb_init(%struct.event*) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @event_open_with_group(%struct.event*, i32) #1

declare dso_local i32 @ebb_enable_pmc_counting(i32) #1

declare dso_local i32 @setup_ebb_handler(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @event_read(%struct.event*) #1

declare dso_local i32 @ebb_global_enable(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @pmc_sample_period(i32) #1

declare dso_local i32 @core_busy_loop(...) #1

declare dso_local i32 @ebb_check_mmcr0(...) #1

declare dso_local i32 @ebb_global_disable(...) #1

declare dso_local i32 @ebb_freeze_pmcs(...) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @dump_ebb_state(...) #1

declare dso_local i32 @event_close(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
