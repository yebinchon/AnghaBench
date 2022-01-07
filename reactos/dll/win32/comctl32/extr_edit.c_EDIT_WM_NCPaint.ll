; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_NCPaint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_NCPaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64 }

@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@SM_CXEDGE = common dso_local global i32 0, align 4
@SM_CYEDGE = common dso_local global i32 0, align 4
@EP_EDITTEXT = common dso_local global i32 0, align 4
@ETS_NORMAL = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@ETS_DISABLED = common dso_local global i32 0, align 4
@ES_READONLY = common dso_local global i32 0, align 4
@ETS_READONLY = common dso_local global i32 0, align 4
@ETS_FOCUSED = common dso_local global i32 0, align 4
@RGN_AND = common dso_local global i32 0, align 4
@DCX_WINDOW = common dso_local global i32 0, align 4
@DCX_INTERSECTRGN = common dso_local global i32 0, align 4
@WM_NCPAINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @EDIT_WM_NCPaint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_WM_NCPaint(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @GWL_EXSTYLE, align 4
  %17 = call i32 @GetWindowLongW(i64 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @GetWindowTheme(i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %127

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %127

28:                                               ; preds = %23
  %29 = load i32, i32* @SM_CXEDGE, align 4
  %30 = call i32 @GetSystemMetrics(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @SM_CYEDGE, align 4
  %32 = call i32 @GetSystemMetrics(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @EP_EDITTEXT, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @ETS_NORMAL, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* @GWL_STYLE, align 4
  %37 = call i32 @GetWindowLongW(i64 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @IsWindowEnabled(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @ETS_DISABLED, align 4
  store i32 %42, i32* %13, align 4
  br label %58

43:                                               ; preds = %28
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @ES_READONLY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @ETS_READONLY, align 4
  store i32 %49, i32* %13, align 4
  br label %57

50:                                               ; preds = %43
  %51 = call i64 (...) @GetFocus()
  %52 = load i64, i64* %3, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @ETS_FOCUSED, align 4
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %48
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @GetWindowRect(i64 %59, %struct.TYPE_6__* %9)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %62, %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %66, %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %70, %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %75, %77
  %79 = call i64 @CreateRectRgn(i32 %64, i32 %68, i64 %73, i64 %78)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %4, align 8
  %81 = icmp ne i64 %80, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %58
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i32, i32* @RGN_AND, align 4
  %87 = call i32 @CombineRgn(i64 %83, i64 %84, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %58
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 0, %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 0, %93
  %95 = call i32 @OffsetRect(%struct.TYPE_6__* %9, i32 %91, i32 %94)
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i32, i32* @DCX_WINDOW, align 4
  %99 = load i32, i32* @DCX_INTERSECTRGN, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @GetDCEx(i64 %96, i64 %97, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 0, %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 0, %106
  %108 = call i32 @OffsetRect(%struct.TYPE_6__* %9, i32 %104, i32 %107)
  %109 = load i64, i64* %6, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i64 @IsThemeBackgroundPartiallyTransparent(i64 %109, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %88
  %115 = load i64, i64* %3, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @DrawThemeParentBackground(i64 %115, i32 %116, %struct.TYPE_6__* %9)
  br label %118

118:                                              ; preds = %114, %88
  %119 = load i64, i64* %6, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @DrawThemeBackground(i64 %119, i32 %120, i32 %121, i32 %122, %struct.TYPE_6__* %9, i32 0)
  %124 = load i64, i64* %3, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @ReleaseDC(i64 %124, i32 %125)
  br label %127

127:                                              ; preds = %118, %23, %2
  %128 = load i64, i64* %3, align 8
  %129 = load i32, i32* @WM_NCPAINT, align 4
  %130 = load i64, i64* %7, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @DefWindowProcW(i64 %128, i32 %129, i32 %131, i32 0)
  ret void
}

declare dso_local i32 @GetWindowLongW(i64, i32) #1

declare dso_local i64 @GetWindowTheme(i64) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @IsWindowEnabled(i64) #1

declare dso_local i64 @GetFocus(...) #1

declare dso_local i32 @GetWindowRect(i64, %struct.TYPE_6__*) #1

declare dso_local i64 @CreateRectRgn(i32, i32, i64, i64) #1

declare dso_local i32 @CombineRgn(i64, i64, i64, i32) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @GetDCEx(i64, i64, i32) #1

declare dso_local i64 @IsThemeBackgroundPartiallyTransparent(i64, i32, i32) #1

declare dso_local i32 @DrawThemeParentBackground(i64, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @DrawThemeBackground(i64, i32, i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ReleaseDC(i64, i32) #1

declare dso_local i32 @DefWindowProcW(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
