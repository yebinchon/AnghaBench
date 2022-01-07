; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_minMaxQuery.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_minMaxQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@WHERE_ORDERBY_NORMAL = common dso_local global i32 0, align 4
@TK_AGG_FUNCTION = common dso_local global i64 0, align 8
@TK_AGG_COLUMN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"min\00", align 1
@WHERE_ORDERBY_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@WHERE_ORDERBY_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_16__**)* @minMaxQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minMaxQuery(%struct.TYPE_18__* %0, %struct.TYPE_16__** %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %4, align 8
  %9 = load i32, i32* @WHERE_ORDERBY_NORMAL, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %4, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %10, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %74

15:                                               ; preds = %2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %6, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %7, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TK_AGG_FUNCTION, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = icmp ne %struct.TYPE_16__* %33, null
  br i1 %34, label %35, label %73

35:                                               ; preds = %15
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %73

40:                                               ; preds = %35
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TK_AGG_COLUMN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %40
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @sqlite3StrICmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @WHERE_ORDERBY_MIN, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %4, align 8
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %62, align 8
  br label %72

63:                                               ; preds = %51
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @sqlite3StrICmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @WHERE_ORDERBY_MAX, align 4
  store i32 %68, i32* %5, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %4, align 8
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %59
  br label %73

73:                                               ; preds = %72, %40, %35, %15
  br label %74

74:                                               ; preds = %73, %2
  %75 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %4, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = icmp eq %struct.TYPE_16__* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %4, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  br label %84

84:                                               ; preds = %78, %74
  %85 = phi i1 [ true, %74 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
