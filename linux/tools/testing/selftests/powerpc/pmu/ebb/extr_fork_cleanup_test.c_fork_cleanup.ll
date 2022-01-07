; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_fork_cleanup_test.c_fork_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_fork_cleanup_test.c_fork_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@standard_ebb_callee = common dso_local global i32 0, align 4
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@MMCR0_FC = common dso_local global i32 0, align 4
@SPRN_PMC1 = common dso_local global i32 0, align 4
@sample_period = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fork_cleanup() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @ebb_is_supported()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @SKIP_IF(i32 %5)
  %7 = call i32 @event_init_named(i32* @event, i32 65566, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @event_leader_ebb_init(i32* @event)
  %9 = call i32 @event_open(i32* @event)
  %10 = call i32 @FAIL_IF(i32 %9)
  %11 = call i32 @ebb_enable_pmc_counting(i32 1)
  %12 = load i32, i32* @standard_ebb_callee, align 4
  %13 = call i32 @setup_ebb_handler(i32 %12)
  %14 = call i32 (...) @ebb_global_enable()
  %15 = call i32 @ebb_event_enable(i32* @event)
  %16 = call i32 @FAIL_IF(i32 %15)
  %17 = load i32, i32* @SPRN_MMCR0, align 4
  %18 = load i32, i32* @MMCR0_FC, align 4
  %19 = call i32 @mtspr(i32 %17, i32 %18)
  %20 = load i32, i32* @SPRN_PMC1, align 4
  %21 = load i32, i32* @sample_period, align 4
  %22 = call i32 @pmc_sample_period(i32 %21)
  %23 = call i32 @mtspr(i32 %20, i32 %22)
  %24 = call i64 (...) @fork()
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %0
  %28 = call i32 (...) @child()
  %29 = call i32 @exit(i32 %28) #3
  unreachable

30:                                               ; preds = %0
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @wait_for_child(i64 %31)
  %33 = call i32 @FAIL_IF(i32 %32)
  %34 = call i32 @event_close(i32* @event)
  ret i32 0
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @ebb_is_supported(...) #1

declare dso_local i32 @event_init_named(i32*, i32, i8*) #1

declare dso_local i32 @event_leader_ebb_init(i32*) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @event_open(i32*) #1

declare dso_local i32 @ebb_enable_pmc_counting(i32) #1

declare dso_local i32 @setup_ebb_handler(i32) #1

declare dso_local i32 @ebb_global_enable(...) #1

declare dso_local i32 @ebb_event_enable(i32*) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @pmc_sample_period(i32) #1

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @child(...) #1

declare dso_local i32 @wait_for_child(i64) #1

declare dso_local i32 @event_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
