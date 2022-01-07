; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_checkpointer.c_AbsorbSyncRequests.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_checkpointer.c_AbsorbSyncRequests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CheckpointerCommLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@CheckpointerShmem = common dso_local global %struct.TYPE_7__* null, align 8
@BgWriterStats = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AbsorbSyncRequests() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  %4 = call i32 (...) @AmCheckpointerProcess()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %79

7:                                                ; preds = %0
  %8 = load i32, i32* @CheckpointerCommLock, align 4
  %9 = load i32, i32* @LW_EXCLUSIVE, align 4
  %10 = call i32 @LWLockAcquire(i32 %8, i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CheckpointerShmem, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @BgWriterStats, i32 0, i32 1), align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @BgWriterStats, i32 0, i32 1), align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CheckpointerShmem, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @BgWriterStats, i32 0, i32 0), align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @BgWriterStats, i32 0, i32 0), align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CheckpointerShmem, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CheckpointerShmem, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CheckpointerShmem, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %7
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @palloc(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %1, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CheckpointerShmem, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memcpy(%struct.TYPE_6__* %41, i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %34, %7
  %51 = call i32 (...) @START_CRIT_SECTION()
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CheckpointerShmem, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load i32, i32* @CheckpointerCommLock, align 4
  %55 = call i32 @LWLockRelease(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %2, align 8
  br label %57

57:                                               ; preds = %67, %50
  %58 = load i32, i32* %3, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @RememberSyncRequest(i32* %62, i32 %65)
  br label %67

67:                                               ; preds = %60
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 1
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %3, align 4
  br label %57

72:                                               ; preds = %57
  %73 = call i32 (...) @END_CRIT_SECTION()
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %78 = call i32 @pfree(%struct.TYPE_6__* %77)
  br label %79

79:                                               ; preds = %6, %76, %72
  ret void
}

declare dso_local i32 @AmCheckpointerProcess(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @RememberSyncRequest(i32*, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @pfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
