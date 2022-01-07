; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_pruneheap.c_heap_page_prune_opt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_pruneheap.c_heap_page_prune_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RecentGlobalXmin = common dso_local global i32 0, align 4
@RecentGlobalDataXmin = common dso_local global i32 0, align 4
@HEAP_DEFAULT_FILLFACTOR = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_page_prune_opt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @BufferGetPage(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = call i64 (...) @RecoveryInProgress()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %77

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @IsCatalogRelation(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @RelationIsAccessibleInLogicalDecoding(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @RecentGlobalXmin, align 4
  store i32 %23, i32* %7, align 4
  br label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @RecentGlobalDataXmin, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @TransactionIdLimitedForOldSnapshots(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @TransactionIdIsValid(i32 %29)
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @PageIsPrunable(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %77

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @HEAP_DEFAULT_FILLFACTOR, align 4
  %40 = call i64 @RelationGetTargetPageFreeSpace(i32 %38, i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* @BLCKSZ, align 4
  %43 = sdiv i32 %42, 10
  %44 = call i64 @Max(i64 %41, i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @PageIsFull(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @PageGetHeapFreeSpace(i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %48, %37
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ConditionalLockBufferForCleanup(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %77

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @PageIsFull(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @PageGetHeapFreeSpace(i32 %63)
  %65 = load i64, i64* %6, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %62, %58
  %68 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @heap_page_prune(i32 %69, i32 %70, i32 %71, i32 1, i32* %8)
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %76 = call i32 @LockBuffer(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %13, %36, %57, %73, %48
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i64 @IsCatalogRelation(i32) #1

declare dso_local i64 @RelationIsAccessibleInLogicalDecoding(i32) #1

declare dso_local i32 @TransactionIdLimitedForOldSnapshots(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @PageIsPrunable(i32, i32) #1

declare dso_local i64 @RelationGetTargetPageFreeSpace(i32, i32) #1

declare dso_local i64 @Max(i64, i32) #1

declare dso_local i64 @PageIsFull(i32) #1

declare dso_local i64 @PageGetHeapFreeSpace(i32) #1

declare dso_local i32 @ConditionalLockBufferForCleanup(i32) #1

declare dso_local i32 @heap_page_prune(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
