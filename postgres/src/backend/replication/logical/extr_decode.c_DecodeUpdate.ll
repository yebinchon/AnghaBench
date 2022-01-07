; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeUpdate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_24__ = type { i64 }

@REORDER_BUFFER_CHANGE_UPDATE = common dso_local global i32 0, align 4
@XLH_UPDATE_CONTAINS_NEW_TUPLE = common dso_local global i32 0, align 4
@SizeOfHeapHeader = common dso_local global i32 0, align 4
@XLH_UPDATE_CONTAINS_OLD = common dso_local global i32 0, align 4
@SizeOfHeapUpdate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_22__*)* @DecodeUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeUpdate(%struct.TYPE_25__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_24__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @XLogRecGetData(i32* %17)
  %19 = bitcast i8* %18 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @XLogRecGetBlockTag(i32* %20, i32 0, %struct.TYPE_24__* %9, i32* null, i32* null)
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %23, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %137

32:                                               ; preds = %2
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @XLogRecGetOrigin(i32* %34)
  %36 = call i64 @FilterByOrigin(%struct.TYPE_25__* %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %137

39:                                               ; preds = %32
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_23__* @ReorderBufferGetChange(i32 %42)
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %7, align 8
  %44 = load i32, i32* @REORDER_BUFFER_CHANGE_UPDATE, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @XLogRecGetOrigin(i32* %47)
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 3
  %55 = call i32 @memcpy(i32* %54, %struct.TYPE_24__* %9, i32 8)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @XLH_UPDATE_CONTAINS_NEW_TUPLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %39
  %63 = load i32*, i32** %5, align 8
  %64 = call i8* @XLogRecGetBlockData(i32* %63, i32 0, i32* %10)
  store i8* %64, i8** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @SizeOfHeapHeader, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i8* @ReorderBufferGetTupleBuf(i32 %70, i32 %71)
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  store i8* %72, i8** %76, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @DecodeXLogTuple(i8* %77, i32 %78, i8* %83)
  br label %85

85:                                               ; preds = %62, %39
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @XLH_UPDATE_CONTAINS_OLD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %85
  %93 = load i32*, i32** %5, align 8
  %94 = call i8* @XLogRecGetData(i32* %93)
  %95 = load i32, i32* @SizeOfHeapUpdate, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8* %97, i8** %8, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @XLogRecGetDataLen(i32* %98)
  %100 = load i32, i32* @SizeOfHeapUpdate, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @SizeOfHeapHeader, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %13, align 4
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i8* @ReorderBufferGetTupleBuf(i32 %107, i32 %108)
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  store i8* %109, i8** %113, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @DecodeXLogTuple(i8* %114, i32 %115, i8* %120)
  br label %122

122:                                              ; preds = %92, %85
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @XLogRecGetXid(i32* %130)
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %136 = call i32 @ReorderBufferQueueChange(i32 %129, i32 %131, i32 %134, %struct.TYPE_23__* %135)
  br label %137

137:                                              ; preds = %122, %38, %31
  ret void
}

declare dso_local i8* @XLogRecGetData(i32*) #1

declare dso_local i32 @XLogRecGetBlockTag(i32*, i32, %struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i64 @FilterByOrigin(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @XLogRecGetOrigin(i32*) #1

declare dso_local %struct.TYPE_23__* @ReorderBufferGetChange(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i8* @XLogRecGetBlockData(i32*, i32, i32*) #1

declare dso_local i8* @ReorderBufferGetTupleBuf(i32, i32) #1

declare dso_local i32 @DecodeXLogTuple(i8*, i32, i8*) #1

declare dso_local i32 @XLogRecGetDataLen(i32*) #1

declare dso_local i32 @ReorderBufferQueueChange(i32, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @XLogRecGetXid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
