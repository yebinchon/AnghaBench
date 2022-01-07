; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepGetSyncRecPtr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepGetSyncRecPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@SyncRepLock = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@SyncRepConfig = common dso_local global %struct.TYPE_2__* null, align 8
@SYNC_REP_PRIORITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @SyncRepGetSyncRecPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SyncRepGetSyncRecPtr(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* @SyncRepLock, align 4
  %12 = call i32 @LWLockHeldByMe(i32 %11)
  %13 = call i32 @Assert(i32 %12)
  %14 = load i32, i32* @InvalidXLogRecPtr, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @InvalidXLogRecPtr, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @InvalidXLogRecPtr, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @SyncRepGetSyncStandbys(i32* %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SyncRepConfig, align 8
  %28 = icmp eq %struct.TYPE_2__* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %10, align 8
  %31 = call i64 @list_length(i32* %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SyncRepConfig, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %26, %4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @list_free(i32* %37)
  store i32 0, i32* %5, align 4
  br label %63

39:                                               ; preds = %29
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SyncRepConfig, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SYNC_REP_PRIORITY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @SyncRepGetOldestSyncRecPtr(i32* %46, i32* %47, i32* %48, i32* %49)
  br label %60

51:                                               ; preds = %39
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SyncRepConfig, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @SyncRepGetNthLatestSyncRecPtr(i32* %52, i32* %53, i32* %54, i32* %55, i64 %58)
  br label %60

60:                                               ; preds = %51, %45
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @list_free(i32* %61)
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %36
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i32* @SyncRepGetSyncStandbys(i32*) #1

declare dso_local i64 @list_length(i32*) #1

declare dso_local i32 @list_free(i32*) #1

declare dso_local i32 @SyncRepGetOldestSyncRecPtr(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SyncRepGetNthLatestSyncRecPtr(i32*, i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
