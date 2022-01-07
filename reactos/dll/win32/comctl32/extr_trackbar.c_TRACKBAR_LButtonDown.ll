; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_LButtonDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_LButtonDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8*, i8* }

@TB_DRAG_MODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TB_AUTO_PAGE_LEFT = common dso_local global i32 0, align 4
@TB_AUTO_PAGE_RIGHT = common dso_local global i32 0, align 4
@TB_REFRESH_TIMER = common dso_local global i32 0, align 4
@TB_REFRESH_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i8*)* @TRACKBAR_LButtonDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TRACKBAR_LButtonDown(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SetFocus(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = bitcast %struct.TYPE_13__* %8 to { i8*, i8* }*
  %21 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %20, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @PtInRect(i32* %19, i8* %22, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %3
  %28 = load i32, i32* @TB_DRAG_MODE, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SetCapture(i32 %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = call i32 @TRACKBAR_UpdateToolTip(%struct.TYPE_12__* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @TRACKBAR_ActivateToolTip(%struct.TYPE_12__* %39, i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @TRACKBAR_InvalidateThumb(%struct.TYPE_12__* %42, i32 %45)
  br label %88

47:                                               ; preds = %3
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = bitcast %struct.TYPE_13__* %8 to { i8*, i8* }*
  %50 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %49, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @TRACKBAR_GetAutoPageDirection(%struct.TYPE_12__* %48, i8* %51, i8* %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %89

58:                                               ; preds = %47
  %59 = load i64, i64* %9, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @TB_AUTO_PAGE_LEFT, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @TB_AUTO_PAGE_RIGHT, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = bitcast %struct.TYPE_13__* %8 to { i8*, i8* }*
  %73 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %72, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @TRACKBAR_AutoPage(%struct.TYPE_12__* %71, i8* %74, i8* %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @SetCapture(i32 %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TB_REFRESH_TIMER, align 4
  %86 = load i32, i32* @TB_REFRESH_DELAY, align 4
  %87 = call i32 @SetTimer(i32 %84, i32 %85, i32 %86, i32 0)
  br label %88

88:                                               ; preds = %65, %27
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %57
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @SetFocus(i32) #1

declare dso_local i64 @PtInRect(i32*, i8*, i8*) #1

declare dso_local i32 @SetCapture(i32) #1

declare dso_local i32 @TRACKBAR_UpdateToolTip(%struct.TYPE_12__*) #1

declare dso_local i32 @TRACKBAR_ActivateToolTip(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @TRACKBAR_InvalidateThumb(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @TRACKBAR_GetAutoPageDirection(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @TRACKBAR_AutoPage(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @SetTimer(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
