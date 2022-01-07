; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_inplace_update.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_inplace_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i8* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TRANSACTION_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot update tuples during a parallel operation\00", align 1
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"invalid lp\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"wrong tuple length\00", align 1
@SizeOfHeapInplace = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_HEAP_ID = common dso_local global i32 0, align 4
@XLOG_HEAP_INPLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_inplace_update(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store i32* null, i32** %8, align 8
  %14 = call i64 (...) @IsInParallelMode()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* @ERRCODE_INVALID_TRANSACTION_STATE, align 4
  %19 = call i32 @errcode(i32 %18)
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @ereport(i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = call i32 @ItemPointerGetBlockNumber(i32* %25)
  %27 = call i32 @ReadBuffer(i32 %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %30 = call i32 @LockBuffer(i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @BufferGetPage(i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = call i8* @ItemPointerGetOffsetNumber(i32* %34)
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @PageGetMaxOffsetNumber(i64 %37)
  %39 = load i64, i64* %7, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %22
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32* @PageGetItemId(i64 %42, i64 %43)
  store i32* %44, i32** %8, align 8
  br label %45

45:                                               ; preds = %41, %22
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @PageGetMaxOffsetNumber(i64 %46)
  %48 = load i64, i64* %7, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @ItemIdIsNormal(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* @ERROR, align 4
  %56 = call i32 @elog(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i64, i64* %6, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i64 @PageGetItem(i64 %58, i32* %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %9, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i64 @ItemIdGetLength(i32* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  store i64 %67, i64* %10, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %70, %75
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %57
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %83, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %80, %57
  %91 = load i32, i32* @ERROR, align 4
  %92 = call i32 @elog(i32 %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %80
  %94 = call i32 (...) @START_CRIT_SECTION()
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %96 = bitcast %struct.TYPE_9__* %95 to i8*
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = bitcast %struct.TYPE_7__* %103 to i8*
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i8, i8* %104, i64 %109
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @memcpy(i8* %100, i8* %110, i64 %111)
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @MarkBufferDirty(i32 %113)
  %115 = load i32, i32* %3, align 4
  %116 = call i64 @RelationNeedsWAL(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %144

118:                                              ; preds = %93
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = call i8* @ItemPointerGetOffsetNumber(i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* %121, i8** %122, align 8
  %123 = call i32 (...) @XLogBeginInsert()
  %124 = bitcast %struct.TYPE_8__* %12 to i8*
  %125 = load i32, i32* @SizeOfHeapInplace, align 4
  %126 = call i32 @XLogRegisterData(i8* %124, i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @REGBUF_STANDARD, align 4
  %129 = call i32 @XLogRegisterBuffer(i32 0, i32 %127, i32 %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %131 = bitcast %struct.TYPE_9__* %130 to i8*
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @XLogRegisterBufData(i32 0, i8* %135, i64 %136)
  %138 = load i32, i32* @RM_HEAP_ID, align 4
  %139 = load i32, i32* @XLOG_HEAP_INPLACE, align 4
  %140 = call i32 @XLogInsert(i32 %138, i32 %139)
  store i32 %140, i32* %13, align 4
  %141 = load i64, i64* %6, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @PageSetLSN(i64 %141, i32 %142)
  br label %144

144:                                              ; preds = %118, %93
  %145 = call i32 (...) @END_CRIT_SECTION()
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @UnlockReleaseBuffer(i32 %146)
  %148 = call i32 (...) @IsBootstrapProcessingMode()
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* %3, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = call i32 @CacheInvalidateHeapTuple(i32 %151, %struct.TYPE_10__* %152, i32* null)
  br label %154

154:                                              ; preds = %150, %144
  ret void
}

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i8* @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i32* @PageGetItemId(i64, i64) #1

declare dso_local i32 @ItemIdIsNormal(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @PageGetItem(i64, i32*) #1

declare dso_local i64 @ItemIdGetLength(i32*) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i64) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @CacheInvalidateHeapTuple(i32, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
