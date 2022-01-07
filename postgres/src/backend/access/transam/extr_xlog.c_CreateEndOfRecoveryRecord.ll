; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CreateEndOfRecoveryRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CreateEndOfRecoveryRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i64 }
%struct.TYPE_4__ = type { i32, i8*, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can only be used to end recovery\00", align 1
@ThisTimeLineID = common dso_local global i8* null, align 8
@XLogCtl = common dso_local global %struct.TYPE_5__* null, align 8
@RM_XLOG_ID = common dso_local global i32 0, align 4
@XLOG_END_OF_RECOVERY = common dso_local global i32 0, align 4
@ControlFileLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ControlFile = common dso_local global %struct.TYPE_6__* null, align 8
@LocalXLogInsertAllowed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CreateEndOfRecoveryRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateEndOfRecoveryRecord() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @RecoveryInProgress()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @ERROR, align 4
  %7 = call i32 @elog(i32 %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i32 (...) @GetCurrentTimestamp()
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = call i32 (...) @WALInsertLockAcquireExclusive()
  %12 = load i8*, i8** @ThisTimeLineID, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = call i32 (...) @WALInsertLockRelease()
  %19 = call i32 (...) @LocalSetXLogInsertAllowed()
  %20 = call i32 (...) @START_CRIT_SECTION()
  %21 = call i32 (...) @XLogBeginInsert()
  %22 = bitcast %struct.TYPE_4__* %1 to i8*
  %23 = call i32 @XLogRegisterData(i8* %22, i32 24)
  %24 = load i32, i32* @RM_XLOG_ID, align 4
  %25 = load i32, i32* @XLOG_END_OF_RECOVERY, align 4
  %26 = call i32 @XLogInsert(i32 %24, i32 %25)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @XLogFlush(i32 %27)
  %29 = load i32, i32* @ControlFileLock, align 4
  %30 = load i32, i32* @LW_EXCLUSIVE, align 4
  %31 = call i32 @LWLockAcquire(i32 %29, i32 %30)
  %32 = call i64 @time(i32* null)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ControlFile, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ControlFile, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** @ThisTimeLineID, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ControlFile, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = call i32 (...) @UpdateControlFile()
  %42 = load i32, i32* @ControlFileLock, align 4
  %43 = call i32 @LWLockRelease(i32 %42)
  %44 = call i32 (...) @END_CRIT_SECTION()
  store i32 -1, i32* @LocalXLogInsertAllowed, align 4
  ret void
}

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @WALInsertLockAcquireExclusive(...) #1

declare dso_local i32 @WALInsertLockRelease(...) #1

declare dso_local i32 @LocalSetXLogInsertAllowed(...) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @XLogFlush(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @UpdateControlFile(...) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
