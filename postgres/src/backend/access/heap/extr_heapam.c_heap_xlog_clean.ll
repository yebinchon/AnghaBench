; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_clean.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_xlog_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@InHotStandby = common dso_local global i64 0, align 8
@RBM_NORMAL = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @heap_xlog_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_xlog_clean(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = call i64 @XLogRecGetData(%struct.TYPE_9__* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %4, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = call i32 @XLogRecGetBlockTag(%struct.TYPE_9__* %25, i32 0, i32* %6, i32* null, i32* %7)
  %27 = load i64, i64* @InHotStandby, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @TransactionIdIsValid(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ResolveRecoveryConflictWithSnapshot(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %29, %1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = load i32, i32* @RBM_NORMAL, align 4
  %44 = call i64 @XLogReadBufferForRedoExtended(%struct.TYPE_9__* %42, i32 0, i32 %43, i32 1, i32* %5)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %99

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @BufferGetPage(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = call i64 @XLogRecGetBlockData(%struct.TYPE_9__* %51, i32 0, i32* %17)
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %11, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32* %70, i32** %12, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32* %74, i32** %13, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = ptrtoint i32* %75 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp sge i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @Assert(i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @heap_page_prune_execute(i32 %86, i32* %87, i32 %88, i32* %89, i32 %90, i32* %91, i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @PageSetLSN(i32 %94, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @MarkBufferDirty(i32 %97)
  br label %99

99:                                               ; preds = %48, %41
  %100 = load i32, i32* %5, align 4
  %101 = call i64 @BufferIsValid(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @BufferGetPage(i32 %104)
  %106 = call i32 @PageGetHeapFreeSpace(i32 %105)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @UnlockReleaseBuffer(i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %18, align 4
  %112 = call i32 @XLogRecordPageWithFreeSpace(i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %103, %99
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_9__*) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_9__*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @ResolveRecoveryConflictWithSnapshot(i32, i32) #1

declare dso_local i64 @XLogReadBufferForRedoExtended(%struct.TYPE_9__*, i32, i32, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @XLogRecGetBlockData(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @heap_page_prune_execute(i32, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @PageGetHeapFreeSpace(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @XLogRecordPageWithFreeSpace(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
