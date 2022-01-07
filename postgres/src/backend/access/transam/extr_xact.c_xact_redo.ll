; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_xact_redo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_xact_redo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@XLOG_XACT_OPMASK = common dso_local global i64 0, align 8
@XLOG_XACT_COMMIT = common dso_local global i64 0, align 8
@XLOG_XACT_COMMIT_PREPARED = common dso_local global i64 0, align 8
@TwoPhaseStateLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@XLOG_XACT_ABORT = common dso_local global i64 0, align 8
@XLOG_XACT_ABORT_PREPARED = common dso_local global i64 0, align 8
@XLOG_XACT_PREPARE = common dso_local global i64 0, align 8
@XLOG_XACT_ASSIGNMENT = common dso_local global i64 0, align 8
@standbyState = common dso_local global i64 0, align 8
@STANDBY_INITIALIZED = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"xact_redo: unknown op code %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xact_redo(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %14 = call i64 @XLogRecGetInfo(%struct.TYPE_18__* %13)
  %15 = load i64, i64* @XLOG_XACT_OPMASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %3, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %18 = call i32 @XLogRecHasAnyBlockRefs(%struct.TYPE_18__* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @XLOG_XACT_COMMIT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %28 = call i64 @XLogRecGetData(%struct.TYPE_18__* %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %4, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = call i64 @XLogRecGetInfo(%struct.TYPE_18__* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ParseCommitRecord(i64 %31, i32* %32, %struct.TYPE_15__* %5)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %35 = call i32 @XLogRecGetXid(%struct.TYPE_18__* %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %40 = call i32 @XLogRecGetOrigin(%struct.TYPE_18__* %39)
  %41 = call i32 @xact_redo_commit(%struct.TYPE_15__* %5, i32 %35, i32 %38, i32 %40)
  br label %161

42:                                               ; preds = %1
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @XLOG_XACT_COMMIT_PREPARED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %48 = call i64 @XLogRecGetData(%struct.TYPE_18__* %47)
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %6, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %51 = call i64 @XLogRecGetInfo(%struct.TYPE_18__* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @ParseCommitRecord(i64 %51, i32* %52, %struct.TYPE_15__* %7)
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %60 = call i32 @XLogRecGetOrigin(%struct.TYPE_18__* %59)
  %61 = call i32 @xact_redo_commit(%struct.TYPE_15__* %7, i32 %55, i32 %58, i32 %60)
  %62 = load i32, i32* @TwoPhaseStateLock, align 4
  %63 = load i32, i32* @LW_EXCLUSIVE, align 4
  %64 = call i32 @LWLockAcquire(i32 %62, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PrepareRedoRemove(i32 %66, i32 0)
  %68 = load i32, i32* @TwoPhaseStateLock, align 4
  %69 = call i32 @LWLockRelease(i32 %68)
  br label %160

70:                                               ; preds = %42
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @XLOG_XACT_ABORT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %76 = call i64 @XLogRecGetData(%struct.TYPE_18__* %75)
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %8, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %79 = call i64 @XLogRecGetInfo(%struct.TYPE_18__* %78)
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @ParseAbortRecord(i64 %79, i32* %80, %struct.TYPE_16__* %9)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %83 = call i32 @XLogRecGetXid(%struct.TYPE_18__* %82)
  %84 = call i32 @xact_redo_abort(%struct.TYPE_16__* %9, i32 %83)
  br label %159

85:                                               ; preds = %70
  %86 = load i64, i64* %3, align 8
  %87 = load i64, i64* @XLOG_XACT_ABORT_PREPARED, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %85
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %91 = call i64 @XLogRecGetData(%struct.TYPE_18__* %90)
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** %10, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %94 = call i64 @XLogRecGetInfo(%struct.TYPE_18__* %93)
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @ParseAbortRecord(i64 %94, i32* %95, %struct.TYPE_16__* %11)
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @xact_redo_abort(%struct.TYPE_16__* %11, i32 %98)
  %100 = load i32, i32* @TwoPhaseStateLock, align 4
  %101 = load i32, i32* @LW_EXCLUSIVE, align 4
  %102 = call i32 @LWLockAcquire(i32 %100, i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @PrepareRedoRemove(i32 %104, i32 0)
  %106 = load i32, i32* @TwoPhaseStateLock, align 4
  %107 = call i32 @LWLockRelease(i32 %106)
  br label %158

108:                                              ; preds = %85
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @XLOG_XACT_PREPARE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %108
  %113 = load i32, i32* @TwoPhaseStateLock, align 4
  %114 = load i32, i32* @LW_EXCLUSIVE, align 4
  %115 = call i32 @LWLockAcquire(i32 %113, i32 %114)
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %117 = call i64 @XLogRecGetData(%struct.TYPE_18__* %116)
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %125 = call i32 @XLogRecGetOrigin(%struct.TYPE_18__* %124)
  %126 = call i32 @PrepareRedoAdd(i64 %117, i32 %120, i32 %123, i32 %125)
  %127 = load i32, i32* @TwoPhaseStateLock, align 4
  %128 = call i32 @LWLockRelease(i32 %127)
  br label %157

129:                                              ; preds = %108
  %130 = load i64, i64* %3, align 8
  %131 = load i64, i64* @XLOG_XACT_ASSIGNMENT, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %135 = call i64 @XLogRecGetData(%struct.TYPE_18__* %134)
  %136 = inttoptr i64 %135 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %136, %struct.TYPE_17__** %12, align 8
  %137 = load i64, i64* @standbyState, align 8
  %138 = load i64, i64* @STANDBY_INITIALIZED, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ProcArrayApplyXidAssignment(i32 %143, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %140, %133
  br label %156

152:                                              ; preds = %129
  %153 = load i32, i32* @PANIC, align 4
  %154 = load i64, i64* %3, align 8
  %155 = call i32 @elog(i32 %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %154)
  br label %156

156:                                              ; preds = %152, %151
  br label %157

157:                                              ; preds = %156, %112
  br label %158

158:                                              ; preds = %157, %89
  br label %159

159:                                              ; preds = %158, %74
  br label %160

160:                                              ; preds = %159, %46
  br label %161

161:                                              ; preds = %160, %26
  ret void
}

declare dso_local i64 @XLogRecGetInfo(%struct.TYPE_18__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogRecHasAnyBlockRefs(%struct.TYPE_18__*) #1

declare dso_local i64 @XLogRecGetData(%struct.TYPE_18__*) #1

declare dso_local i32 @ParseCommitRecord(i64, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @xact_redo_commit(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @XLogRecGetXid(%struct.TYPE_18__*) #1

declare dso_local i32 @XLogRecGetOrigin(%struct.TYPE_18__*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @PrepareRedoRemove(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ParseAbortRecord(i64, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @xact_redo_abort(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @PrepareRedoAdd(i64, i32, i32, i32) #1

declare dso_local i32 @ProcArrayApplyXidAssignment(i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
