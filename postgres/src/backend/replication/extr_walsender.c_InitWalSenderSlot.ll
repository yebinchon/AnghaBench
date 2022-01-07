; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_InitWalSenderSlot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_InitWalSenderSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i64, i32*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@WalSndCtl = common dso_local global %struct.TYPE_6__* null, align 8
@MyWalSnd = common dso_local global %struct.TYPE_5__* null, align 8
@max_wal_senders = common dso_local global i32 0, align 4
@MyProcPid = common dso_local global i64 0, align 8
@InvalidXLogRecPtr = common dso_local global i8* null, align 8
@WALSNDSTATE_STARTUP = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_7__* null, align 8
@WalSndKill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitWalSenderSlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitWalSenderSlot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WalSndCtl, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @Assert(i32 %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyWalSnd, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @Assert(i32 %9)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %68, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @max_wal_senders, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %71

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WalSndCtl, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %2, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  %24 = call i32 @SpinLockAcquire(i32* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  %32 = call i32 @SpinLockRelease(i32* %31)
  br label %68

33:                                               ; preds = %15
  %34 = load i64, i64* @MyProcPid, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 11
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 9
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 8
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 -1, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i32 -1, i32* %54, align 8
  %55 = load i32, i32* @WALSNDSTATE_STARTUP, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 6
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = call i32 @SpinLockRelease(i32* %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** @MyWalSnd, align 8
  br label %71

68:                                               ; preds = %29
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %11

71:                                               ; preds = %33, %11
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyWalSnd, align 8
  %73 = icmp ne %struct.TYPE_5__* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @Assert(i32 %74)
  %76 = load i32, i32* @WalSndKill, align 4
  %77 = call i32 @on_shmem_exit(i32 %76, i32 0)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
