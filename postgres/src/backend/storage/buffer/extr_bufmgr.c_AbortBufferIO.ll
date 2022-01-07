; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_AbortBufferIO.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_AbortBufferIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@InProgressBuf = common dso_local global %struct.TYPE_9__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@BM_IO_IN_PROGRESS = common dso_local global i32 0, align 4
@IsForInput = common dso_local global i64 0, align 8
@BM_DIRTY = common dso_local global i32 0, align 4
@BM_VALID = common dso_local global i32 0, align 4
@BM_IO_ERROR = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not write block %u of %s\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Multiple failures --- write error might be permanent.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AbortBufferIO() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** @InProgressBuf, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %1, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %78

7:                                                ; preds = %0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %9 = call i32 @BufferDescriptorGetIOLock(%struct.TYPE_9__* %8)
  %10 = load i32, i32* @LW_EXCLUSIVE, align 4
  %11 = call i32 @LWLockAcquire(i32 %9, i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %13 = call i32 @LockBufHdr(%struct.TYPE_9__* %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @BM_IO_IN_PROGRESS, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @Assert(i32 %16)
  %18 = load i64, i64* @IsForInput, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %7
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @BM_DIRTY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @BM_VALID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @UnlockBufHdr(%struct.TYPE_9__* %35, i32 %36)
  br label %74

38:                                               ; preds = %7
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @BM_DIRTY, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @Assert(i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @UnlockBufHdr(%struct.TYPE_9__* %43, i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @BM_IO_ERROR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %38
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @relpathperm(i32 %54, i32 %58)
  store i8* %59, i8** %3, align 8
  %60 = load i32, i32* @WARNING, align 4
  %61 = load i32, i32* @ERRCODE_IO_ERROR, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66, i8* %67)
  %69 = call i32 @errdetail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 @ereport(i32 %60, i32 %69)
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @pfree(i8* %71)
  br label %73

73:                                               ; preds = %50, %38
  br label %74

74:                                               ; preds = %73, %20
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %76 = load i32, i32* @BM_IO_ERROR, align 4
  %77 = call i32 @TerminateBufferIO(%struct.TYPE_9__* %75, i32 0, i32 %76)
  br label %78

78:                                               ; preds = %74, %0
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @BufferDescriptorGetIOLock(%struct.TYPE_9__*) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_9__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @relpathperm(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @TerminateBufferIO(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
