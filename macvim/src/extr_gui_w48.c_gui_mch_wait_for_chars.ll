; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_w48.c_gui_mch_wait_for_chars.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_w48.c_gui_mch_wait_for_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@s_timed_out = common dso_local global i8* null, align 8
@s_busy_processing = common dso_local global i64 0, align 8
@FAIL = common dso_local global i32 0, align 4
@_OnTimer = common dso_local global i64 0, align 8
@s_wait_timer = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@allow_scrollbar = common dso_local global i8* null, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@s_need_activate = common dso_local global i8* null, align 8
@s_hwnd = common dso_local global i32 0, align 4
@WM_TIMER = common dso_local global i32 0, align 4
@PM_REMOVE = common dso_local global i32 0, align 4
@s_getting_focus = common dso_local global i32 0, align 4
@s_button_pending = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_wait_for_chars(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i8*, i8** @FALSE, align 8
  store i8* %6, i8** @s_timed_out, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i64, i64* @s_busy_processing, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @FAIL, align 4
  store i32 %13, i32* %2, align 4
  br label %80

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @_OnTimer, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @SetTimer(i32* null, i32 0, i64 %16, i32 %18)
  store i64 %19, i64* @s_wait_timer, align 8
  br label %20

20:                                               ; preds = %14, %1
  %21 = load i8*, i8** @TRUE, align 8
  store i8* %21, i8** @allow_scrollbar, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %76, %20
  %24 = load i8*, i8** @s_timed_out, align 8
  %25 = icmp ne i8* %24, null
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %77

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @gui_mch_start_blink()
  br label %38

36:                                               ; preds = %31
  %37 = call i32 (...) @gui_mch_stop_blink()
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %27
  %41 = load i8*, i8** @s_need_activate, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @s_hwnd, align 4
  %45 = call i32 @SetActiveWindow(i32 %44)
  %46 = load i8*, i8** @FALSE, align 8
  store i8* %46, i8** @s_need_activate, align 8
  br label %47

47:                                               ; preds = %43, %40
  %48 = call i32 (...) @process_message()
  %49 = call i64 (...) @input_available()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  %52 = load i64, i64* @s_wait_timer, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i8*, i8** @s_timed_out, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* @s_wait_timer, align 8
  %59 = call i32 @KillTimer(i32* null, i64 %58)
  br label %60

60:                                               ; preds = %67, %57
  %61 = load i32, i32* @s_hwnd, align 4
  %62 = load i32, i32* @WM_TIMER, align 4
  %63 = load i32, i32* @WM_TIMER, align 4
  %64 = load i32, i32* @PM_REMOVE, align 4
  %65 = call i64 @pPeekMessage(i32* %4, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %60

68:                                               ; preds = %60
  store i64 0, i64* @s_wait_timer, align 8
  br label %69

69:                                               ; preds = %68, %54, %51
  %70 = load i8*, i8** @FALSE, align 8
  store i8* %70, i8** @allow_scrollbar, align 8
  %71 = load i32, i32* @s_getting_focus, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  store i32 -1, i32* @s_button_pending, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i32, i32* @OK, align 4
  store i32 %75, i32* %2, align 4
  br label %80

76:                                               ; preds = %47
  br label %23

77:                                               ; preds = %23
  %78 = load i8*, i8** @FALSE, align 8
  store i8* %78, i8** @allow_scrollbar, align 8
  %79 = load i32, i32* @FAIL, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %77, %74, %12
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @SetTimer(i32*, i32, i64, i32) #1

declare dso_local i32 @gui_mch_start_blink(...) #1

declare dso_local i32 @gui_mch_stop_blink(...) #1

declare dso_local i32 @SetActiveWindow(i32) #1

declare dso_local i32 @process_message(...) #1

declare dso_local i64 @input_available(...) #1

declare dso_local i32 @KillTimer(i32*, i64) #1

declare dso_local i64 @pPeekMessage(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
