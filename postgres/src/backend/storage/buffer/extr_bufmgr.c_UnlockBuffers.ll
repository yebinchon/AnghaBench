; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_UnlockBuffers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_UnlockBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@PinCountWaitBuf = common dso_local global %struct.TYPE_5__* null, align 8
@BM_PIN_COUNT_WAITER = common dso_local global i32 0, align 4
@MyProcPid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnlockBuffers() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PinCountWaitBuf, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %8 = call i32 @LockBufHdr(%struct.TYPE_5__* %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @BM_PIN_COUNT_WAITER, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MyProcPid, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, i32* @BM_PIN_COUNT_WAITER, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %13, %6
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @UnlockBufHdr(%struct.TYPE_5__* %25, i32 %26)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @PinCountWaitBuf, align 8
  br label %28

28:                                               ; preds = %24, %0
  ret void
}

declare dso_local i32 @LockBufHdr(%struct.TYPE_5__*) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
