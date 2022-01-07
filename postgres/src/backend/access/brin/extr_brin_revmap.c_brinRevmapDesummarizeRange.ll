; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_revmap.c_brinRevmapDesummarizeRange.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_revmap.c_brinRevmapDesummarizeRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64, i32, i32 }

@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"corrupted BRIN index: inconsistent range map\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"leftover placeholder tuple detected in BRIN index \22%s\22, deleting\00", align 1
@SizeOfBrinDesummarize = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_BRIN_ID = common dso_local global i32 0, align 4
@XLOG_BRIN_DESUMMARIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brinRevmapDesummarizeRange(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_8__, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.TYPE_10__* @brinRevmapInitialize(i32 %22, i32* %7, i32* null)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %6, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @revmap_get_blkno(%struct.TYPE_10__* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @BlockNumberIsValid(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = call i32 @brinRevmapTerminate(%struct.TYPE_10__* %31)
  store i32 1, i32* %3, align 4
  br label %180

33:                                               ; preds = %2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @brinLockRevmapPageForUpdate(%struct.TYPE_10__* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @BufferGetPage(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @HEAPBLK_TO_REVMAP_INDEX(i32 %41, i32 %42)
  store i64 %43, i64* %16, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i64 @PageGetContents(i32 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %8, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %9, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @ItemPointerIsValid(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %59 = call i32 @LockBuffer(i32 %57, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = call i32 @brinRevmapTerminate(%struct.TYPE_10__* %60)
  store i32 1, i32* %3, align 4
  br label %180

62:                                               ; preds = %33
  %63 = load i32, i32* %4, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @ItemPointerGetBlockNumber(i32* %64)
  %66 = call i32 @ReadBuffer(i32 %63, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %69 = call i32 @LockBuffer(i32 %67, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @BufferGetPage(i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @BRIN_IS_REGULAR_PAGE(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %78 = call i32 @LockBuffer(i32 %76, i32 %77)
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %81 = call i32 @LockBuffer(i32 %79, i32 %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = call i32 @brinRevmapTerminate(%struct.TYPE_10__* %82)
  store i32 0, i32* %3, align 4
  br label %180

84:                                               ; preds = %62
  %85 = load i32*, i32** %9, align 8
  %86 = call i64 @ItemPointerGetOffsetNumber(i32* %85)
  store i64 %86, i64* %17, align 8
  %87 = load i64, i64* %17, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i64 @PageGetMaxOffsetNumber(i32 %88)
  %90 = icmp sgt i64 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %94 = call i32 @errcode(i32 %93)
  %95 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %96 = call i32 @ereport(i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %84
  %98 = load i32, i32* %15, align 4
  %99 = load i64, i64* %17, align 8
  %100 = call i32 @PageGetItemId(i32 %98, i64 %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @ItemIdIsUsed(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @ERROR, align 4
  %106 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %107 = call i32 @errcode(i32 %106)
  %108 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %109 = call i32 @ereport(i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %104, %97
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %18, align 4
  %113 = call i64 @PageGetItem(i32 %111, i32 %112)
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %19, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = call i64 @BrinTupleIsPlaceholder(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i32, i32* @WARNING, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @RelationGetRelationName(i32 %120)
  %122 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = call i32 @ereport(i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %118, %110
  %125 = call i32 (...) @START_CRIT_SECTION()
  %126 = call i32 @ItemPointerSetInvalid(i32* %10)
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @brinSetHeapBlockItemptr(i32 %127, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %15, align 4
  %135 = load i64, i64* %17, align 8
  %136 = call i32 @PageIndexTupleDeleteNoCompact(i32 %134, i64 %135)
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @MarkBufferDirty(i32 %137)
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @MarkBufferDirty(i32 %139)
  %141 = load i32, i32* %4, align 4
  %142 = call i64 @RelationNeedsWAL(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %171

144:                                              ; preds = %124
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %5, align 4
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %149, i32* %150, align 8
  %151 = load i64, i64* %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  %153 = call i32 (...) @XLogBeginInsert()
  %154 = bitcast %struct.TYPE_8__* %20 to i8*
  %155 = load i32, i32* @SizeOfBrinDesummarize, align 4
  %156 = call i32 @XLogRegisterData(i8* %154, i32 %155)
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @XLogRegisterBuffer(i32 0, i32 %157, i32 0)
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @REGBUF_STANDARD, align 4
  %161 = call i32 @XLogRegisterBuffer(i32 1, i32 %159, i32 %160)
  %162 = load i32, i32* @RM_BRIN_ID, align 4
  %163 = load i32, i32* @XLOG_BRIN_DESUMMARIZE, align 4
  %164 = call i32 @XLogInsert(i32 %162, i32 %163)
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %21, align 4
  %167 = call i32 @PageSetLSN(i32 %165, i32 %166)
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %21, align 4
  %170 = call i32 @PageSetLSN(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %144, %124
  %172 = call i32 (...) @END_CRIT_SECTION()
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @UnlockReleaseBuffer(i32 %173)
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %177 = call i32 @LockBuffer(i32 %175, i32 %176)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %179 = call i32 @brinRevmapTerminate(%struct.TYPE_10__* %178)
  store i32 1, i32* %3, align 4
  br label %180

180:                                              ; preds = %171, %75, %56, %30
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.TYPE_10__* @brinRevmapInitialize(i32, i32*, i32*) #1

declare dso_local i32 @revmap_get_blkno(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @BlockNumberIsValid(i32) #1

declare dso_local i32 @brinRevmapTerminate(%struct.TYPE_10__*) #1

declare dso_local i32 @brinLockRevmapPageForUpdate(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @HEAPBLK_TO_REVMAP_INDEX(i32, i32) #1

declare dso_local i64 @PageGetContents(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @BRIN_IS_REGULAR_PAGE(i32) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdIsUsed(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @BrinTupleIsPlaceholder(i32*) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @brinSetHeapBlockItemptr(i32, i32, i32, i32) #1

declare dso_local i32 @PageIndexTupleDeleteNoCompact(i32, i64) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
