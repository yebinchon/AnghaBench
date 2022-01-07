; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i64 }

@XLH_INSERT_CONTAINS_NEW_TUPLE = common dso_local global i32 0, align 4
@XLH_INSERT_IS_SPECULATIVE = common dso_local global i32 0, align 4
@REORDER_BUFFER_CHANGE_INSERT = common dso_local global i32 0, align 4
@REORDER_BUFFER_CHANGE_INTERNAL_SPEC_INSERT = common dso_local global i32 0, align 4
@SizeOfHeapHeader = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_22__*)* @DecodeInsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeInsert(%struct.TYPE_25__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @XLogRecGetData(i32* %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %9, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XLH_INSERT_CONTAINS_NEW_TUPLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %110

25:                                               ; preds = %2
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @XLogRecGetBlockTag(i32* %26, i32 0, %struct.TYPE_24__* %11, i32* null, i32* null)
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %29, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %110

38:                                               ; preds = %25
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @XLogRecGetOrigin(i32* %40)
  %42 = call i64 @FilterByOrigin(%struct.TYPE_25__* %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %110

45:                                               ; preds = %38
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_23__* @ReorderBufferGetChange(i32 %48)
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %10, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @XLH_INSERT_IS_SPECULATIVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @REORDER_BUFFER_CHANGE_INSERT, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %45
  %61 = load i32, i32* @REORDER_BUFFER_CHANGE_INTERNAL_SPEC_INSERT, align 4
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @XLogRecGetOrigin(i32* %65)
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  %73 = call i32 @memcpy(i32* %72, %struct.TYPE_24__* %11, i32 8)
  %74 = load i32*, i32** %8, align 8
  %75 = call i8* @XLogRecGetBlockData(i32* %74, i32 0, i64* %5)
  store i8* %75, i8** %6, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @SizeOfHeapHeader, align 8
  %78 = sub nsw i64 %76, %77
  store i64 %78, i64* %7, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @ReorderBufferGetTupleBuf(i32 %81, i64 %82)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @DecodeXLogTuple(i8* %88, i64 %89, i32 %94)
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @XLogRecGetXid(i32* %103)
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %109 = call i32 @ReorderBufferQueueChange(i32 %102, i32 %104, i32 %107, %struct.TYPE_23__* %108)
  br label %110

110:                                              ; preds = %64, %44, %37, %24
  ret void
}

declare dso_local i64 @XLogRecGetData(i32*) #1

declare dso_local i32 @XLogRecGetBlockTag(i32*, i32, %struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i64 @FilterByOrigin(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @XLogRecGetOrigin(i32*) #1

declare dso_local %struct.TYPE_23__* @ReorderBufferGetChange(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i8* @XLogRecGetBlockData(i32*, i32, i64*) #1

declare dso_local i32 @ReorderBufferGetTupleBuf(i32, i64) #1

declare dso_local i32 @DecodeXLogTuple(i8*, i64, i32) #1

declare dso_local i32 @ReorderBufferQueueChange(i32, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @XLogRecGetXid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
