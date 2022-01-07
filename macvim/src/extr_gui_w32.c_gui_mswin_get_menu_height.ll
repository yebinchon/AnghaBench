; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_w32.c_gui_mswin_get_menu_height.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_w32.c_gui_mswin_get_menu_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@gui_mswin_get_menu_height.old_menu_height = internal global i32 -1, align 4
@gui = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
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
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 1), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @s_menuBar, align 4
  %15 = call i32 @GetMenuItemCount(i32 %14)
  store i32 %15, i32* %5, align 4
  br label %17

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %89

21:                                               ; preds = %17
  %22 = call i64 (...) @is_winnt_3()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 0), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @SM_CYMENU, align 4
  %29 = call i32 @GetSystemMetrics(i32 %28)
  store i32 %29, i32* %6, align 4
  br label %61

30:                                               ; preds = %24
  %31 = load i32, i32* @SM_CYFRAME, align 4
  %32 = call i32 @GetSystemMetrics(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @SM_CYCAPTION, align 4
  %34 = call i32 @GetSystemMetrics(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @s_hwnd, align 4
  %36 = call i32 @GetWindowRect(i32 %35, %struct.TYPE_6__* %7)
  %37 = load i32, i32* @s_hwnd, align 4
  %38 = call i32 @GetClientRect(i32 %37, %struct.TYPE_6__* %8)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %40, %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %45, %47
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 2, %49
  %51 = load i32, i32* @s_hwnd, align 4
  %52 = call i32 @IsZoomed(i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = mul nsw i32 %50, %55
  %57 = add nsw i32 %48, %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %43, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %30, %27
  br label %88

62:                                               ; preds = %21
  %63 = load i32, i32* @s_hwnd, align 4
  %64 = load i32, i32* @s_menuBar, align 4
  %65 = call i32 @GetMenuItemRect(i32 %63, i32 %64, i32 0, %struct.TYPE_6__* %3)
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 0), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %70, %72
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %87

75:                                               ; preds = %62
  %76 = load i32, i32* @s_hwnd, align 4
  %77 = load i32, i32* @s_menuBar, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @GetMenuItemRect(i32 %76, i32 %77, i32 %79, %struct.TYPE_6__* %4)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %82, %84
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %75, %68
  br label %88

88:                                               ; preds = %87, %61
  br label %89

89:                                               ; preds = %88, %20
  %90 = load i32, i32* %2, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @gui_mswin_get_menu_height.old_menu_height, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* @gui_mswin_get_menu_height.old_menu_height, align 4
  %98 = load i32, i32* @FALSE, align 4
  %99 = load i32, i32* @FALSE, align 4
  %100 = load i32, i32* @RESIZE_VERT, align 4
  %101 = call i32 @gui_set_shellsize(i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %92, %89
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @GetMenuItemCount(i32) #1

declare dso_local i64 @is_winnt_3(...) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @IsZoomed(i32) #1

declare dso_local i32 @GetMenuItemRect(i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @gui_set_shellsize(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
