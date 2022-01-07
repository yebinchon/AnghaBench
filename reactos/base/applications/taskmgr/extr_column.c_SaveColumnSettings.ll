; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_column.c_SaveColumnSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_column.c_SaveColumnSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@COLUMN_NMAX = common dso_local global i32 0, align 4
@TaskManagerSettings = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@ColumnPresets = common dso_local global %struct.TYPE_7__* null, align 8
@hProcessPageHeaderCtrl = common dso_local global i32 0, align 4
@HDM_GETITEMCOUNT = common dso_local global i32 0, align 4
@HDM_GETORDERARRAY = common dso_local global i32 0, align 4
@HDI_TEXT = common dso_local global i32 0, align 4
@HDI_WIDTH = common dso_local global i32 0, align 4
@HDM_GETITEM = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SaveColumnSettings() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [260 x i32], align 16
  %5 = alloca [256 x i32], align 16
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %32, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @COLUMN_NMAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TaskManagerSettings, i32 0, i32 0), align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TaskManagerSettings, i32 0, i32 2), align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ColumnPresets, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TaskManagerSettings, i32 0, i32 1), align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  br label %32

32:                                               ; preds = %11
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %7

35:                                               ; preds = %7
  %36 = load i32, i32* @hProcessPageHeaderCtrl, align 4
  %37 = load i32, i32* @HDM_GETITEMCOUNT, align 4
  %38 = call i32 @SendMessageW(i32 %36, i32 %37, i32 0, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @hProcessPageHeaderCtrl, align 4
  %40 = load i32, i32* @HDM_GETORDERARRAY, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @SendMessageW(i32 %39, i32 %40, i32 %41, i32 ptrtoint (%struct.TYPE_6__* @TaskManagerSettings to i32))
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %98, %35
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @hProcessPageHeaderCtrl, align 4
  %46 = load i32, i32* @HDM_GETITEMCOUNT, align 4
  %47 = call i32 @SendMessageW(i32 %45, i32 %46, i32 0, i32 0)
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %101

49:                                               ; preds = %43
  %50 = call i32 @memset(%struct.TYPE_5__* %1, i32 0, i32 24)
  %51 = load i32, i32* @HDI_TEXT, align 4
  %52 = load i32, i32* @HDI_WIDTH, align 4
  %53 = or i32 %51, %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  store i32* %55, i32** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i32 260, i32* %57, align 4
  %58 = load i32, i32* @hProcessPageHeaderCtrl, align 4
  %59 = load i32, i32* @HDM_GETITEM, align 4
  %60 = load i32, i32* %2, align 4
  %61 = ptrtoint %struct.TYPE_5__* %1 to i32
  %62 = call i32 @SendMessageW(i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %94, %49
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @COLUMN_NMAX, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %63
  %68 = load i32, i32* @hInst, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ColumnPresets, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %76 = call i32 @LoadStringW(i32 %68, i32 %74, i32* %75, i32 256)
  %77 = getelementptr inbounds [260 x i32], [260 x i32]* %4, i64 0, i64 0
  %78 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %79 = call i64 @_wcsicmp(i32* %77, i32* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %67
  %82 = load i32, i32* @TRUE, align 4
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TaskManagerSettings, i32 0, i32 2), align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @TaskManagerSettings, i32 0, i32 1), align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %81, %67
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %63

97:                                               ; preds = %63
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %2, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %2, align 4
  br label %43

101:                                              ; preds = %43
  ret void
}

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i64 @_wcsicmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
