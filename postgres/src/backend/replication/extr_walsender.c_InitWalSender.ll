; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_InitWalSender.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_InitWalSender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@am_cascading_walsender = common dso_local global i32 0, align 4
@PMSIGNAL_ADVANCE_STATE_MACHINE = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@lag_tracker = common dso_local global i32 0, align 4
@sendSeg = common dso_local global i32* null, align 8
@sendCxt = common dso_local global i32* null, align 8
@wal_segment_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitWalSender() #0 {
  %1 = call i32 (...) @RecoveryInProgress()
  store i32 %1, i32* @am_cascading_walsender, align 4
  %2 = call i32 (...) @InitWalSenderSlot()
  %3 = call i32 (...) @MarkPostmasterChildWalSender()
  %4 = load i32, i32* @PMSIGNAL_ADVANCE_STATE_MACHINE, align 4
  %5 = call i32 @SendPostmasterSignal(i32 %4)
  %6 = load i32, i32* @TopMemoryContext, align 4
  %7 = call i32 @MemoryContextAllocZero(i32 %6, i32 4)
  store i32 %7, i32* @lag_tracker, align 4
  %8 = load i32, i32* @TopMemoryContext, align 4
  %9 = call i64 @MemoryContextAlloc(i32 %8, i32 4)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** @sendSeg, align 8
  %11 = load i32, i32* @TopMemoryContext, align 4
  %12 = call i64 @MemoryContextAlloc(i32 %11, i32 4)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** @sendCxt, align 8
  %14 = load i32*, i32** @sendSeg, align 8
  %15 = load i32*, i32** @sendCxt, align 8
  %16 = load i32, i32* @wal_segment_size, align 4
  %17 = call i32 @WALOpenSegmentInit(i32* %14, i32* %15, i32 %16, i32* null)
  ret void
}

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i32 @InitWalSenderSlot(...) #1

declare dso_local i32 @MarkPostmasterChildWalSender(...) #1

declare dso_local i32 @SendPostmasterSignal(i32) #1

declare dso_local i32 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @WALOpenSegmentInit(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
