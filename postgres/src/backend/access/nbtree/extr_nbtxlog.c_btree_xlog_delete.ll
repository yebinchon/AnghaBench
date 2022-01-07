; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_delete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtxlog.c_btree_xlog_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@InHotStandby = common dso_local global i64 0, align 8
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@SizeOfBtreeDelete = common dso_local global i64 0, align 8
@BTP_HAS_GARBAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @btree_xlog_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btree_xlog_delete(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = call i64 @XLogRecGetData(%struct.TYPE_10__* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %4, align 8
  %16 = load i64, i64* @InHotStandby, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = call i32 @XLogRecGetBlockTag(%struct.TYPE_10__* %19, i32 0, i32* %8, i32* null, i32* null)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ResolveRecoveryConflictWithSnapshot(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = call i64 @XLogReadBufferForRedo(%struct.TYPE_10__* %27, i32 0, i32* %5)
  %29 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @BufferGetPage(i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = call i64 @XLogRecGetDataLen(%struct.TYPE_10__* %34)
  %36 = load i64, i64* @SizeOfBtreeDelete, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = bitcast %struct.TYPE_9__* %39 to i8*
  %41 = load i64, i64* @SizeOfBtreeDelete, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PageIndexMultiDelete(i64 %44, i32* %45, i32 %48)
  br label %50

50:                                               ; preds = %38, %31
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @PageGetSpecialPointer(i64 %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %7, align 8
  %54 = load i32, i32* @BTP_HAS_GARBAGE, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @PageSetLSN(i64 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @MarkBufferDirty(i32 %63)
  br label %65

65:                                               ; preds = %50, %26
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @BufferIsValid(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @UnlockReleaseBuffer(i32 %70)
  br label %72

72:                                               ; preds = %69, %65
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_10__*) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_10__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ResolveRecoveryConflictWithSnapshot(i32, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @XLogRecGetDataLen(%struct.TYPE_10__*) #1

declare dso_local i32 @PageIndexMultiDelete(i64, i32*, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i64) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
