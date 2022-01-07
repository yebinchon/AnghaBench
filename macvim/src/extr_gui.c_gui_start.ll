; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui.c_gui_start.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui.c_gui_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@gui_start.recursive = internal global i32 0, align 4
@T_NAME = common dso_local global i32 0, align 4
@TMODE_COOK = common dso_local global i32 0, align 4
@full_screen = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TMODE_RAW = common dso_local global i32 0, align 4
@EVENT_GUIENTER = common dso_local global i32 0, align 4
@EVENT_GUIFAILED = common dso_local global i32 0, align 4
@GO_FORG = common dso_local global i32 0, align 4
@OK = common dso_local global i64 0, align 8
@curbuf = common dso_local global i32 0, align 4
@p_go = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_start() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @T_NAME, align 4
  %3 = call i32* @vim_strsave(i32 %2)
  store i32* %3, i32** %1, align 8
  %4 = load i32, i32* @TMODE_COOK, align 4
  %5 = call i32 @settmode(i32 %4)
  %6 = load i64, i64* @full_screen, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @cursor_on()
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* @full_screen, align 8
  %12 = load i32, i32* @gui_start.recursive, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @gui_start.recursive, align 4
  %14 = call i32 (...) @gui_attempt_start()
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @termcapinit(i32* %18)
  %20 = load i32, i32* @TMODE_RAW, align 4
  %21 = call i32 @settmode(i32 %20)
  br label %22

22:                                               ; preds = %17, %10
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @vim_free(i32* %23)
  %25 = load i32, i32* @gui_start.recursive, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @gui_start.recursive, align 4
  ret void
}

declare dso_local i32* @vim_strsave(i32) #1

declare dso_local i32 @settmode(i32) #1

declare dso_local i32 @cursor_on(...) #1

declare dso_local i32 @gui_attempt_start(...) #1

declare dso_local i32 @termcapinit(i32*) #1

declare dso_local i32 @vim_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
