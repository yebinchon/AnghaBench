; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_StandbyReleaseLockList.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_StandbyReleaseLockList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@DEBUG4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"releasing recovery lock: xid %u db %u rel %u\00", align 1
@AccessExclusiveLock = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [109 x i8] c"RecoveryLockLists contains entry for lock no longer recorded by lock manager: xid %u database %u relation %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @StandbyReleaseLockList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StandbyReleaseLockList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  br label %5

5:                                                ; preds = %48, %1
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %53

8:                                                ; preds = %5
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @linitial(i32* %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %3, align 8
  %12 = load i32, i32* @DEBUG4, align 4
  %13 = call i32 @trace_recovery(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @elog(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SET_LOCKTAG_RELATION(i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* @AccessExclusiveLock, align 4
  %33 = call i32 @LockRelease(i32* %4, i32 %32, i32 1)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %8
  %36 = load i32, i32* @LOG, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i32 %45)
  %47 = call i32 @Assert(i32 0)
  br label %48

48:                                               ; preds = %35, %8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = call i32 @pfree(%struct.TYPE_3__* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32* @list_delete_first(i32* %51)
  store i32* %52, i32** %2, align 8
  br label %5

53:                                               ; preds = %5
  ret void
}

declare dso_local i64 @linitial(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @trace_recovery(i32) #1

declare dso_local i32 @SET_LOCKTAG_RELATION(i32, i32, i32) #1

declare dso_local i32 @LockRelease(i32*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_3__*) #1

declare dso_local i32* @list_delete_first(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
