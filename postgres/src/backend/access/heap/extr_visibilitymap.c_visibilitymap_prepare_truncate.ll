; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_visibilitymap_prepare_truncate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_visibilitymap_prepare_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@VISIBILITYMAP_FORKNUM = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@MAPSIZE = common dso_local global i64 0, align 8
@InRecovery = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @visibilitymap_prepare_truncate(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @HEAPBLK_TO_MAPBLOCK(i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @HEAPBLK_TO_MAPBYTE(i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @HEAPBLK_TO_OFFSET(i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = call i32 @RelationOpenSmgr(%struct.TYPE_7__* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VISIBILITYMAP_FORKNUM, align 4
  %25 = call i32 @smgrexists(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %28, i64* %3, align 8
  br label %107

29:                                               ; preds = %2
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %93

35:                                               ; preds = %32, %29
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @vm_readbuf(%struct.TYPE_7__* %38, i64 %39, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @BufferIsValid(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %45, i64* %3, align 8
  br label %107

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @BufferGetPage(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i8* @PageGetContents(i32 %49)
  store i8* %50, i8** %12, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %53 = call i32 @LockBuffer(i32 %51, i32 %52)
  %54 = call i32 (...) @START_CRIT_SECTION()
  %55 = load i8*, i8** %12, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %56, 1
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i64, i64* @MAPSIZE, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, 1
  %62 = sub nsw i64 %59, %61
  %63 = call i32 @MemSet(i8* %58, i32 0, i64 %62)
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  %68 = load i8*, i8** %12, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = and i32 %72, %67
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %70, align 1
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @MarkBufferDirty(i32 %75)
  %77 = load i32, i32* @InRecovery, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %46
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = call i64 @RelationNeedsWAL(%struct.TYPE_7__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = call i64 (...) @XLogHintBitIsNeeded()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @log_newpage_buffer(i32 %87, i32 0)
  br label %89

89:                                               ; preds = %86, %83, %79, %46
  %90 = call i32 (...) @END_CRIT_SECTION()
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @UnlockReleaseBuffer(i32 %91)
  br label %95

93:                                               ; preds = %32
  %94 = load i64, i64* %7, align 8
  store i64 %94, i64* %6, align 8
  br label %95

95:                                               ; preds = %93, %89
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @VISIBILITYMAP_FORKNUM, align 4
  %100 = call i64 @smgrnblocks(i32 %98, i32 %99)
  %101 = load i64, i64* %6, align 8
  %102 = icmp sle i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %104, i64* %3, align 8
  br label %107

105:                                              ; preds = %95
  %106 = load i64, i64* %6, align 8
  store i64 %106, i64* %3, align 8
  br label %107

107:                                              ; preds = %105, %103, %44, %27
  %108 = load i64, i64* %3, align 8
  ret i64 %108
}

declare dso_local i64 @HEAPBLK_TO_MAPBLOCK(i64) #1

declare dso_local i64 @HEAPBLK_TO_MAPBYTE(i64) #1

declare dso_local i64 @HEAPBLK_TO_OFFSET(i64) #1

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_7__*) #1

declare dso_local i32 @smgrexists(i32, i32) #1

declare dso_local i32 @vm_readbuf(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i8* @PageGetContents(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @MemSet(i8*, i32, i64) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_7__*) #1

declare dso_local i64 @XLogHintBitIsNeeded(...) #1

declare dso_local i32 @log_newpage_buffer(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @smgrnblocks(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
