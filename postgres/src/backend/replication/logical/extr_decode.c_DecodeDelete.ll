; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeDelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeDelete.c"
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

@XLH_DELETE_IS_SUPER = common dso_local global i32 0, align 4
@REORDER_BUFFER_CHANGE_DELETE = common dso_local global i32 0, align 4
@XLH_DELETE_CONTAINS_OLD = common dso_local global i32 0, align 4
@SizeOfHeapDelete = common dso_local global i64 0, align 8
@SizeOfHeapHeader = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_22__*)* @DecodeDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeDelete(%struct.TYPE_25__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @XLogRecGetData(i32* %14)
  %16 = inttoptr i64 %15 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @XLogRecGetBlockTag(i32* %17, i32 0, %struct.TYPE_24__* %8, i32* null, i32* null)
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %20, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %118

29:                                               ; preds = %2
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XLH_DELETE_IS_SUPER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %118

37:                                               ; preds = %29
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @XLogRecGetOrigin(i32* %39)
  %41 = call i64 @FilterByOrigin(%struct.TYPE_25__* %38, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %118

44:                                               ; preds = %37
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_23__* @ReorderBufferGetChange(i32 %47)
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %7, align 8
  %49 = load i32, i32* @REORDER_BUFFER_CHANGE_DELETE, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @XLogRecGetOrigin(i32* %52)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = call i32 @memcpy(i32* %59, %struct.TYPE_24__* %8, i32 8)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @XLH_DELETE_CONTAINS_OLD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %44
  %68 = load i32*, i32** %5, align 8
  %69 = call i64 @XLogRecGetDataLen(i32* %68)
  %70 = load i64, i64* @SizeOfHeapDelete, align 8
  %71 = sub nsw i64 %69, %70
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @SizeOfHeapHeader, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %10, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 @XLogRecGetDataLen(i32* %75)
  %77 = load i64, i64* @SizeOfHeapDelete, align 8
  %78 = load i64, i64* @SizeOfHeapHeader, align 8
  %79 = add nsw i64 %77, %78
  %80 = icmp sgt i64 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @ReorderBufferGetTupleBuf(i32 %85, i64 %86)
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %93 = bitcast %struct.TYPE_21__* %92 to i8*
  %94 = load i64, i64* @SizeOfHeapDelete, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @DecodeXLogTuple(i8* %95, i64 %96, i32 %101)
  br label %103

103:                                              ; preds = %67, %44
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @XLogRecGetXid(i32* %111)
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %117 = call i32 @ReorderBufferQueueChange(i32 %110, i32 %112, i32 %115, %struct.TYPE_23__* %116)
  br label %118

118:                                              ; preds = %103, %43, %36, %28
  ret void
}

declare dso_local i64 @XLogRecGetData(i32*) #1

declare dso_local i32 @XLogRecGetBlockTag(i32*, i32, %struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i64 @FilterByOrigin(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @XLogRecGetOrigin(i32*) #1

declare dso_local %struct.TYPE_23__* @ReorderBufferGetChange(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @XLogRecGetDataLen(i32*) #1

declare dso_local i32 @Assert(i32) #1

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
