; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_back_to_back_ebbs_test.c_back_to_back_ebbs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_back_to_back_ebbs_test.c_back_to_back_ebbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@ebb_callee = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4
@SPRN_PMC1 = common dso_local global i32 0, align 4
@ebb_state = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@NUMBER_OF_EBBS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @back_to_back_ebbs() #0 {
  %1 = alloca %struct.event, align 4
  %2 = call i32 (...) @ebb_is_supported()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @SKIP_IF(i32 %5)
  %7 = call i32 @event_init_named(%struct.event* %1, i32 65566, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @event_leader_ebb_init(%struct.event* %1)
  %9 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.event, %struct.event* %1, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = call i32 @event_open(%struct.event* %1)
  %16 = call i32 @FAIL_IF(i32 %15)
  %17 = load i32, i32* @ebb_callee, align 4
  %18 = call i32 @setup_ebb_handler(i32 %17)
  %19 = call i32 @ebb_event_enable(%struct.event* %1)
  %20 = call i32 @FAIL_IF(i32 %19)
  store i32 5, i32* @sample_period, align 4
  %21 = call i32 (...) @ebb_freeze_pmcs()
  %22 = load i32, i32* @SPRN_PMC1, align 4
  %23 = load i32, i32* @sample_period, align 4
  %24 = call i32 @pmc_sample_period(i32 %23)
  %25 = call i32 @mtspr(i32 %22, i32 %24)
  %26 = call i32 (...) @ebb_global_enable()
  %27 = call i32 (...) @ebb_unfreeze_pmcs()
  br label %28

28:                                               ; preds = %32, %0
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 8
  %30 = load i64, i64* @NUMBER_OF_EBBS, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = call i32 (...) @core_busy_loop()
  %34 = call i32 @FAIL_IF(i32 %33)
  br label %28

35:                                               ; preds = %28
  %36 = call i32 (...) @ebb_global_disable()
  %37 = call i32 (...) @ebb_freeze_pmcs()
  %38 = load i32, i32* @sample_period, align 4
  %39 = call i32 @count_pmc(i32 1, i32 %38)
  %40 = call i32 (...) @dump_ebb_state()
  %41 = call i32 @event_close(%struct.event* %1)
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ebb_state, i32 0, i32 0, i32 0), align 8
  %43 = load i64, i64* @NUMBER_OF_EBBS, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @FAIL_IF(i32 %45)
  ret i32 0
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

declare dso_local i32 @event_init_named(%struct.event*, i32, i8*) #1

declare dso_local i32 @event_leader_ebb_init(%struct.event*) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @event_open(%struct.event*) #1

declare dso_local i32 @setup_ebb_handler(i32) #1

declare dso_local i32 @ebb_event_enable(%struct.event*) #1

declare dso_local i32 @ebb_freeze_pmcs(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @pmc_sample_period(i32) #1

declare dso_local i32 @ebb_global_enable(...) #1

declare dso_local i32 @ebb_unfreeze_pmcs(...) #1

declare dso_local i32 @core_busy_loop(...) #1

declare dso_local i32 @ebb_global_disable(...) #1

declare dso_local i32 @count_pmc(i32, i32) #1

declare dso_local i32 @dump_ebb_state(...) #1

declare dso_local i32 @event_close(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
