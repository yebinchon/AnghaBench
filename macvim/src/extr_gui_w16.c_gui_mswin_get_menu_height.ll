; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_w16.c_gui_mswin_get_menu_height.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_w16.c_gui_mswin_get_menu_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@gui_mswin_get_menu_height.old_menu_height = internal global i32 -1, align 4
@gui = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@s_menuBar = common dso_local global i32 0, align 4
@SM_CYMENU = common dso_local global i32 0, align 4
@SM_CYFRAME = common dso_local global i32 0, align 4
@SM_CYCAPTION = common dso_local global i32 0, align 4
@s_hwnd = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RESIZE_VERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gui_mswin_get_menu_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gui_mswin_get_menu_height(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 1), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @s_menuBar, align 4
  %13 = call i32 @GetMenuItemCount(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %15

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %57

19:                                               ; preds = %15
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @SM_CYMENU, align 4
  %24 = call i32 @GetSystemMetrics(i32 %23)
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %19
  %26 = load i32, i32* @SM_CYFRAME, align 4
  %27 = call i32 @GetSystemMetrics(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @SM_CYCAPTION, align 4
  %29 = call i32 @GetSystemMetrics(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @s_hwnd, align 4
  %31 = call i32 @GetWindowRect(i32 %30, %struct.TYPE_5__* %5)
  %32 = load i32, i32* @s_hwnd, align 4
  %33 = call i32 @GetClientRect(i32 %32, %struct.TYPE_5__* %6)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %35, %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %40, %42
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 2, %44
  %46 = load i32, i32* @s_hwnd, align 4
  %47 = call i32 @IsZoomed(i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = mul nsw i32 %45, %50
  %52 = add nsw i32 %43, %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %38, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %25, %22
  br label %57

57:                                               ; preds = %56, %18
  %58 = load i32, i32* %2, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @gui_mswin_get_menu_height.old_menu_height, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* @gui_mswin_get_menu_height.old_menu_height, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i32, i32* @RESIZE_VERT, align 4
  %69 = call i32 @gui_set_shellsize(i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %60, %57
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @GetMenuItemCount(i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @IsZoomed(i32) #1

declare dso_local i32 @gui_set_shellsize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
