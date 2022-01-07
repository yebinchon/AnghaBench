; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_freespace.c_FreeSpaceMapPrepareTruncateRel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_freespace.c_FreeSpaceMapPrepareTruncateRel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@FSM_FORKNUM = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@InRecovery = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FreeSpaceMapPrepareTruncateRel(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i32 @RelationOpenSmgr(%struct.TYPE_6__* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FSM_FORKNUM, align 4
  %16 = call i32 @smgrexists(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %19, i64* %3, align 8
  br label %79

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @fsm_get_location(i64 %21, i64* %8)
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* %8, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fsm_readbuf(%struct.TYPE_6__* %26, i32 %27, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @BufferIsValid(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %33, i64* %3, align 8
  br label %79

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %37 = call i32 @LockBuffer(i32 %35, i32 %36)
  %38 = call i32 (...) @START_CRIT_SECTION()
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @BufferGetPage(i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @fsm_truncate_avail(i32 %40, i64 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @MarkBufferDirty(i32 %43)
  %45 = load i32, i32* @InRecovery, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %34
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = call i64 @RelationNeedsWAL(%struct.TYPE_6__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = call i64 (...) @XLogHintBitIsNeeded()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @log_newpage_buffer(i32 %55, i32 0)
  br label %57

57:                                               ; preds = %54, %51, %47, %34
  %58 = call i32 (...) @END_CRIT_SECTION()
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @UnlockReleaseBuffer(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @fsm_logical_to_physical(i32 %61)
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %77

64:                                               ; preds = %20
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @fsm_logical_to_physical(i32 %65)
  store i64 %66, i64* %6, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FSM_FORKNUM, align 4
  %71 = call i64 @smgrnblocks(i32 %69, i32 %70)
  %72 = load i64, i64* %6, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %75, i64* %3, align 8
  br label %79

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %57
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %77, %74, %32, %18
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_6__*) #1

declare dso_local i32 @smgrexists(i32, i32) #1

declare dso_local i32 @fsm_get_location(i64, i64*) #1

declare dso_local i32 @fsm_readbuf(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @fsm_truncate_avail(i32, i64) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_6__*) #1

declare dso_local i64 @XLogHintBitIsNeeded(...) #1

declare dso_local i32 @log_newpage_buffer(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @fsm_logical_to_physical(i32) #1

declare dso_local i64 @smgrnblocks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
