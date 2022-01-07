; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstattuple.c_pgstat_heap.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgstattuple/extr_pgstattuple.c_pgstat_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }

@HEAP_TABLE_AM_OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"only heap AM is supported\00", align 1
@SnapshotAny = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @pgstat_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgstat_heap(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %9, align 8
  %14 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 28, i1 false)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HEAP_TABLE_AM_OID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = load i32, i32* @SnapshotAny, align 4
  %31 = call i64 @table_beginscan_strat(%struct.TYPE_15__* %29, i32 %30, i32 0, i32* null, i32 1, i32 0)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %6, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @InitDirtySnapshot(i32 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %120, %28
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* @ForwardScanDirection, align 4
  %42 = call %struct.TYPE_16__* @heap_getnext(i64 %40, i32 %41)
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %7, align 8
  %43 = icmp ne %struct.TYPE_16__* %42, null
  br i1 %43, label %44, label %121

44:                                               ; preds = %39
  %45 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %50 = call i32 @LockBuffer(i32 %48, i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @HeapTupleSatisfiesVisibility(%struct.TYPE_16__* %51, i32* %13, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %44
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %60
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %81

69:                                               ; preds = %44
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %72
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %69, %57
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %86 = call i32 @LockBuffer(i32 %84, i32 %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = call i64 @ItemPointerGetBlockNumber(i32* %88)
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %94, %81
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = icmp sle i64 %91, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %90
  %95 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = load i32, i32* @MAIN_FORKNUM, align 4
  %98 = load i64, i64* %9, align 8
  %99 = load i32, i32* @RBM_NORMAL, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ReadBufferExtended(%struct.TYPE_15__* %96, i32 %97, i64 %98, i32 %99, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %106 = call i32 @LockBuffer(i32 %104, i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = call i64 @BufferGetPage(i32 %107)
  %109 = trunc i64 %108 to i32
  %110 = call i64 @PageGetHeapFreeSpace(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %110
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @UnlockReleaseBuffer(i32 %116)
  %118 = load i64, i64* %9, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %9, align 8
  br label %90

120:                                              ; preds = %90
  br label %39

121:                                              ; preds = %39
  br label %122

122:                                              ; preds = %126, %121
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %152

126:                                              ; preds = %122
  %127 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = load i32, i32* @MAIN_FORKNUM, align 4
  %130 = load i64, i64* %9, align 8
  %131 = load i32, i32* @RBM_NORMAL, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ReadBufferExtended(%struct.TYPE_15__* %128, i32 %129, i64 %130, i32 %131, i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %138 = call i32 @LockBuffer(i32 %136, i32 %137)
  %139 = load i32, i32* %11, align 4
  %140 = call i64 @BufferGetPage(i32 %139)
  %141 = trunc i64 %140 to i32
  %142 = call i64 @PageGetHeapFreeSpace(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %142
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @UnlockReleaseBuffer(i32 %148)
  %150 = load i64, i64* %9, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %9, align 8
  br label %122

152:                                              ; preds = %122
  %153 = load i64, i64* %5, align 8
  %154 = call i32 @table_endscan(i64 %153)
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = load i32, i32* @AccessShareLock, align 4
  %157 = call i32 @relation_close(%struct.TYPE_15__* %155, i32 %156)
  %158 = load i64, i64* %8, align 8
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* @BLCKSZ, align 4
  %161 = mul nsw i32 %159, %160
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store i32 %161, i32* %162, align 4
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @build_pgstattuple_type(%struct.TYPE_14__* %12, i32 %163)
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*) #2

declare dso_local i64 @table_beginscan_strat(%struct.TYPE_15__*, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @InitDirtySnapshot(i32) #2

declare dso_local %struct.TYPE_16__* @heap_getnext(i64, i32) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i32 @LockBuffer(i32, i32) #2

declare dso_local i64 @HeapTupleSatisfiesVisibility(%struct.TYPE_16__*, i32*, i32) #2

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #2

declare dso_local i32 @ReadBufferExtended(%struct.TYPE_15__*, i32, i64, i32, i32) #2

declare dso_local i64 @PageGetHeapFreeSpace(i32) #2

declare dso_local i64 @BufferGetPage(i32) #2

declare dso_local i32 @UnlockReleaseBuffer(i32) #2

declare dso_local i32 @table_endscan(i64) #2

declare dso_local i32 @relation_close(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @build_pgstattuple_type(%struct.TYPE_14__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
