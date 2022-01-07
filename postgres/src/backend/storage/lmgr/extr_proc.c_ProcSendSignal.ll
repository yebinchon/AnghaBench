; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_ProcSendSignal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_ProcSendSignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ProcStructLock = common dso_local global i32 0, align 4
@ProcGlobal = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcSendSignal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  %4 = call i64 (...) @RecoveryInProgress()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load i32, i32* @ProcStructLock, align 4
  %8 = call i32 @SpinLockAcquire(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ProcGlobal, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ProcGlobal, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %3, align 8
  br label %18

18:                                               ; preds = %14, %6
  %19 = load i32, i32* @ProcStructLock, align 4
  %20 = call i32 @SpinLockRelease(i32 %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = call %struct.TYPE_4__* @BackendPidGetProc(i32 %25)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %3, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @SetLatch(i32* %32)
  br label %34

34:                                               ; preds = %30, %27
  ret void
}

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @SpinLockAcquire(i32) #1

declare dso_local i32 @SpinLockRelease(i32) #1

declare dso_local %struct.TYPE_4__* @BackendPidGetProc(i32) #1

declare dso_local i32 @SetLatch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
