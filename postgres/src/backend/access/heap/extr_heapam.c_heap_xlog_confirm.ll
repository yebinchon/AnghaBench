; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_confirm.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"invalid lp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @heap_xlog_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_xlog_confirm(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = call i64 @XLogRecGetData(%struct.TYPE_8__* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %4, align 8
  store i32* null, i32** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = call i64 @XLogReadBufferForRedo(%struct.TYPE_8__* %16, i32 0, i32* %5)
  %18 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @BufferGetPage(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @PageGetMaxOffsetNumber(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32* @PageGetItemId(i32 %31, i32 %32)
  store i32* %33, i32** %8, align 8
  br label %34

34:                                               ; preds = %30, %20
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @PageGetMaxOffsetNumber(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @ItemIdIsNormal(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* @PANIC, align 4
  %45 = call i32 @elog(i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %6, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @PageGetItem(i32 %47, i32* %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %9, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @BufferGetBlockNumber(i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ItemPointerSet(i32* %52, i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @PageSetLSN(i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @MarkBufferDirty(i32 %60)
  br label %62

62:                                               ; preds = %46, %1
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @BufferIsValid(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @UnlockReleaseBuffer(i32 %67)
  br label %69

69:                                               ; preds = %66, %62
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_8__*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32* @PageGetItemId(i32, i32) #1

declare dso_local i32 @ItemIdIsNormal(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @PageGetItem(i32, i32*) #1

declare dso_local i32 @ItemPointerSet(i32*, i32, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

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
