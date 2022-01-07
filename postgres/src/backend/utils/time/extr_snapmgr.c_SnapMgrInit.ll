; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_SnapMgrInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_SnapMgrInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i8*, i64, i32, i64, i8*, i32, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"OldSnapshotControlData\00", align 1
@oldSnapshotControl = common dso_local global %struct.TYPE_3__* null, align 8
@InvalidTransactionId = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SnapMgrInit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @SnapMgrShmemSize()
  %3 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %2, i32* %1)
  %4 = inttoptr i64 %3 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 10
  %10 = call i32 @SpinLockInit(i32* %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 9
  store volatile i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 8
  %15 = call i32 @SpinLockInit(i32* %14)
  %16 = load i8*, i8** @InvalidTransactionId, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 7
  store volatile i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 6
  store volatile i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  %23 = call i32 @SpinLockInit(i32* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  store volatile i64 0, i64* %25, align 8
  %26 = load i8*, i8** @InvalidTransactionId, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  store volatile i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store volatile i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store volatile i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store volatile i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %7, %0
  ret void
}

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @SnapMgrShmemSize(...) #1

declare dso_local i32 @SpinLockInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
