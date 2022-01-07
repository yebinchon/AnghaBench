; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_SyncOneBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_SyncOneBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@BUF_REUSABLE = common dso_local global i32 0, align 4
@BM_VALID = common dso_local global i32 0, align 4
@BM_DIRTY = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@BUF_WRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @SyncOneBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SyncOneBuffer(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_9__* @GetBufferDescriptor(i32 %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = call i32 (...) @ReservePrivateRefCountEntry()
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = call i32 @LockBufHdr(%struct.TYPE_9__* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @BUF_STATE_GET_REFCOUNT(i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @BUF_STATE_GET_USAGECOUNT(i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @BUF_REUSABLE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %37

28:                                               ; preds = %20, %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @UnlockBufHdr(%struct.TYPE_9__* %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %74

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @BM_VALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @BM_DIRTY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @UnlockBufHdr(%struct.TYPE_9__* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %74

52:                                               ; preds = %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = call i32 @PinBuffer_Locked(%struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_9__* %55)
  %57 = load i32, i32* @LW_SHARED, align 4
  %58 = call i32 @LWLockAcquire(i32 %56, i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = call i32 @FlushBuffer(%struct.TYPE_9__* %59, i32* null)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_9__* %61)
  %63 = call i32 @LWLockRelease(i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = call i32 @UnpinBuffer(%struct.TYPE_9__* %67, i32 1)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @ScheduleBufferTagForWriteback(i32* %69, i32* %11)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @BUF_WRITTEN, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %52, %47, %31
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_9__* @GetBufferDescriptor(i32) #1

declare dso_local i32 @ReservePrivateRefCountEntry(...) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_9__*) #1

declare dso_local i64 @BUF_STATE_GET_REFCOUNT(i32) #1

declare dso_local i64 @BUF_STATE_GET_USAGECOUNT(i32) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @PinBuffer_Locked(%struct.TYPE_9__*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @BufferDescriptorGetContentLock(%struct.TYPE_9__*) #1

declare dso_local i32 @FlushBuffer(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @UnpinBuffer(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ScheduleBufferTagForWriteback(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
