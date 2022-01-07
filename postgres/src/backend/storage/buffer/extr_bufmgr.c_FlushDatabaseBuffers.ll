; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_FlushDatabaseBuffers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_FlushDatabaseBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@CurrentResourceOwner = common dso_local global i32 0, align 4
@NBuffers = common dso_local global i32 0, align 4
@BM_VALID = common dso_local global i32 0, align 4
@BM_DIRTY = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FlushDatabaseBuffers(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @CurrentResourceOwner, align 4
  %7 = call i32 @ResourceOwnerEnlargeBuffers(i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %63, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NBuffers, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_13__* @GetBufferDescriptor(i32 %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %2, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %63

23:                                               ; preds = %12
  %24 = call i32 (...) @ReservePrivateRefCountEntry()
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = call i32 @LockBufHdr(%struct.TYPE_13__* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BM_VALID, align 4
  %37 = load i32, i32* @BM_DIRTY, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = load i32, i32* @BM_VALID, align 4
  %41 = load i32, i32* @BM_DIRTY, align 4
  %42 = or i32 %40, %41
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %34
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = call i32 @PinBuffer_Locked(%struct.TYPE_13__* %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_13__* %47)
  %49 = load i32, i32* @LW_SHARED, align 4
  %50 = call i32 @LWLockAcquire(i32 %48, i32 %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = call i32 @FlushBuffer(%struct.TYPE_13__* %51, i32* null)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_13__* %53)
  %55 = call i32 @LWLockRelease(i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = call i32 @UnpinBuffer(%struct.TYPE_13__* %56, i32 1)
  br label %62

58:                                               ; preds = %34, %23
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @UnlockBufHdr(%struct.TYPE_13__* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %44
  br label %63

63:                                               ; preds = %62, %22
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %8

66:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ResourceOwnerEnlargeBuffers(i32) #1

declare dso_local %struct.TYPE_13__* @GetBufferDescriptor(i32) #1

declare dso_local i32 @ReservePrivateRefCountEntry(...) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_13__*) #1

declare dso_local i32 @PinBuffer_Locked(%struct.TYPE_13__*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @BufferDescriptorGetContentLock(%struct.TYPE_13__*) #1

declare dso_local i32 @FlushBuffer(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @UnpinBuffer(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
