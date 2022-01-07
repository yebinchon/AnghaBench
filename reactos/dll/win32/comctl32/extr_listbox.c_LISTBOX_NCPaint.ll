; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_NCPaint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listbox.c_LISTBOX_NCPaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@SM_CXEDGE = common dso_local global i32 0, align 4
@SM_CYEDGE = common dso_local global i32 0, align 4
@RGN_AND = common dso_local global i32 0, align 4
@DCX_WINDOW = common dso_local global i32 0, align 4
@DCX_INTERSECTRGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @LISTBOX_NCPaint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LISTBOX_NCPaint(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GWL_EXSTYLE, align 4
  %16 = call i32 @GetWindowLongW(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @GetWindowTheme(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %2
  br label %107

30:                                               ; preds = %24
  %31 = load i32, i32* @SM_CXEDGE, align 4
  %32 = call i32 @GetSystemMetrics(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @SM_CYEDGE, align 4
  %34 = call i32 @GetSystemMetrics(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @GetWindowRect(i32 %37, %struct.TYPE_8__* %11)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %48, %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %53, %55
  %57 = call i32 @CreateRectRgn(i32 %42, i32 %46, i64 %51, i64 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %30
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @RGN_AND, align 4
  %65 = call i32 @CombineRgn(i32 %61, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %30
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 0, %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i32 @OffsetRect(%struct.TYPE_8__* %11, i32 %69, i32 %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @DCX_WINDOW, align 4
  %79 = load i32, i32* @DCX_INTERSECTRGN, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @GetDCEx(i32 %76, i32 %77, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 0, %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 0, %86
  %88 = call i32 @OffsetRect(%struct.TYPE_8__* %11, i32 %84, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @IsThemeBackgroundPartiallyTransparent(i32 %89, i32 0, i32 0)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %66
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @DrawThemeParentBackground(i32 %95, i32 %96, %struct.TYPE_8__* %11)
  br label %98

98:                                               ; preds = %92, %66
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @DrawThemeBackground(i32 %99, i32 %100, i32 0, i32 0, %struct.TYPE_8__* %11, i32 0)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @ReleaseDC(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %98, %29
  ret void
}

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @GetWindowTheme(i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @CreateRectRgn(i32, i32, i64, i64) #1

declare dso_local i32 @CombineRgn(i32, i32, i32, i32) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @GetDCEx(i32, i32, i32) #1

declare dso_local i64 @IsThemeBackgroundPartiallyTransparent(i32, i32, i32) #1

declare dso_local i32 @DrawThemeParentBackground(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @DrawThemeBackground(i32, i32, i32, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
