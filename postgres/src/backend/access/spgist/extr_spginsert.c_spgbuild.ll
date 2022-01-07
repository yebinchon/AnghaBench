; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spginsert.c_spgbuild.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spginsert.c_spgbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, i64 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"index \22%s\22 already contains data\00", align 1
@SPGIST_METAPAGE_BLKNO = common dso_local global i64 0, align 8
@SPGIST_ROOT_BLKNO = common dso_local global i64 0, align 8
@SPGIST_NULL_BLKNO = common dso_local global i64 0, align 8
@SPGIST_LEAF = common dso_local global i32 0, align 4
@SPGIST_NULLS = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"SP-GiST build temporary context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@spgistBuildCallback = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @spgbuild(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @RelationGetNumberOfBlocks(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @RelationGetRelationName(i32 %18)
  %20 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @SpGistNewBuffer(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @SpGistNewBuffer(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @SpGistNewBuffer(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @BufferGetBlockNumber(i32 %28)
  %30 = load i64, i64* @SPGIST_METAPAGE_BLKNO, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @BufferGetBlockNumber(i32 %34)
  %36 = load i64, i64* @SPGIST_ROOT_BLKNO, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @BufferGetBlockNumber(i32 %40)
  %42 = load i64, i64* @SPGIST_NULL_BLKNO, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = call i32 (...) @START_CRIT_SECTION()
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @BufferGetPage(i32 %47)
  %49 = call i32 @SpGistInitMetapage(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @MarkBufferDirty(i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @SPGIST_LEAF, align 4
  %54 = call i32 @SpGistInitBuffer(i32 %52, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @MarkBufferDirty(i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @SPGIST_LEAF, align 4
  %59 = load i32, i32* @SPGIST_NULLS, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @SpGistInitBuffer(i32 %57, i32 %60)
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @MarkBufferDirty(i32 %62)
  %64 = call i32 (...) @END_CRIT_SECTION()
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @UnlockReleaseBuffer(i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @UnlockReleaseBuffer(i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @UnlockReleaseBuffer(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @initSpGistState(%struct.TYPE_7__* %71, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @CurrentMemoryContext, align 4
  %78 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %79 = call i32 @AllocSetContextCreate(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @spgistBuildCallback, align 4
  %85 = bitcast %struct.TYPE_5__* %9 to i8*
  %86 = call double @table_index_build_scan(i32 %81, i32 %82, i32* %83, i32 1, i32 1, i32 %84, i8* %85, i32* null)
  store double %86, double* %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @MemoryContextDelete(i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @SpGistUpdateMetaPage(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @RelationNeedsWAL(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %21
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @MAIN_FORKNUM, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i64 @RelationGetNumberOfBlocks(i32 %98)
  %100 = call i32 @log_newpage_range(i32 %96, i32 %97, i32 0, i64 %99, i32 1)
  br label %101

101:                                              ; preds = %95, %21
  %102 = call i64 @palloc0(i32 16)
  %103 = inttoptr i64 %102 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %7, align 8
  %104 = load double, double* %8, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store double %104, double* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %111
}

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @SpGistNewBuffer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @SpGistInitMetapage(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @SpGistInitBuffer(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @initSpGistState(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local double @table_index_build_scan(i32, i32, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

declare dso_local i32 @SpGistUpdateMetaPage(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @log_newpage_range(i32, i32, i32, i64, i32) #1

declare dso_local i64 @palloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
