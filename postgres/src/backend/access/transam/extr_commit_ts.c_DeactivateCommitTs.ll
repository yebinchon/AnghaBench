; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_DeactivateCommitTs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_DeactivateCommitTs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@CommitTsLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@commitTsShared = common dso_local global %struct.TYPE_5__* null, align 8
@InvalidTransactionId = common dso_local global i8* null, align 8
@InvalidRepOriginId = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_6__* null, align 8
@CommitTsControlLock = common dso_local global i32 0, align 4
@CommitTsCtl = common dso_local global i32 0, align 4
@SlruScanDirCbDeleteAll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @DeactivateCommitTs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DeactivateCommitTs() #0 {
  %1 = load i32, i32* @CommitTsLock, align 4
  %2 = load i32, i32* @LW_EXCLUSIVE, align 4
  %3 = call i32 @LWLockAcquire(i32 %1, i32 %2)
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commitTsShared, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load i8*, i8** @InvalidTransactionId, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commitTsShared, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commitTsShared, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @TIMESTAMP_NOBEGIN(i32 %12)
  %14 = load i32, i32* @InvalidRepOriginId, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @commitTsShared, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i8*, i8** @InvalidTransactionId, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @InvalidTransactionId, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @CommitTsLock, align 4
  %25 = call i32 @LWLockRelease(i32 %24)
  %26 = load i32, i32* @CommitTsControlLock, align 4
  %27 = load i32, i32* @LW_EXCLUSIVE, align 4
  %28 = call i32 @LWLockAcquire(i32 %26, i32 %27)
  %29 = load i32, i32* @CommitTsCtl, align 4
  %30 = load i32, i32* @SlruScanDirCbDeleteAll, align 4
  %31 = call i32 @SlruScanDirectory(i32 %29, i32 %30, i32* null)
  %32 = load i32, i32* @CommitTsControlLock, align 4
  %33 = call i32 @LWLockRelease(i32 %32)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @TIMESTAMP_NOBEGIN(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @SlruScanDirectory(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
