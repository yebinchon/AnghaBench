; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_AutoPage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_AutoPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"clickPoint=%s, dir=%d\0A\00", align 1
@TB_AUTO_PAGE_RIGHT = common dso_local global i32 0, align 4
@TB_AUTO_PAGE_LEFT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @TRACKBAR_AutoPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TRACKBAR_AutoPage(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @TRACKBAR_GetAutoPageDirection(%struct.TYPE_8__* %8, i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = call i32 @wine_dbgstr_point(i32* %5)
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TB_AUTO_PAGE_RIGHT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call i32 @TRACKBAR_PageDown(%struct.TYPE_8__* %27)
  br label %45

29:                                               ; preds = %19, %2
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TB_AUTO_PAGE_LEFT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call i32 @TRACKBAR_PageUp(%struct.TYPE_8__* %40)
  br label %44

42:                                               ; preds = %32, %29
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %55

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @TRACKBAR_UpdateThumb(%struct.TYPE_8__* %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @TRACKBAR_InvalidateThumbMove(%struct.TYPE_8__* %48, i64 %49, i64 %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @TRACKBAR_GetAutoPageDirection(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @wine_dbgstr_point(i32*) #1

declare dso_local i32 @TRACKBAR_PageDown(%struct.TYPE_8__*) #1

declare dso_local i32 @TRACKBAR_PageUp(%struct.TYPE_8__*) #1

declare dso_local i32 @TRACKBAR_UpdateThumb(%struct.TYPE_8__*) #1

declare dso_local i32 @TRACKBAR_InvalidateThumbMove(%struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
