; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_AdvanceXLInsertBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_AdvanceXLInsertBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64*, i64, %struct.TYPE_16__, i32, %struct.TYPE_10__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }

@XLogCtl = common dso_local global %struct.TYPE_15__* null, align 8
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@WALBufMappingLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@LogwrtResult = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@WALWriteLock = common dso_local global i32 0, align 4
@XLOG_BLCKSZ = common dso_local global i64 0, align 8
@XLOG_PAGE_MAGIC = common dso_local global i32 0, align 4
@ThisTimeLineID = common dso_local global i32 0, align 4
@XLP_BKP_REMOVABLE = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@ControlFile = common dso_local global %struct.TYPE_17__* null, align 8
@XLP_LONG_HEADER = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @AdvanceXLInsertBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AdvanceXLInsertBuffer(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 6
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load i64, i64* @InvalidXLogRecPtr, align 8
  store i64 %16, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @WALBufMappingLock, align 4
  %18 = load i32, i32* @LW_EXCLUSIVE, align 4
  %19 = call i32 @LWLockAcquire(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %183, %106, %2
  %21 = load i64, i64* %3, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i1 [ true, %20 ], [ %28, %26 ]
  br i1 %30, label %31, label %197

31:                                               ; preds = %29
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @XLogRecPtrToBufIdx(i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @LogwrtResult, i32 0, i32 0), align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %111

46:                                               ; preds = %31
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %197

50:                                               ; preds = %46
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 4
  %53 = call i32 @SpinLockAcquire(i32* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %50
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  %68 = bitcast %struct.TYPE_16__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_16__* @LogwrtResult to i8*), i8* align 8 %68, i64 8, i1 false)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 4
  %71 = call i32 @SpinLockRelease(i32* %70)
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @LogwrtResult, i32 0, i32 0), align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %65
  %76 = load i32, i32* @WALBufMappingLock, align 4
  %77 = call i32 @LWLockRelease(i32 %76)
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @WaitXLogInsertionsToFinish(i64 %78)
  %80 = load i32, i32* @WALWriteLock, align 4
  %81 = load i32, i32* @LW_EXCLUSIVE, align 4
  %82 = call i32 @LWLockAcquire(i32 %80, i32 %81)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = bitcast %struct.TYPE_16__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_16__* @LogwrtResult to i8*), i8* align 8 %85, i64 8, i1 false)
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @LogwrtResult, i32 0, i32 0), align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %75
  %90 = load i32, i32* @WALWriteLock, align 4
  %91 = call i32 @LWLockRelease(i32 %90)
  br label %106

92:                                               ; preds = %75
  %93 = call i32 (...) @TRACE_POSTGRESQL_WAL_BUFFER_WRITE_DIRTY_START()
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i64 %94, i64* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = bitcast %struct.TYPE_11__* %8 to { i64, i64 }*
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @XLogWrite(i64 %99, i64 %101, i32 0)
  %103 = load i32, i32* @WALWriteLock, align 4
  %104 = call i32 @LWLockRelease(i32 %103)
  %105 = call i32 (...) @TRACE_POSTGRESQL_WAL_BUFFER_WRITE_DIRTY_DONE()
  br label %106

106:                                              ; preds = %92, %89
  %107 = load i32, i32* @WALBufMappingLock, align 4
  %108 = load i32, i32* @LW_EXCLUSIVE, align 4
  %109 = call i32 @LWLockAcquire(i32 %107, i32 %108)
  br label %20

110:                                              ; preds = %65
  br label %111

111:                                              ; preds = %110, %31
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @XLOG_BLCKSZ, align 8
  %117 = add nsw i64 %115, %116
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @XLogRecPtrToBufIdx(i64 %118)
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @Assert(i32 %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i64, i64* @XLOG_BLCKSZ, align 8
  %129 = trunc i64 %128 to i32
  %130 = mul nsw i32 %127, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %126, %131
  %133 = inttoptr i64 %132 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %11, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %135 = bitcast %struct.TYPE_12__* %134 to i8*
  %136 = load i64, i64* @XLOG_BLCKSZ, align 8
  %137 = call i32 @MemSet(i8* %135, i32 0, i64 %136)
  %138 = load i32, i32* @XLOG_PAGE_MAGIC, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @ThisTimeLineID, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %111
  %152 = load i32, i32* @XLP_BKP_REMOVABLE, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %111
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @wal_segment_size, align 4
  %162 = call i64 @XLogSegmentOffset(i64 %160, i32 %161)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %183

164:                                              ; preds = %157
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %166 = bitcast %struct.TYPE_12__* %165 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %166, %struct.TYPE_13__** %13, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ControlFile, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @wal_segment_size, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load i64, i64* @XLOG_BLCKSZ, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load i32, i32* @XLP_LONG_HEADER, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %164, %157
  %184 = call i32 (...) @pg_write_barrier()
  %185 = load i64, i64* %9, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  store volatile i64 %185, i64* %191, align 8
  %192 = load i64, i64* %9, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** @XLogCtl, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %12, align 4
  br label %20

197:                                              ; preds = %49, %29
  %198 = load i32, i32* @WALBufMappingLock, align 4
  %199 = call i32 @LWLockRelease(i32 %198)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @XLogRecPtrToBufIdx(i64) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @WaitXLogInsertionsToFinish(i64) #1

declare dso_local i32 @TRACE_POSTGRESQL_WAL_BUFFER_WRITE_DIRTY_START(...) #1

declare dso_local i32 @XLogWrite(i64, i64, i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_WAL_BUFFER_WRITE_DIRTY_DONE(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemSet(i8*, i32, i64) #1

declare dso_local i64 @XLogSegmentOffset(i64, i32) #1

declare dso_local i32 @pg_write_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
