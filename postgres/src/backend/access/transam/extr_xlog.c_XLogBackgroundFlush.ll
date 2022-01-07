; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogBackgroundFlush.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_XLogBackgroundFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@XLogBackgroundFlush.lastflush = internal global i64 0, align 8
@XLogCtl = common dso_local global %struct.TYPE_6__* null, align 8
@LogwrtResult = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@XLOG_BLCKSZ = common dso_local global i32 0, align 4
@openLogFile = common dso_local global i64 0, align 8
@openLogSegNo = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@WalWriterFlushAfter = common dso_local global i32 0, align 4
@WalWriterDelay = common dso_local global i32 0, align 4
@WALWriteLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XLogBackgroundFlush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  %6 = call i64 (...) @RecoveryInProgress()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %139

9:                                                ; preds = %0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @XLogCtl, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = call i32 @SpinLockAcquire(i32* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @XLogCtl, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = bitcast %struct.TYPE_7__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_7__* @LogwrtResult to i8*), i8* align 4 %15, i64 8, i1 false)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @XLogCtl, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = bitcast %struct.TYPE_5__* %2 to i8*
  %19 = bitcast %struct.TYPE_5__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 8, i1 false)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @XLogCtl, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = call i32 @SpinLockRelease(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XLOG_BLCKSZ, align 4
  %26 = srem i32 %24, %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @LogwrtResult, i32 0, i32 0), align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %9
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @XLogCtl, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = call i32 @SpinLockAcquire(i32* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @XLogCtl, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @XLogCtl, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = call i32 @SpinLockRelease(i32* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %9
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @LogwrtResult, i32 0, i32 0), align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i64, i64* @openLogFile, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @LogwrtResult, i32 0, i32 1), align 4
  %55 = load i32, i32* @openLogSegNo, align 4
  %56 = load i32, i32* @wal_segment_size, align 4
  %57 = call i32 @XLByteInPrevSeg(i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = call i32 (...) @XLogFileClose()
  br label %61

61:                                               ; preds = %59, %53
  br label %62

62:                                               ; preds = %61, %50
  store i32 0, i32* %1, align 4
  br label %139

63:                                               ; preds = %45
  %64 = call i64 (...) @GetCurrentTimestamp()
  store i64 %64, i64* %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @XLOG_BLCKSZ, align 4
  %68 = sdiv i32 %66, %67
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @LogwrtResult, i32 0, i32 0), align 4
  %70 = load i32, i32* @XLOG_BLCKSZ, align 4
  %71 = sdiv i32 %69, %70
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @WalWriterFlushAfter, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %63
  %76 = load i64, i64* @XLogBackgroundFlush.lastflush, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75, %63
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load i64, i64* %4, align 8
  store i64 %82, i64* @XLogBackgroundFlush.lastflush, align 8
  br label %107

83:                                               ; preds = %75
  %84 = load i64, i64* @XLogBackgroundFlush.lastflush, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i32, i32* @WalWriterDelay, align 4
  %87 = call i64 @TimestampDifferenceExceeds(i64 %84, i64 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load i64, i64* %4, align 8
  store i64 %93, i64* @XLogBackgroundFlush.lastflush, align 8
  br label %106

94:                                               ; preds = %83
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @WalWriterFlushAfter, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = load i64, i64* %4, align 8
  store i64 %102, i64* @XLogBackgroundFlush.lastflush, align 8
  br label %105

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %98
  br label %106

106:                                              ; preds = %105, %89
  br label %107

107:                                              ; preds = %106, %78
  %108 = call i32 (...) @START_CRIT_SECTION()
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @WaitXLogInsertionsToFinish(i32 %110)
  %112 = load i32, i32* @WALWriteLock, align 4
  %113 = load i32, i32* @LW_EXCLUSIVE, align 4
  %114 = call i32 @LWLockAcquire(i32 %112, i32 %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @XLogCtl, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = bitcast %struct.TYPE_7__* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_7__* @LogwrtResult to i8*), i8* align 4 %117, i64 8, i1 false)
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @LogwrtResult, i32 0, i32 1), align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %107
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @LogwrtResult, i32 0, i32 0), align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %122, %107
  %128 = load i32, i32* %3, align 4
  %129 = bitcast %struct.TYPE_5__* %2 to i64*
  %130 = load i64, i64* %129, align 4
  %131 = call i32 @XLogWrite(i64 %130, i32 %128)
  br label %132

132:                                              ; preds = %127, %122
  %133 = load i32, i32* @WALWriteLock, align 4
  %134 = call i32 @LWLockRelease(i32 %133)
  %135 = call i32 (...) @END_CRIT_SECTION()
  %136 = call i32 (...) @WalSndWakeupProcessRequests()
  %137 = load i32, i32* @InvalidXLogRecPtr, align 4
  %138 = call i32 @AdvanceXLInsertBuffer(i32 %137, i32 1)
  store i32 1, i32* %1, align 4
  br label %139

139:                                              ; preds = %132, %62, %8
  %140 = load i32, i32* %1, align 4
  ret i32 %140
}

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @XLByteInPrevSeg(i32, i32, i32) #1

declare dso_local i32 @XLogFileClose(...) #1

declare dso_local i64 @GetCurrentTimestamp(...) #1

declare dso_local i64 @TimestampDifferenceExceeds(i64, i64, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @WaitXLogInsertionsToFinish(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @XLogWrite(i64, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @WalSndWakeupProcessRequests(...) #1

declare dso_local i32 @AdvanceXLInsertBuffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
