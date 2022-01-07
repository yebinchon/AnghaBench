; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_tap_dance.c_preprocess_tap_dance.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_tap_dance.c_preprocess_tap_dance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@highest_td = common dso_local global i32 0, align 4
@tap_dance_actions = common dso_local global %struct.TYPE_9__* null, align 8
@last_td = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preprocess_tap_dance(i64 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %61

13:                                               ; preds = %2
  %14 = load i32, i32* @highest_td, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %61

17:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %58, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @highest_td, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tap_dance_actions, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %5, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %22
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @last_td, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %58

44:                                               ; preds = %39, %32
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  %48 = load i64, i64* %3, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  store i64 %48, i64* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = call i32 @process_tap_dance_action_on_dance_finished(%struct.TYPE_9__* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = call i32 @reset_tap_dance(%struct.TYPE_11__* %55)
  br label %57

57:                                               ; preds = %44, %22
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %18

61:                                               ; preds = %12, %16, %18
  ret void
}

declare dso_local i32 @process_tap_dance_action_on_dance_finished(%struct.TYPE_9__*) #1

declare dso_local i32 @reset_tap_dance(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
