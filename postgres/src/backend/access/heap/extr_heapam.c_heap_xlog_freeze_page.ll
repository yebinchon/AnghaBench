; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_freeze_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_freeze_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@InHotStandby = common dso_local global i64 0, align 8
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @heap_xlog_freeze_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_xlog_freeze_page(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = call i64 @XLogRecGetData(%struct.TYPE_12__* %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %4, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i64, i64* @InHotStandby, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @TransactionIdRetreat(i32 %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = call i32 @XLogRecGetBlockTag(%struct.TYPE_12__* %30, i32 0, i32* %8, i32* null, i32* null)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ResolveRecoveryConflictWithSnapshot(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = call i64 @XLogReadBufferForRedo(%struct.TYPE_12__* %36, i32 0, i32* %6)
  %38 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @BufferGetPage(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = call i64 @XLogRecGetBlockData(%struct.TYPE_12__* %43, i32 0, i32* null)
  %45 = inttoptr i64 %44 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %68, %40
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %12, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PageGetItemId(i32 %57, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @PageGetItem(i32 %62, i32 %63)
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %67 = call i32 @heap_execute_freeze_tuple(i64 %65, %struct.TYPE_10__* %66)
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %46

71:                                               ; preds = %46
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @PageSetLSN(i32 %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @MarkBufferDirty(i32 %75)
  br label %77

77:                                               ; preds = %71, %35
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @BufferIsValid(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @UnlockReleaseBuffer(i32 %82)
  br label %84

84:                                               ; preds = %81, %77
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_12__*) #1

declare dso_local i32 @TransactionIdRetreat(i32) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_12__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ResolveRecoveryConflictWithSnapshot(i32, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @XLogRecGetBlockData(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @heap_execute_freeze_tuple(i64, %struct.TYPE_10__*) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
