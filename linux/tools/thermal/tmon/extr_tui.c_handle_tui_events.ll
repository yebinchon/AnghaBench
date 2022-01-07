; ModuleID = '/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_handle_tui_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/thermal/tmon/extr_tui.c_handle_tui_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cooling_device_window = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@tmon_exit = common dso_local global i32 0, align 4
@data_panel = common dso_local global i32 0, align 4
@dialogue_panel = common dso_local global i32* null, align 8
@dialogue_window = common dso_local global i32 0, align 4
@input_lock = common dso_local global i32 0, align 4
@dialogue_on = common dso_local global i32 0, align 4
@top = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @handle_tui_events(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @cooling_device_window, align 4
  %5 = load i32, i32* @TRUE, align 4
  %6 = call i32 @keypad(i32 %4, i32 %5)
  br label %7

7:                                                ; preds = %64, %28, %1
  %8 = load i32, i32* @cooling_device_window, align 4
  %9 = call i32 @wgetch(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @EOF, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %68

12:                                               ; preds = %7
  %13 = load i32, i32* @tmon_exit, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %68

16:                                               ; preds = %12
  %17 = load i32, i32* @data_panel, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32*, i32** @dialogue_panel, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* @cooling_device_window, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @dialogue_window, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %22, %19, %16
  br label %7

29:                                               ; preds = %25
  %30 = call i32 @pthread_mutex_lock(i32* @input_lock)
  %31 = load i32, i32* @dialogue_on, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @handle_input_choice(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 113
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 81
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %33
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i32, i32* %3, align 4
  switch i32 %44, label %64 [
    i32 128, label %45
    i32 9, label %48
    i32 113, label %63
    i32 81, label %63
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* @cooling_device_window, align 4
  %47 = call i32 @box(i32 %46, i32 10, i32 0)
  br label %64

48:                                               ; preds = %43
  %49 = load i32*, i32** @top, align 8
  %50 = call i64 @panel_userptr(i32* %49)
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** @top, align 8
  %52 = load i32*, i32** @top, align 8
  %53 = call i32 @top_panel(i32* %52)
  %54 = load i32*, i32** @top, align 8
  %55 = load i32*, i32** @dialogue_panel, align 8
  %56 = icmp eq i32* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  store i32 1, i32* @dialogue_on, align 4
  %58 = call i32 (...) @show_dialogue()
  br label %62

59:                                               ; preds = %48
  store i32 0, i32* @dialogue_on, align 4
  %60 = call i32 (...) @show_data_w()
  %61 = call i32 (...) @show_control_w()
  br label %62

62:                                               ; preds = %59, %57
  br label %64

63:                                               ; preds = %43, %43
  store i32 1, i32* @tmon_exit, align 4
  br label %64

64:                                               ; preds = %43, %63, %62, %45
  %65 = call i32 (...) @update_panels()
  %66 = call i32 (...) @doupdate()
  %67 = call i32 @pthread_mutex_unlock(i32* @input_lock)
  br label %7

68:                                               ; preds = %15, %7
  %69 = load i8*, i8** %2, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8*, i8** %2, align 8
  %73 = bitcast i8* %72 to i32*
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  ret i8* null
}

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @wgetch(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @handle_input_choice(i32) #1

declare dso_local i32 @box(i32, i32, i32) #1

declare dso_local i64 @panel_userptr(i32*) #1

declare dso_local i32 @top_panel(i32*) #1

declare dso_local i32 @show_dialogue(...) #1

declare dso_local i32 @show_data_w(...) #1

declare dso_local i32 @show_control_w(...) #1

declare dso_local i32 @update_panels(...) #1

declare dso_local i32 @doupdate(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
