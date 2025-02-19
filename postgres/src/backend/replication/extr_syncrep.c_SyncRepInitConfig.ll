; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepInitConfig.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepInitConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MyWalSnd = common dso_local global %struct.TYPE_2__* null, align 8
@SyncRepLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"standby \22%s\22 now has synchronous standby priority %u\00", align 1
@application_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SyncRepInitConfig() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @SyncRepGetStandbyPriority()
  store i32 %2, i32* %1, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyWalSnd, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %0
  %9 = load i32, i32* @SyncRepLock, align 4
  %10 = load i32, i32* @LW_EXCLUSIVE, align 4
  %11 = call i32 @LWLockAcquire(i32 %9, i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyWalSnd, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @SyncRepLock, align 4
  %16 = call i32 @LWLockRelease(i32 %15)
  %17 = load i32, i32* @DEBUG1, align 4
  %18 = load i32, i32* @application_name, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = call i32 @ereport(i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %8, %0
  ret void
}

declare dso_local i32 @SyncRepGetStandbyPriority(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
