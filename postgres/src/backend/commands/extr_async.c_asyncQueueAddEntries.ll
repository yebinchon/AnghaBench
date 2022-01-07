; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_asyncQueueAddEntries.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_asyncQueueAddEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i64* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i8*, i32 }

@AsyncCtlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@QUEUE_HEAD = common dso_local global i32 0, align 4
@AsyncCtl = common dso_local global %struct.TYPE_12__* null, align 8
@InvalidTransactionId = common dso_local global i32 0, align 4
@QUEUE_PAGESIZE = common dso_local global i64 0, align 8
@pendingNotifies = common dso_local global %struct.TYPE_11__* null, align 8
@InvalidOid = common dso_local global i32 0, align 4
@QUEUE_CLEANUP_DELAY = common dso_local global i32 0, align 4
@backendTryAdvanceTail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @asyncQueueAddEntries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @asyncQueueAddEntries(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32, i32* @AsyncCtlLock, align 4
  %10 = load i32, i32* @LW_EXCLUSIVE, align 4
  %11 = call i32 @LWLockAcquire(i32 %9, i32 %10)
  %12 = load i32, i32* @QUEUE_HEAD, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @QUEUE_POS_PAGE(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AsyncCtl, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @InvalidTransactionId, align 4
  %18 = call i32 @SimpleLruReadPage(%struct.TYPE_12__* %15, i32 %16, i32 1, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AsyncCtl, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %97, %1
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %98

30:                                               ; preds = %27
  %31 = load i32*, i32** %2, align 8
  %32 = call i64 @lfirst(i32* %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @asyncQueueNotificationToEntry(i32* %34, %struct.TYPE_10__* %3)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @QUEUE_POS_OFFSET(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %39, %41
  %43 = load i64, i64* @QUEUE_PAGESIZE, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pendingNotifies, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = call i32* @lnext(i32 %48, i32* %49)
  store i32* %50, i32** %2, align 8
  br label %65

51:                                               ; preds = %30
  %52 = load i64, i64* @QUEUE_PAGESIZE, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %52, %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* @InvalidOid, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 0, i8* %61, align 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %51, %45
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AsyncCtl, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @memcpy(i64 %77, %struct.TYPE_10__* %3, i64 %79)
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @asyncQueueAdvance(i32* %4, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %65
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AsyncCtl, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @QUEUE_POS_PAGE(i32 %87)
  %89 = call i32 @SimpleLruZeroPage(%struct.TYPE_12__* %86, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @QUEUE_POS_PAGE(i32 %90)
  %92 = load i32, i32* @QUEUE_CLEANUP_DELAY, align 4
  %93 = srem i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 1, i32* @backendTryAdvanceTail, align 4
  br label %96

96:                                               ; preds = %95, %85
  br label %98

97:                                               ; preds = %65
  br label %27

98:                                               ; preds = %96, %27
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* @QUEUE_HEAD, align 4
  %100 = load i32, i32* @AsyncCtlLock, align 4
  %101 = call i32 @LWLockRelease(i32 %100)
  %102 = load i32*, i32** %2, align 8
  ret i32* %102
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @QUEUE_POS_PAGE(i32) #1

declare dso_local i32 @SimpleLruReadPage(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32 @asyncQueueNotificationToEntry(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @QUEUE_POS_OFFSET(i32) #1

declare dso_local i32* @lnext(i32, i32*) #1

declare dso_local i32 @memcpy(i64, %struct.TYPE_10__*, i64) #1

declare dso_local i64 @asyncQueueAdvance(i32*, i64) #1

declare dso_local i32 @SimpleLruZeroPage(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
