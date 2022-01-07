; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_createPostingTree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gindatapage.c_createPostingTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@BLCKSZ = common dso_local global i32 0, align 4
@GIN_DATA = common dso_local global i32 0, align 4
@GIN_LEAF = common dso_local global i32 0, align 4
@GIN_COMPRESSED = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i32 0, align 4
@GinPostingListSegmentMaxSize = common dso_local global i32 0, align 4
@GinDataPageMaxDataSize = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@RM_GIN_ID = common dso_local global i32 0, align 4
@XLOG_GIN_CREATE_PTREE = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"created GIN posting tree with %d items\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @createPostingTree(i32 %0, i32* %1, i32 %2, %struct.TYPE_7__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32 %4, i32* %10, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* @BLCKSZ, align 4
  %28 = call i64 @palloc(i32 %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i32, i32* @GIN_DATA, align 4
  %31 = load i32, i32* @GIN_LEAF, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GIN_COMPRESSED, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BLCKSZ, align 4
  %36 = call i32 @GinInitPage(i64 %29, i32 %34, i32 %35)
  %37 = load i32, i32* @InvalidBlockNumber, align 4
  %38 = load i64, i64* %13, align 8
  %39 = call %struct.TYPE_8__* @GinPageGetOpaque(i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %41 = load i64, i64* %13, align 8
  %42 = call i64 @GinDataLeafPageGetPostingList(i64 %41)
  store i64 %42, i64* %15, align 8
  br label %43

43:                                               ; preds = %65, %5
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %16, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* @GinPostingListSegmentMaxSize, align 4
  %56 = call i32* @ginCompressPostingList(i32* %51, i32 %54, i32 %55, i32* %20)
  store i32* %56, i32** %19, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = call i32 @SizeOfGinPostingList(i32* %57)
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %21, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @GinDataPageMaxDataSize, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  br label %82

65:                                               ; preds = %47
  %66 = load i64, i64* %15, align 8
  %67 = load i32*, i32** %19, align 8
  %68 = load i32, i32* %21, align 4
  %69 = call i32 @memcpy(i64 %66, i32* %67, i32 %68)
  %70 = load i32, i32* %21, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %15, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %15, align 8
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %16, align 4
  %80 = load i32*, i32** %19, align 8
  %81 = call i32 @pfree(i32* %80)
  br label %43

82:                                               ; preds = %64, %43
  %83 = load i64, i64* %13, align 8
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @GinDataPageSetDataSize(i64 %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @GinNewBuffer(i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @BufferGetPage(i32 %88)
  store i64 %89, i64* %14, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @BufferGetBlockNumber(i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @BufferGetBlockNumber(i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @PredicateLockPageSplit(i32 %92, i32 %94, i32 %95)
  %97 = call i32 (...) @START_CRIT_SECTION()
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @PageRestoreTempPage(i64 %98, i64 %99)
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @MarkBufferDirty(i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @RelationNeedsWAL(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %82
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %129, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %17, align 4
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = call i32 (...) @XLogBeginInsert()
  %113 = bitcast %struct.TYPE_6__* %23 to i8*
  %114 = call i32 @XLogRegisterData(i8* %113, i32 4)
  %115 = load i64, i64* %14, align 8
  %116 = call i64 @GinDataLeafPageGetPostingList(i64 %115)
  %117 = inttoptr i64 %116 to i8*
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @XLogRegisterData(i8* %117, i32 %118)
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %122 = call i32 @XLogRegisterBuffer(i32 0, i32 %120, i32 %121)
  %123 = load i32, i32* @RM_GIN_ID, align 4
  %124 = load i32, i32* @XLOG_GIN_CREATE_PTREE, align 4
  %125 = call i32 @XLogInsert(i32 %123, i32 %124)
  store i32 %125, i32* %22, align 4
  %126 = load i64, i64* %14, align 8
  %127 = load i32, i32* %22, align 4
  %128 = call i32 @PageSetLSN(i64 %126, i32 %127)
  br label %129

129:                                              ; preds = %109, %106, %82
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @UnlockReleaseBuffer(i32 %130)
  %132 = call i32 (...) @END_CRIT_SECTION()
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %134 = icmp ne %struct.TYPE_7__* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %135, %129
  %141 = load i32, i32* @DEBUG2, align 4
  %142 = load i32, i32* %16, align 4
  %143 = call i32 @elog(i32 %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %140
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %16, align 4
  %156 = sub nsw i32 %154, %155
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %158 = call i32 @ginInsertItemPointers(i32 %148, i32 %149, i32* %153, i32 %156, %struct.TYPE_7__* %157)
  br label %159

159:                                              ; preds = %147, %140
  %160 = load i32, i32* %11, align 4
  ret i32 %160
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @GinInitPage(i64, i32, i32) #1

declare dso_local %struct.TYPE_8__* @GinPageGetOpaque(i64) #1

declare dso_local i64 @GinDataLeafPageGetPostingList(i64) #1

declare dso_local i32* @ginCompressPostingList(i32*, i32, i32, i32*) #1

declare dso_local i32 @SizeOfGinPostingList(i32*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @GinDataPageSetDataSize(i64, i32) #1

declare dso_local i32 @GinNewBuffer(i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @PredicateLockPageSplit(i32, i32, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @PageRestoreTempPage(i64, i64) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ginInsertItemPointers(i32, i32, i32*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
