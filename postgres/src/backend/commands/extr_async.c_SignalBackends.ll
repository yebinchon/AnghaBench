; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_SignalBackends.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_SignalBackends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxBackends = common dso_local global i32 0, align 4
@AsyncQueueLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@QUEUE_FIRST_LISTENER = common dso_local global i64 0, align 8
@InvalidPid = common dso_local global i64 0, align 8
@MyProcPid = common dso_local global i64 0, align 8
@MyDatabaseId = common dso_local global i64 0, align 8
@QUEUE_HEAD = common dso_local global i32 0, align 4
@QUEUE_CLEANUP_DELAY = common dso_local global i64 0, align 8
@PROCSIG_NOTIFY_INTERRUPT = common dso_local global i32 0, align 4
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not signal backend with PID %d: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SignalBackends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SignalBackends() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = load i32, i32* @MaxBackends, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = call i64 @palloc(i32 %12)
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %1, align 8
  %15 = load i32, i32* @MaxBackends, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @palloc(i32 %18)
  %20 = inttoptr i64 %19 to i64*
  store i64* %20, i64** %2, align 8
  store i32 0, i32* %3, align 4
  %21 = load i32, i32* @AsyncQueueLock, align 4
  %22 = load i32, i32* @LW_EXCLUSIVE, align 4
  %23 = call i32 @LWLockAcquire(i32 %21, i32 %22)
  %24 = load i64, i64* @QUEUE_FIRST_LISTENER, align 8
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %77, %0
  %26 = load i64, i64* %4, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %80

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @QUEUE_BACKEND_PID(i64 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @InvalidPid, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @MyProcPid, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %77

40:                                               ; preds = %28
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @QUEUE_BACKEND_POS(i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @QUEUE_BACKEND_DBOID(i64 %43)
  %45 = load i64, i64* @MyDatabaseId, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @QUEUE_HEAD, align 4
  %50 = call i64 @QUEUE_POS_EQUAL(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %77

53:                                               ; preds = %47
  br label %64

54:                                               ; preds = %40
  %55 = load i32, i32* @QUEUE_HEAD, align 4
  %56 = call i32 @QUEUE_POS_PAGE(i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @QUEUE_POS_PAGE(i32 %57)
  %59 = call i64 @asyncQueuePageDiff(i32 %56, i32 %58)
  %60 = load i64, i64* @QUEUE_CLEANUP_DELAY, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %77

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %53
  %65 = load i64, i64* %5, align 8
  %66 = load i64*, i64** %1, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 %65, i64* %69, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i64*, i64** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %70, i64* %74, align 8
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %64, %62, %52, %39
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @QUEUE_NEXT_LISTENER(i64 %78)
  store i64 %79, i64* %4, align 8
  br label %25

80:                                               ; preds = %25
  %81 = load i32, i32* @AsyncQueueLock, align 4
  %82 = call i32 @LWLockRelease(i32 %81)
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %107, %80
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %83
  %88 = load i64*, i64** %1, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i32, i32* @PROCSIG_NOTIFY_INTERRUPT, align 4
  %95 = load i64*, i64** %2, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @SendProcSignal(i64 %93, i32 %94, i64 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %87
  %103 = load i32, i32* @DEBUG3, align 4
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @elog(i32 %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %102, %87
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %83

110:                                              ; preds = %83
  %111 = load i64*, i64** %1, align 8
  %112 = call i32 @pfree(i64* %111)
  %113 = load i64*, i64** %2, align 8
  %114 = call i32 @pfree(i64* %113)
  ret void
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @QUEUE_BACKEND_PID(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @QUEUE_BACKEND_POS(i64) #1

declare dso_local i64 @QUEUE_BACKEND_DBOID(i64) #1

declare dso_local i64 @QUEUE_POS_EQUAL(i32, i32) #1

declare dso_local i64 @asyncQueuePageDiff(i32, i32) #1

declare dso_local i32 @QUEUE_POS_PAGE(i32) #1

declare dso_local i64 @QUEUE_NEXT_LISTENER(i64) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i64 @SendProcSignal(i64, i32, i64) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @pfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
