; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_InvalidateBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_InvalidateBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@BM_LOCKED = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"buffer is pinned in InvalidateBuffer\00", align 1
@BUF_FLAG_MASK = common dso_local global i32 0, align 4
@BUF_USAGECOUNT_MASK = common dso_local global i32 0, align 4
@BM_TAG_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @InvalidateBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InvalidateBuffer(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = call i32 @pg_atomic_read_u32(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @BM_LOCKED, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @UnlockBufHdr(%struct.TYPE_8__* %18, i32 %19)
  %21 = call i32 @BufTableHashCode(i32* %3)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32* @BufMappingPartitionLock(i32 %22)
  store i32* %23, i32** %5, align 8
  br label %24

24:                                               ; preds = %59, %1
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @LW_EXCLUSIVE, align 4
  %27 = call i32 @LWLockAcquire(i32* %25, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = call i32 @LockBufHdr(%struct.TYPE_8__* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @BUFFERTAGS_EQUAL(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @UnlockBufHdr(%struct.TYPE_8__* %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @LWLockRelease(i32* %40)
  br label %91

42:                                               ; preds = %24
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @BUF_STATE_GET_REFCOUNT(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @UnlockBufHdr(%struct.TYPE_8__* %47, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @LWLockRelease(i32* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = call i32 @BufferDescriptorGetBuffer(%struct.TYPE_8__* %52)
  %54 = call i64 @GetPrivateRefCount(i32 %53)
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @ERROR, align 4
  %58 = call i32 @elog(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %46
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = call i32 @WaitIO(%struct.TYPE_8__* %60)
  br label %24

62:                                               ; preds = %42
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @BUF_FLAG_MASK, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %6, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CLEAR_BUFFERTAG(i32 %68)
  %70 = load i32, i32* @BUF_FLAG_MASK, align 4
  %71 = load i32, i32* @BUF_USAGECOUNT_MASK, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @UnlockBufHdr(%struct.TYPE_8__* %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @BM_TAG_VALID, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %62
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @BufTableDelete(i32* %3, i32 %84)
  br label %86

86:                                               ; preds = %83, %62
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @LWLockRelease(i32* %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = call i32 @StrategyFreeBuffer(%struct.TYPE_8__* %89)
  br label %91

91:                                               ; preds = %86, %36
  ret void
}

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @BufTableHashCode(i32*) #1

declare dso_local i32* @BufMappingPartitionLock(i32) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_8__*) #1

declare dso_local i32 @BUFFERTAGS_EQUAL(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i64 @BUF_STATE_GET_REFCOUNT(i32) #1

declare dso_local i64 @GetPrivateRefCount(i32) #1

declare dso_local i32 @BufferDescriptorGetBuffer(%struct.TYPE_8__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @WaitIO(%struct.TYPE_8__*) #1

declare dso_local i32 @CLEAR_BUFFERTAG(i32) #1

declare dso_local i32 @BufTableDelete(i32*, i32) #1

declare dso_local i32 @StrategyFreeBuffer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
