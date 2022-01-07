; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_handle_window_cb.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_photon.c_gui_ph_handle_window_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@MOUSE_SHOW = common dso_local global i32 0, align 4
@Ph_WM_EVSTATE_FOCUS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@Pt_ARG_WIDTH = common dso_local global i32 0, align 4
@Pt_ARG_HEIGHT = common dso_local global i32 0, align 4
@RESIZE_BOTH = common dso_local global i32 0, align 4
@is_ignore_draw = common dso_local global i32 0, align 4
@Pt_CONTINUE = common dso_local global i32 0, align 4
@pg_margin_bottom = common dso_local global i64 0, align 8
@pg_margin_left = common dso_local global i64 0, align 8
@pg_margin_right = common dso_local global i64 0, align 8
@pg_margin_top = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_5__*)* @gui_ph_handle_window_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gui_ph_handle_window_cb(i32* %0, i8* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %56 [
    i32 130, label %16
    i32 129, label %18
    i32 128, label %35
  ]

16:                                               ; preds = %3
  %17 = call i32 (...) @gui_shell_closed()
  br label %57

18:                                               ; preds = %3
  %19 = load i32, i32* @MOUSE_SHOW, align 4
  %20 = call i32 @gui_mch_mousehide(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @Ph_WM_EVSTATE_FOCUS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @gui_focus_change(i32 %27)
  %29 = call i32 (...) @gui_mch_start_blink()
  br label %34

30:                                               ; preds = %18
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @gui_focus_change(i32 %31)
  %33 = call i32 (...) @gui_mch_stop_blink()
  br label %34

34:                                               ; preds = %30, %26
  br label %57

35:                                               ; preds = %3
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 1), align 4
  %37 = load i32, i32* @Pt_ARG_WIDTH, align 4
  %38 = call i32 @PtGetResource(i32 %36, i32 %37, i32** %8, i32 0)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 1), align 4
  %40 = load i32, i32* @Pt_ARG_HEIGHT, align 4
  %41 = call i32 @PtGetResource(i32 %39, i32 %40, i32** %9, i32 0)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gui_resize_shell(i32 %43, i32 %45)
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32, i32* @RESIZE_BOTH, align 4
  %50 = call i32 @gui_set_shellsize(i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* @is_ignore_draw, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 0), align 4
  %53 = call i32 @PtEndFlux(i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 0), align 4
  %55 = call i32 @PtContainerRelease(i32 %54)
  br label %57

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %56, %35, %34, %16
  %58 = load i32, i32* @Pt_CONTINUE, align 4
  ret i32 %58
}

declare dso_local i32 @gui_shell_closed(...) #1

declare dso_local i32 @gui_mch_mousehide(i32) #1

declare dso_local i32 @gui_focus_change(i32) #1

declare dso_local i32 @gui_mch_start_blink(...) #1

declare dso_local i32 @gui_mch_stop_blink(...) #1

declare dso_local i32 @PtGetResource(i32, i32, i32**, i32) #1

declare dso_local i32 @gui_resize_shell(i32, i32) #1

declare dso_local i32 @gui_set_shellsize(i32, i32, i32) #1

declare dso_local i32 @PtEndFlux(i32) #1

declare dso_local i32 @PtContainerRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
