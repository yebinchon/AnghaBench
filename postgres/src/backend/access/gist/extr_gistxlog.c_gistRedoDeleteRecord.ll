; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoDeleteRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoDeleteRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@InHotStandby = common dso_local global i64 0, align 8
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@SizeOfGistxlogDelete = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @gistRedoDeleteRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistRedoDeleteRecord(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = call i64 @XLogRecGetData(%struct.TYPE_9__* %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %4, align 8
  %15 = load i64, i64* @InHotStandby, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = call i32 @XLogRecGetBlockTag(%struct.TYPE_9__* %18, i32 0, i32* %7, i32* null, i32* null)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ResolveRecoveryConflictWithSnapshot(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = call i64 @XLogReadBufferForRedo(%struct.TYPE_9__* %26, i32 0, i32* %5)
  %28 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @BufferGetPage(i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = call i64 @XLogRecGetDataLen(%struct.TYPE_9__* %33)
  %35 = load i64, i64* @SizeOfGistxlogDelete, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = bitcast %struct.TYPE_8__* %38 to i8*
  %40 = load i64, i64* @SizeOfGistxlogDelete, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PageIndexMultiDelete(i64 %43, i32* %44, i32 %47)
  br label %49

49:                                               ; preds = %37, %30
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @GistClearPageHasGarbage(i64 %50)
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @GistMarkTuplesDeleted(i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @PageSetLSN(i64 %54, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @MarkBufferDirty(i32 %57)
  br label %59

59:                                               ; preds = %49, %25
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @BufferIsValid(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @UnlockReleaseBuffer(i32 %64)
  br label %66

66:                                               ; preds = %63, %59
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_9__*) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_9__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ResolveRecoveryConflictWithSnapshot(i32, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @XLogRecGetDataLen(%struct.TYPE_9__*) #1

declare dso_local i32 @PageIndexMultiDelete(i64, i32*, i32) #1

declare dso_local i32 @GistClearPageHasGarbage(i64) #1

declare dso_local i32 @GistMarkTuplesDeleted(i64) #1

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
