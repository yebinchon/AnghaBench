; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_LockBufferForCleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_LockBufferForCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@PinCountWaitBuf = common dso_local global %struct.TYPE_6__* null, align 8
@LocalRefCount = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"incorrect local pin count: %d\00", align 1
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BM_PIN_COUNT_WAITER = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"multiple backends attempting to wait for pincount 1\00", align 1
@MyProcPid = common dso_local global i64 0, align 8
@InHotStandby = common dso_local global i64 0, align 8
@PG_WAIT_BUFFER_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LockBufferForCleanup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @BufferIsValid(i32 %5)
  %7 = call i32 @Assert(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PinCountWaitBuf, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @BufferIsLocal(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load i32*, i32** @LocalRefCount, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 0, %17
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32*, i32** @LocalRefCount, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sub nsw i32 0, %27
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @elog(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %24, %15
  br label %127

35:                                               ; preds = %1
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @GetPrivateRefCount(i32 %36)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @GetPrivateRefCount(i32 %41)
  %43 = call i32 (i32, i8*, ...) @elog(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %2, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call %struct.TYPE_6__* @GetBufferDescriptor(i32 %46)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %3, align 8
  br label %48

48:                                               ; preds = %123, %44
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %51 = call i32 @LockBuffer(i32 %49, i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = call i32 @LockBufHdr(%struct.TYPE_6__* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @BUF_STATE_GET_REFCOUNT(i32 %54)
  %56 = icmp sgt i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @Assert(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @BUF_STATE_GET_REFCOUNT(i32 %59)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @UnlockBufHdr(%struct.TYPE_6__* %63, i32 %64)
  br label %127

66:                                               ; preds = %48
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @BM_PIN_COUNT_WAITER, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @UnlockBufHdr(%struct.TYPE_6__* %72, i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %77 = call i32 @LockBuffer(i32 %75, i32 %76)
  %78 = load i32, i32* @ERROR, align 4
  %79 = call i32 (i32, i8*, ...) @elog(i32 %78, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %71, %66
  %81 = load i64, i64* @MyProcPid, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** @PinCountWaitBuf, align 8
  %85 = load i32, i32* @BM_PIN_COUNT_WAITER, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @UnlockBufHdr(%struct.TYPE_6__* %88, i32 %89)
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %93 = call i32 @LockBuffer(i32 %91, i32 %92)
  %94 = load i64, i64* @InHotStandby, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %80
  %97 = load i32, i32* %2, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @SetStartupBufferPinWaitBufId(i32 %98)
  %100 = call i32 (...) @ResolveRecoveryConflictWithBufferPin()
  %101 = call i32 @SetStartupBufferPinWaitBufId(i32 -1)
  br label %105

102:                                              ; preds = %80
  %103 = load i32, i32* @PG_WAIT_BUFFER_PIN, align 4
  %104 = call i32 @ProcWaitForSignal(i32 %103)
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = call i32 @LockBufHdr(%struct.TYPE_6__* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @BM_PIN_COUNT_WAITER, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %105
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MyProcPid, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load i32, i32* @BM_PIN_COUNT_WAITER, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %4, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %118, %112, %105
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @UnlockBufHdr(%struct.TYPE_6__* %124, i32 %125)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @PinCountWaitBuf, align 8
  br label %48

127:                                              ; preds = %62, %34
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i64 @BufferIsLocal(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @GetPrivateRefCount(i32) #1

declare dso_local %struct.TYPE_6__* @GetBufferDescriptor(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_6__*) #1

declare dso_local i32 @BUF_STATE_GET_REFCOUNT(i32) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @SetStartupBufferPinWaitBufId(i32) #1

declare dso_local i32 @ResolveRecoveryConflictWithBufferPin(...) #1

declare dso_local i32 @ProcWaitForSignal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
