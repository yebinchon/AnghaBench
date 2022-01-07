; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_DrawDay.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_DrawDay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32*, i32*, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@MONTHCAL_DrawDay.fmtW = internal constant [3 x i8] c"%d\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MCSC_MONTHBK = common dso_local global i64 0, align 8
@MCSC_TRAILINGTEXT = common dso_local global i64 0, align 8
@BrushTitle = common dso_local global i64 0, align 8
@TRANSPARENT = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, %struct.TYPE_12__*, i32, %struct.TYPE_13__*)* @MONTHCAL_DrawDay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MONTHCAL_DrawDay(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_12__* %2, i32 %3, %struct.TYPE_13__* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca [10 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = call i32 @MONTHCAL_GetDayRect(%struct.TYPE_14__* %18, %struct.TYPE_12__* %19, i32* %12, i32 -1)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = call i32 @IntersectRect(i32* %13, i32* %22, i32* %12)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  br label %121

26:                                               ; preds = %5
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 5
  %30 = call i64 @MONTHCAL_CompareDate(%struct.TYPE_12__* %27, %struct.TYPE_11__* %29)
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %77

32:                                               ; preds = %26
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 4
  %36 = call i64 @MONTHCAL_CompareDate(%struct.TYPE_12__* %33, %struct.TYPE_11__* %35)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %32
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %45, i32 %49)
  %51 = call i32 @wine_dbgstr_rect(i32* %12)
  %52 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @MCSC_MONTHBK, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SetTextColor(i32 %53, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @MCSC_TRAILINGTEXT, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SetBkColor(i32 %61, i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @BrushTitle, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @FillRect(i32 %69, i32* %12, i32 %75)
  store i32 1, i32* %17, align 4
  br label %78

77:                                               ; preds = %32, %26
  store i32 0, i32* %17, align 4
  br label %78

78:                                               ; preds = %77, %38
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  br label %90

86:                                               ; preds = %78
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i32 [ %85, %82 ], [ %89, %86 ]
  %92 = call i32 @SelectObject(i32 %79, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @TRANSPARENT, align 4
  %95 = call i32 @SetBkMode(i32 %93, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @wsprintfW(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @MONTHCAL_DrawDay.fmtW, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %103 = load i32, i32* @DT_CENTER, align 4
  %104 = load i32, i32* @DT_VCENTER, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @DT_SINGLELINE, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @DrawTextW(i32 %101, i8* %102, i32 -1, i32* %12, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @SetBkMode(i32 %109, i32 %110)
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %90
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @SetTextColor(i32 %115, i32 %116)
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @SetBkColor(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %25, %114, %90
  ret void
}

declare dso_local i32 @MONTHCAL_GetDayRect(%struct.TYPE_14__*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @IntersectRect(i32*, i32*, i32*) #1

declare dso_local i64 @MONTHCAL_CompareDate(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @wine_dbgstr_rect(i32*) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @FillRect(i32, i32*, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i32) #1

declare dso_local i32 @DrawTextW(i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
