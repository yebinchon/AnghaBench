; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_asyncQueueAdvanceTail.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_asyncQueueAdvanceTail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AsyncQueueLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@QUEUE_HEAD = common dso_local global i32 0, align 4
@QUEUE_FIRST_LISTENER = common dso_local global i64 0, align 8
@InvalidPid = common dso_local global i64 0, align 8
@QUEUE_TAIL = common dso_local global i32 0, align 4
@SLRU_PAGES_PER_SEGMENT = common dso_local global i32 0, align 4
@AsyncCtl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @asyncQueueAdvanceTail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asyncQueueAdvanceTail() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* @AsyncQueueLock, align 4
  %7 = load i32, i32* @LW_EXCLUSIVE, align 4
  %8 = call i32 @LWLockAcquire(i32 %6, i32 %7)
  %9 = load i32, i32* @QUEUE_HEAD, align 4
  store i32 %9, i32* %1, align 4
  %10 = load i64, i64* @QUEUE_FIRST_LISTENER, align 8
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %25, %0
  %12 = load i64, i64* %5, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @QUEUE_BACKEND_PID(i64 %15)
  %17 = load i64, i64* @InvalidPid, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @QUEUE_BACKEND_POS(i64 %22)
  %24 = call i32 @QUEUE_POS_MIN(i32 %21, i32 %23)
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %14
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @QUEUE_NEXT_LISTENER(i64 %26)
  store i64 %27, i64* %5, align 8
  br label %11

28:                                               ; preds = %11
  %29 = load i32, i32* @QUEUE_TAIL, align 4
  %30 = call i32 @QUEUE_POS_PAGE(i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %1, align 4
  store i32 %31, i32* @QUEUE_TAIL, align 4
  %32 = load i32, i32* @AsyncQueueLock, align 4
  %33 = call i32 @LWLockRelease(i32 %32)
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @QUEUE_POS_PAGE(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %39 = srem i32 %37, %38
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @asyncQueuePagePrecedes(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %28
  %46 = load i32, i32* @AsyncCtl, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @SimpleLruTruncate(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %28
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @QUEUE_BACKEND_PID(i64) #1

declare dso_local i32 @QUEUE_POS_MIN(i32, i32) #1

declare dso_local i32 @QUEUE_BACKEND_POS(i64) #1

declare dso_local i64 @QUEUE_NEXT_LISTENER(i64) #1

declare dso_local i32 @QUEUE_POS_PAGE(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i64 @asyncQueuePagePrecedes(i32, i32) #1

declare dso_local i32 @SimpleLruTruncate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
