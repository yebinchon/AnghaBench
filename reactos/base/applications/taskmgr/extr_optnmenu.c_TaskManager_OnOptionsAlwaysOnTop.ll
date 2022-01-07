; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_optnmenu.c_TaskManager_OnOptionsAlwaysOnTop.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_optnmenu.c_TaskManager_OnOptionsAlwaysOnTop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hMainWnd = common dso_local global i32 0, align 4
@OPTIONS_MENU_INDEX = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_TOPMOST = common dso_local global i32 0, align 4
@ID_OPTIONS_ALWAYSONTOP = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_UNCHECKED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TaskManagerSettings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HWND_NOTOPMOST = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HWND_TOPMOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TaskManager_OnOptionsAlwaysOnTop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @hMainWnd, align 4
  %4 = call i32 @GetMenu(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @OPTIONS_MENU_INDEX, align 4
  %7 = call i32 @GetSubMenu(i32 %5, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @hMainWnd, align 4
  %9 = load i32, i32* @GWL_EXSTYLE, align 4
  %10 = call i32 @GetWindowLongPtrW(i32 %8, i32 %9)
  %11 = load i32, i32* @WS_EX_TOPMOST, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @ID_OPTIONS_ALWAYSONTOP, align 4
  %17 = load i32, i32* @MF_BYCOMMAND, align 4
  %18 = load i32, i32* @MF_UNCHECKED, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @CheckMenuItem(i32 %15, i32 %16, i32 %19)
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TaskManagerSettings, i32 0, i32 0), align 4
  %22 = load i32, i32* @hMainWnd, align 4
  %23 = load i32, i32* @HWND_NOTOPMOST, align 4
  %24 = load i32, i32* @SWP_NOMOVE, align 4
  %25 = load i32, i32* @SWP_NOSIZE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @SetWindowPos(i32 %22, i32 %23, i32 0, i32 0, i32 0, i32 0, i32 %26)
  br label %42

28:                                               ; preds = %0
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @ID_OPTIONS_ALWAYSONTOP, align 4
  %31 = load i32, i32* @MF_BYCOMMAND, align 4
  %32 = load i32, i32* @MF_CHECKED, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @CheckMenuItem(i32 %29, i32 %30, i32 %33)
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TaskManagerSettings, i32 0, i32 0), align 4
  %36 = load i32, i32* @hMainWnd, align 4
  %37 = load i32, i32* @HWND_TOPMOST, align 4
  %38 = load i32, i32* @SWP_NOMOVE, align 4
  %39 = load i32, i32* @SWP_NOSIZE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @SetWindowPos(i32 %36, i32 %37, i32 0, i32 0, i32 0, i32 0, i32 %40)
  br label %42

42:                                               ; preds = %28, %14
  ret void
}

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @GetWindowLongPtrW(i32, i32) #1

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
