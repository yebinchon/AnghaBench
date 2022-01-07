; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_basebackup.c_throttle.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_basebackup.c_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@throttling_counter = common dso_local global i64 0, align 8
@throttling_sample = common dso_local global i64 0, align 8
@elapsed_min_unit = common dso_local global i64 0, align 8
@throttled_last = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_BASE_BACKUP_THROTTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throttle(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* @throttling_counter, align 8
  %8 = icmp ult i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %68

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @throttling_counter, align 8
  %13 = add i64 %12, %11
  store i64 %13, i64* @throttling_counter, align 8
  %14 = load i64, i64* @throttling_counter, align 8
  %15 = load i64, i64* @throttling_sample, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %68

18:                                               ; preds = %10
  %19 = load i64, i64* @elapsed_min_unit, align 8
  %20 = load i64, i64* @throttling_counter, align 8
  %21 = load i64, i64* @throttling_sample, align 8
  %22 = udiv i64 %20, %21
  %23 = mul i64 %19, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %62, %18
  %26 = call i32 (...) @GetCurrentTimestamp()
  %27 = load i32, i32* @throttled_last, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %63

35:                                               ; preds = %25
  %36 = load i32, i32* @MyLatch, align 4
  %37 = call i32 @ResetLatch(i32 %36)
  %38 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %39 = load i32, i32* @MyLatch, align 4
  %40 = load i32, i32* @WL_LATCH_SET, align 4
  %41 = load i32, i32* @WL_TIMEOUT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 1000
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* @WAIT_EVENT_BASE_BACKUP_THROTTLE, align 4
  %49 = call i32 @WaitLatch(i32 %39, i32 %44, i64 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @WL_LATCH_SET, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  %55 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %56

56:                                               ; preds = %54, %35
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @WL_TIMEOUT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %63

62:                                               ; preds = %56
  br label %25

63:                                               ; preds = %61, %34
  %64 = load i64, i64* @throttling_sample, align 8
  %65 = load i64, i64* @throttling_counter, align 8
  %66 = urem i64 %65, %64
  store i64 %66, i64* @throttling_counter, align 8
  %67 = call i32 (...) @GetCurrentTimestamp()
  store i32 %67, i32* @throttled_last, align 4
  br label %68

68:                                               ; preds = %63, %17, %9
  ret void
}

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @WaitLatch(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
