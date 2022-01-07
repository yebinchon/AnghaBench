; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/xulkal/extr_custom_tap_dance.c_process_custom_tap_dance.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/xulkal/extr_custom_tap_dance.c_process_custom_tap_dance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@TD_MIN = common dso_local global i64 0, align 8
@TD_MAX = common dso_local global i64 0, align 8
@td_keycode = common dso_local global i64 0, align 8
@td_timer = common dso_local global i64 0, align 8
@TAPPING_TERM = common dso_local global i64 0, align 8
@KC_TRANSPARENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_custom_tap_dance(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i64, i64* @TD_MIN, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp sle i64 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @TD_MAX, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load i64, i64* @td_keycode, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @td_timer, align 8
  %25 = call i64 @timer_expired(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23, %19
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* @td_keycode, align 8
  %29 = call i64 (...) @timer_read()
  %30 = load i64, i64* @TAPPING_TERM, align 8
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* @td_timer, align 8
  br label %34

32:                                               ; preds = %23
  %33 = call i32 @run_custom_tap_dance(i32 1)
  br label %34

34:                                               ; preds = %32, %27
  br label %35

35:                                               ; preds = %34, %13
  store i32 0, i32* %3, align 4
  br label %43

36:                                               ; preds = %9, %2
  %37 = load i64, i64* @td_keycode, align 8
  %38 = load i64, i64* @KC_TRANSPARENT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @run_custom_tap_dance(i32 0)
  br label %42

42:                                               ; preds = %40, %36
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @timer_expired(i64) #1

declare dso_local i64 @timer_read(...) #1

declare dso_local i32 @run_custom_tap_dance(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
