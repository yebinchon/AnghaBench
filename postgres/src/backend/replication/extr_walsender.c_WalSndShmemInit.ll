; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndShmemInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndShmemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Wal Sender Ctl\00", align 1
@WalSndCtl = common dso_local global %struct.TYPE_5__* null, align 8
@NUM_SYNC_REP_WAIT_MODE = common dso_local global i32 0, align 4
@max_wal_senders = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WalSndShmemInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = call i32 (...) @WalSndShmemSize()
  %5 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %4, i32* %1)
  %6 = inttoptr i64 %5 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** @WalSndCtl, align 8
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @WalSndCtl, align 8
  %11 = call i32 (...) @WalSndShmemSize()
  %12 = call i32 @MemSet(%struct.TYPE_5__* %10, i32 0, i32 %11)
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %25, %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @NUM_SYNC_REP_WAIT_MODE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @WalSndCtl, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @SHMQueueInit(i32* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %13

28:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @max_wal_senders, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @WalSndCtl, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %3, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @SpinLockInit(i32* %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %29

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46, %0
  ret void
}

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @WalSndShmemSize(...) #1

declare dso_local i32 @MemSet(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SHMQueueInit(i32*) #1

declare dso_local i32 @SpinLockInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
