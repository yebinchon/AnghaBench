; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_brinbuildCallback.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_brinbuildCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"brinbuildCallback: completed a range: %u--%u\00", align 1
@BRIN_PROCNUM_ADDVALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, i32, i8*)* @brinbuildCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brinbuildCallback(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %13, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ItemPointerGetBlockNumber(i32 %21)
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %34, %6
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = sub nsw i32 %31, 1
  %33 = icmp sgt i32 %24, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %23
  %35 = load i32, i32* @DEBUG2, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = call i32 @BRIN_elog(i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %48 = call i32 @form_and_insert_tuple(%struct.TYPE_12__* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = call i32 @brin_memtuple_initialize(%struct.TYPE_13__* %58, %struct.TYPE_11__* %61)
  br label %23

63:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %116, %63
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %65, %72
  br i1 %73, label %74, label %119

74:                                               ; preds = %64
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call %struct.TYPE_10__* @TupleDescAttr(%struct.TYPE_14__* %79, i32 %80)
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %18, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %88
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %17, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* @BRIN_PROCNUM_ADDVALUE, align 4
  %94 = call i32* @index_getprocinfo(i32 %90, i32 %92, i32 %93)
  store i32* %94, i32** %16, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = call i32 @PointerGetDatum(%struct.TYPE_11__* %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %104 = call i32 @PointerGetDatum(%struct.TYPE_11__* %103)
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @FunctionCall4Coll(i32* %95, i32 %98, i32 %102, i32 %104, i32 %109, i32 %114)
  br label %116

116:                                              ; preds = %74
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %64

119:                                              ; preds = %64
  ret void
}

declare dso_local i32 @ItemPointerGetBlockNumber(i32) #1

declare dso_local i32 @BRIN_elog(i32) #1

declare dso_local i32 @form_and_insert_tuple(%struct.TYPE_12__*) #1

declare dso_local i32 @brin_memtuple_initialize(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @TupleDescAttr(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @index_getprocinfo(i32, i32, i32) #1

declare dso_local i32 @FunctionCall4Coll(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
