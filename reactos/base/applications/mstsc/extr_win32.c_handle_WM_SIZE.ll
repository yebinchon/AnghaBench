; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_handle_WM_SIZE.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_win32.c_handle_WM_SIZE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@SIZE_MINIMIZED = common dso_local global i64 0, align 8
@g_wnd_cwidth = common dso_local global i64 0, align 8
@g_wnd_cheight = common dso_local global i64 0, align 8
@g_wnd_clip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@g_width = common dso_local global i64 0, align 8
@g_height = common dso_local global i64 0, align 8
@g_Wnd = common dso_local global i32 0, align 4
@SB_HORZ = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4
@g_xscroll = common dso_local global i32 0, align 4
@g_yscroll = common dso_local global i32 0, align 4
@SIZE_RESTORED = common dso_local global i64 0, align 8
@SIZE_MAXIMIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32)* @handle_WM_SIZE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_WM_SIZE(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @SIZE_MINIMIZED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @DefWindowProc(i32 %16, i32 %17, i64 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %94

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @LOWORD(i32 %22)
  store i64 %23, i64* @g_wnd_cwidth, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @HIWORD(i32 %24)
  store i64 %25, i64* @g_wnd_cheight, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_wnd_clip, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_wnd_clip, i32 0, i32 1), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_wnd_clip, i32 0, i32 0), align 8
  %27 = load i64, i64* @g_wnd_cwidth, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_wnd_clip, i32 0, i32 3), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_wnd_clip, i32 0, i32 1), align 8
  %30 = load i64, i64* @g_wnd_cheight, align 8
  %31 = add nsw i64 %29, %30
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_wnd_clip, i32 0, i32 2), align 8
  %32 = load i64, i64* @g_wnd_cwidth, align 8
  %33 = load i64, i64* @g_width, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %21
  %36 = load i64, i64* @g_wnd_cheight, align 8
  %37 = load i64, i64* @g_height, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35, %21
  %40 = load i32, i32* @g_Wnd, align 4
  %41 = load i32, i32* @SB_HORZ, align 4
  %42 = load i64, i64* @g_width, align 8
  %43 = load i64, i64* @g_wnd_cwidth, align 8
  %44 = sub nsw i64 %42, %43
  %45 = call i32 @SetScrollRange(i32 %40, i32 %41, i32 0, i64 %44, i32 1)
  %46 = load i32, i32* @g_Wnd, align 4
  %47 = load i32, i32* @SB_VERT, align 4
  %48 = load i64, i64* @g_height, align 8
  %49 = load i64, i64* @g_wnd_cheight, align 8
  %50 = sub nsw i64 %48, %49
  %51 = call i32 @SetScrollRange(i32 %46, i32 %47, i32 0, i64 %50, i32 1)
  br label %52

52:                                               ; preds = %39, %35
  %53 = load i32, i32* @g_xscroll, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @g_yscroll, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i64, i64* @g_wnd_cwidth, align 8
  %56 = load i64, i64* @g_width, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* @g_xscroll, align 4
  br label %65

59:                                               ; preds = %52
  %60 = load i32, i32* @g_xscroll, align 4
  %61 = load i64, i64* @g_width, align 8
  %62 = load i64, i64* @g_wnd_cwidth, align 8
  %63 = sub nsw i64 %61, %62
  %64 = call i32 @UI_MIN(i32 %60, i64 %63)
  store i32 %64, i32* @g_xscroll, align 4
  br label %65

65:                                               ; preds = %59, %58
  %66 = load i64, i64* @g_wnd_cheight, align 8
  %67 = load i64, i64* @g_height, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* @g_yscroll, align 4
  br label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @g_yscroll, align 4
  %72 = load i64, i64* @g_height, align 8
  %73 = load i64, i64* @g_wnd_cheight, align 8
  %74 = sub nsw i64 %72, %73
  %75 = call i32 @UI_MIN(i32 %71, i64 %74)
  store i32 %75, i32* @g_yscroll, align 4
  br label %76

76:                                               ; preds = %70, %69
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @g_xscroll, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @g_yscroll, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @mi_scroll(i32 %79, i32 %82)
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @SIZE_RESTORED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %76
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @SIZE_MAXIMIZED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %76
  %92 = call i32 (...) @mi_check_modifier()
  br label %93

93:                                               ; preds = %91, %87
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %15
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @DefWindowProc(i32, i32, i64, i32) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @SetScrollRange(i32, i32, i32, i64, i32) #1

declare dso_local i32 @UI_MIN(i32, i64) #1

declare dso_local i32 @mi_scroll(i32, i32) #1

declare dso_local i32 @mi_check_modifier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
