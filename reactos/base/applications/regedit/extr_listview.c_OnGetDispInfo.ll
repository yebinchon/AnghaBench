; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_listview.c_OnGetDispInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_listview.c_OnGetDispInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }

@OnGetDispInfo.buffer = internal global [200 x i8] zeroinitializer, align 16
@hInst = common dso_local global i32 0, align 4
@IDS_DEFAULT_VALUE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i32] [i32 82, i32 69, i32 71, i32 95, i32 78, i32 79, i32 78, i32 69, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 82, i32 69, i32 71, i32 95, i32 83, i32 90, i32 0], align 4
@.str.2 = private unnamed_addr constant [14 x i32] [i32 82, i32 69, i32 71, i32 95, i32 69, i32 88, i32 80, i32 65, i32 78, i32 68, i32 95, i32 83, i32 90, i32 0], align 4
@.str.3 = private unnamed_addr constant [11 x i32] [i32 82, i32 69, i32 71, i32 95, i32 66, i32 73, i32 78, i32 65, i32 82, i32 89, i32 0], align 4
@.str.4 = private unnamed_addr constant [10 x i32] [i32 82, i32 69, i32 71, i32 95, i32 68, i32 87, i32 79, i32 82, i32 68, i32 0], align 4
@.str.5 = private unnamed_addr constant [21 x i32] [i32 82, i32 69, i32 71, i32 95, i32 68, i32 87, i32 79, i32 82, i32 68, i32 95, i32 66, i32 73, i32 71, i32 95, i32 69, i32 78, i32 68, i32 73, i32 65, i32 78, i32 0], align 4
@.str.6 = private unnamed_addr constant [9 x i32] [i32 82, i32 69, i32 71, i32 95, i32 76, i32 73, i32 78, i32 75, i32 0], align 4
@.str.7 = private unnamed_addr constant [13 x i32] [i32 82, i32 69, i32 71, i32 95, i32 77, i32 85, i32 76, i32 84, i32 73, i32 95, i32 83, i32 90, i32 0], align 4
@.str.8 = private unnamed_addr constant [18 x i32] [i32 82, i32 69, i32 71, i32 95, i32 82, i32 69, i32 83, i32 79, i32 85, i32 82, i32 67, i32 69, i32 95, i32 76, i32 73, i32 83, i32 84, i32 0], align 4
@.str.9 = private unnamed_addr constant [29 x i32] [i32 82, i32 69, i32 71, i32 95, i32 70, i32 85, i32 76, i32 76, i32 95, i32 82, i32 69, i32 83, i32 79, i32 85, i32 82, i32 67, i32 69, i32 95, i32 68, i32 69, i32 83, i32 67, i32 82, i32 73, i32 80, i32 84, i32 79, i32 82, i32 0], align 4
@.str.10 = private unnamed_addr constant [31 x i32] [i32 82, i32 69, i32 71, i32 95, i32 82, i32 69, i32 83, i32 79, i32 85, i32 82, i32 67, i32 69, i32 95, i32 82, i32 69, i32 81, i32 85, i32 73, i32 82, i32 69, i32 77, i32 69, i32 78, i32 84, i32 83, i32 95, i32 76, i32 73, i32 83, i32 84, i32 0], align 4
@.str.11 = private unnamed_addr constant [10 x i32] [i32 82, i32 69, i32 71, i32 95, i32 81, i32 87, i32 79, i32 82, i32 68, i32 0], align 4
@IDS_UNKNOWN_TYPE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @OnGetDispInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OnGetDispInfo(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca [200 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i8* null, i8** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %102 [
    i32 0, label %14
    i32 1, label %22
    i32 3, label %98
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @hInst, align 4
  %16 = load i32, i32* @IDS_DEFAULT_VALUE_NAME, align 4
  %17 = call i32 @COUNT_OF(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @OnGetDispInfo.buffer, i64 0, i64 0))
  %18 = call i32 @LoadStringW(i32 %15, i32 %16, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @OnGetDispInfo.buffer, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @OnGetDispInfo.buffer, i64 0, i64 0), i8** %21, align 8
  br label %102

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_7__*
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %78 [
    i32 132, label %30
    i32 128, label %34
    i32 136, label %38
    i32 139, label %42
    i32 138, label %46
    i32 137, label %50
    i32 134, label %54
    i32 133, label %58
    i32 130, label %62
    i32 135, label %66
    i32 129, label %70
    i32 131, label %74
  ]

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i8* bitcast ([9 x i32]* @.str to i8*), i8** %33, align 8
  br label %97

34:                                               ; preds = %22
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i8* bitcast ([7 x i32]* @.str.1 to i8*), i8** %37, align 8
  br label %97

38:                                               ; preds = %22
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i8* bitcast ([14 x i32]* @.str.2 to i8*), i8** %41, align 8
  br label %97

42:                                               ; preds = %22
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i8* bitcast ([11 x i32]* @.str.3 to i8*), i8** %45, align 8
  br label %97

46:                                               ; preds = %22
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* bitcast ([10 x i32]* @.str.4 to i8*), i8** %49, align 8
  br label %97

50:                                               ; preds = %22
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i8* bitcast ([21 x i32]* @.str.5 to i8*), i8** %53, align 8
  br label %97

54:                                               ; preds = %22
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i8* bitcast ([9 x i32]* @.str.6 to i8*), i8** %57, align 8
  br label %97

58:                                               ; preds = %22
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i8* bitcast ([13 x i32]* @.str.7 to i8*), i8** %61, align 8
  br label %97

62:                                               ; preds = %22
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i8* bitcast ([18 x i32]* @.str.8 to i8*), i8** %65, align 8
  br label %97

66:                                               ; preds = %22
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i8* bitcast ([29 x i32]* @.str.9 to i8*), i8** %69, align 8
  br label %97

70:                                               ; preds = %22
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i8* bitcast ([31 x i32]* @.str.10 to i8*), i8** %73, align 8
  br label %97

74:                                               ; preds = %22
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i8* bitcast ([10 x i32]* @.str.11 to i8*), i8** %77, align 8
  br label %97

78:                                               ; preds = %22
  %79 = load i32, i32* @hInst, align 4
  %80 = load i32, i32* @IDS_UNKNOWN_TYPE, align 4
  %81 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %82 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %83 = call i32 @COUNT_OF(i8* %82)
  %84 = call i32 @LoadStringW(i32 %79, i32 %80, i8* %81, i32 %83)
  %85 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.TYPE_7__*
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @wsprintf(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @OnGetDispInfo.buffer, i64 0, i64 0), i8* %85, i32 %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i8* getelementptr inbounds ([200 x i8], [200 x i8]* @OnGetDispInfo.buffer, i64 0, i64 0), i8** %96, align 8
  br label %97

97:                                               ; preds = %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30
  br label %102

98:                                               ; preds = %1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i8* bitcast ([1 x i32]* @.str.12 to i8*), i8** %101, align 8
  br label %102

102:                                              ; preds = %1, %98, %97, %14
  ret void
}

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i32 @COUNT_OF(i8*) #1

declare dso_local i32 @wsprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
