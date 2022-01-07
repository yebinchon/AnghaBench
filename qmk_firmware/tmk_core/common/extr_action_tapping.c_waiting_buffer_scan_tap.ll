; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action_tapping.c_waiting_buffer_scan_tap.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_action_tapping.c_waiting_buffer_scan_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_13__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@tapping_key = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@waiting_buffer_tail = common dso_local global i32 0, align 4
@waiting_buffer_head = common dso_local global i32 0, align 4
@waiting_buffer = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"waiting_buffer_scan_tap: found at [\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@WAITING_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waiting_buffer_scan_tap() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tapping_key, i32 0, i32 0, i32 0), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %63

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tapping_key, i32 0, i32 1, i32 0), align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  br label %63

9:                                                ; preds = %5
  %10 = load i32, i32* @waiting_buffer_tail, align 4
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %58, %9
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @waiting_buffer_head, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @waiting_buffer, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_TAPPING_KEY(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %15
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @waiting_buffer, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %25
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @waiting_buffer, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = bitcast %struct.TYPE_13__* %39 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = call i64 @WITHIN_TAPPING_TERM(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %34
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tapping_key, i32 0, i32 0, i32 0), align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** @waiting_buffer, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = call i32 @process_record(%struct.TYPE_12__* @tapping_key)
  %52 = call i32 @debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @debug_dec(i32 %53)
  %55 = call i32 @debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 (...) @debug_waiting_buffer()
  br label %63

57:                                               ; preds = %34, %25, %15
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @WAITING_BUFFER_SIZE, align 4
  %62 = srem i32 %60, %61
  store i32 %62, i32* %1, align 4
  br label %11

63:                                               ; preds = %4, %8, %44, %11
  ret void
}

declare dso_local i64 @IS_TAPPING_KEY(i32) #1

declare dso_local i64 @WITHIN_TAPPING_TERM(i64) #1

declare dso_local i32 @process_record(%struct.TYPE_12__*) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @debug_dec(i32) #1

declare dso_local i32 @debug_waiting_buffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
