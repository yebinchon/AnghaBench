; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_selectAddColumnTypeAndCollation.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_selectAddColumnTypeAndCollation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i64, i8*, i8* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@SF_Resolved = common dso_local global i32 0, align 4
@SQLITE_AFF_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32, %struct.TYPE_21__*, %struct.TYPE_18__*)* @selectAddColumnTypeAndCollation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selectAddColumnTypeAndCollation(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_21__* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_20__, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ExprList_item*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %8, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %9, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = icmp ne %struct.TYPE_18__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SF_Resolved, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %4
  %44 = phi i1 [ true, %4 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %113

52:                                               ; preds = %43
  %53 = call i32 @memset(%struct.TYPE_20__* %10, i32 0, i32 4)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load %struct.ExprList_item*, %struct.ExprList_item** %61, align 8
  store %struct.ExprList_item* %62, %struct.ExprList_item** %15, align 8
  store i32 0, i32* %13, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %63, %struct.TYPE_21__** %11, align 8
  br label %64

64:                                               ; preds = %108, %52
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %113

68:                                               ; preds = %64
  %69 = load %struct.ExprList_item*, %struct.ExprList_item** %15, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %69, i64 %71
  %73 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %14, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @columnType(%struct.TYPE_20__* %10, i32* %76, i32 0, i32 0, i32 0)
  %78 = call i8* @sqlite3DbStrDup(%struct.TYPE_17__* %75, i32 %77)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = call i64 @sqlite3ExprAffinity(i32* %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %68
  %90 = load i64, i64* @SQLITE_AFF_NONE, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %68
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = call %struct.TYPE_22__* @sqlite3ExprCollSeq(%struct.TYPE_19__* %94, i32* %95)
  store %struct.TYPE_22__* %96, %struct.TYPE_22__** %12, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %98 = icmp ne %struct.TYPE_22__* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @sqlite3DbStrDup(%struct.TYPE_17__* %100, i32 %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %99, %93
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 1
  store %struct.TYPE_21__* %112, %struct.TYPE_21__** %11, align 8
  br label %64

113:                                              ; preds = %51, %64
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i8* @sqlite3DbStrDup(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @columnType(%struct.TYPE_20__*, i32*, i32, i32, i32) #1

declare dso_local i64 @sqlite3ExprAffinity(i32*) #1

declare dso_local %struct.TYPE_22__* @sqlite3ExprCollSeq(%struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
