; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_checkpointer.c_ForwardSyncRequest.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_checkpointer.c_ForwardSyncRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"ForwardSyncRequest must not be called in checkpointer\00", align 1
@CheckpointerCommLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@CheckpointerShmem = common dso_local global %struct.TYPE_6__* null, align 8
@ProcGlobal = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ForwardSyncRequest(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @IsUnderPostmaster, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

11:                                               ; preds = %2
  %12 = call i64 (...) @AmCheckpointerProcess()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* @CheckpointerCommLock, align 4
  %19 = load i32, i32* @LW_EXCLUSIVE, align 4
  %20 = call i32 @LWLockAcquire(i32 %18, i32 %19)
  %21 = call i32 (...) @AmBackgroundWriterProcess()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CheckpointerShmem, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CheckpointerShmem, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CheckpointerShmem, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CheckpointerShmem, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = call i32 (...) @CompactCheckpointerRequestQueue()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41, %28
  %45 = call i32 (...) @AmBackgroundWriterProcess()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CheckpointerShmem, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* @CheckpointerCommLock, align 4
  %54 = call i32 @LWLockRelease(i32 %53)
  store i32 0, i32* %3, align 4
  br label %96

55:                                               ; preds = %41, %33
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CheckpointerShmem, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CheckpointerShmem, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %63
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %6, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CheckpointerShmem, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CheckpointerShmem, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 2
  %79 = icmp sge i32 %74, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @CheckpointerCommLock, align 4
  %82 = call i32 @LWLockRelease(i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %55
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ProcGlobal, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ProcGlobal, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @SetLatch(i64 %93)
  br label %95

95:                                               ; preds = %90, %85, %55
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %52, %10
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @AmCheckpointerProcess(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @AmBackgroundWriterProcess(...) #1

declare dso_local i32 @CompactCheckpointerRequestQueue(...) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @SetLatch(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
