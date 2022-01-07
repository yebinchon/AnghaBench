; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_optnmenu.c_TaskManager_OnOptionsHideWhenMinimized.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_optnmenu.c_TaskManager_OnOptionsHideWhenMinimized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hMainWnd = common dso_local global i32 0, align 4
@OPTIONS_MENU_INDEX = common dso_local global i32 0, align 4
@ID_OPTIONS_HIDEWHENMINIMIZED = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@MF_UNCHECKED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TaskManagerSettings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TaskManager_OnOptionsHideWhenMinimized() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @hMainWnd, align 4
  %4 = call i32 @GetMenu(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @OPTIONS_MENU_INDEX, align 4
  %7 = call i32 @GetSubMenu(i32 %5, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @ID_OPTIONS_HIDEWHENMINIMIZED, align 4
  %10 = load i32, i32* @MF_BYCOMMAND, align 4
  %11 = call i32 @GetMenuState(i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* @MF_CHECKED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @ID_OPTIONS_HIDEWHENMINIMIZED, align 4
  %18 = load i32, i32* @MF_BYCOMMAND, align 4
  %19 = load i32, i32* @MF_UNCHECKED, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @CheckMenuItem(i32 %16, i32 %17, i32 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TaskManagerSettings, i32 0, i32 0), align 4
  br label %31

23:                                               ; preds = %0
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @ID_OPTIONS_HIDEWHENMINIMIZED, align 4
  %26 = load i32, i32* @MF_BYCOMMAND, align 4
  %27 = load i32, i32* @MF_CHECKED, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @CheckMenuItem(i32 %24, i32 %25, i32 %28)
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TaskManagerSettings, i32 0, i32 0), align 4
  br label %31

31:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @GetMenuState(i32, i32, i32) #1

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
