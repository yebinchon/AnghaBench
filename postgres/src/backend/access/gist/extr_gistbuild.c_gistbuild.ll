; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistbuild.c_gistbuild.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistbuild.c_gistbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { double, double }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, i64, %struct.TYPE_23__*, i32, i64, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@GIST_OPTION_BUFFERING_ON = common dso_local global i64 0, align 8
@GIST_BUFFERING_STATS = common dso_local global i64 0, align 8
@GIST_OPTION_BUFFERING_OFF = common dso_local global i64 0, align 8
@GIST_BUFFERING_DISABLED = common dso_local global i64 0, align 8
@GIST_BUFFERING_AUTO = common dso_local global i8* null, align 8
@GIST_DEFAULT_FILLFACTOR = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"index \22%s\22 already contains data\00", align 1
@GIST_ROOT_BLKNO = common dso_local global i64 0, align 8
@F_LEAF = common dso_local global i32 0, align 4
@GistBuildLSN = common dso_local global i32 0, align 4
@gistBuildCallback = common dso_local global i32 0, align 4
@GIST_BUFFERING_ACTIVE = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"all tuples processed, emptying buffers\00", align 1
@MAIN_FORKNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @gistbuild(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 7
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %17, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 6
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %19, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %3
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %14, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GIST_OPTION_BUFFERING_ON, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i64, i64* @GIST_BUFFERING_STATS, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  br label %51

37:                                               ; preds = %24
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @GIST_OPTION_BUFFERING_OFF, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* @GIST_BUFFERING_DISABLED, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  br label %50

46:                                               ; preds = %37
  %47 = load i8*, i8** @GIST_BUFFERING_AUTO, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50, %34
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  br label %60

55:                                               ; preds = %3
  %56 = load i8*, i8** @GIST_BUFFERING_AUTO, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* @GIST_DEFAULT_FILLFACTOR, align 4
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* @BLCKSZ, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 100, %62
  %64 = mul nsw i32 %61, %63
  %65 = sdiv i32 %64, 100
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = call i64 @RelationGetNumberOfBlocks(%struct.TYPE_19__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32, i32* @ERROR, align 4
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %73 = call i32 @RelationGetRelationName(%struct.TYPE_19__* %72)
  %74 = call i32 (i32, i8*, ...) @elog(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %60
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = call %struct.TYPE_23__* @initGISTstate(%struct.TYPE_19__* %76)
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %78, align 8
  %79 = call i32 (...) @createTempGistContext()
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = call i32 @gistNewBuffer(%struct.TYPE_19__* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @BufferGetBlockNumber(i32 %85)
  %87 = load i64, i64* @GIST_ROOT_BLKNO, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @BufferGetPage(i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = call i32 (...) @START_CRIT_SECTION()
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @F_LEAF, align 4
  %96 = call i32 @GISTInitBuffer(i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @MarkBufferDirty(i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @GistBuildLSN, align 4
  %101 = call i32 @PageSetLSN(i32 %99, i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @UnlockReleaseBuffer(i32 %102)
  %104 = call i32 (...) @END_CRIT_SECTION()
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* @gistBuildCallback, align 4
  %111 = bitcast %struct.TYPE_22__* %9 to i8*
  %112 = call double @table_index_build_scan(%struct.TYPE_19__* %107, %struct.TYPE_19__* %108, i32* %109, i32 1, i32 1, i32 %110, i8* %111, i32* null)
  store double %112, double* %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @GIST_BUFFERING_ACTIVE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %75
  %118 = load i32, i32* @DEBUG1, align 4
  %119 = call i32 (i32, i8*, ...) @elog(i32 %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %120 = call i32 @gistEmptyAllBuffers(%struct.TYPE_22__* %9)
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @gistFreeBuildBuffers(i32 %122)
  br label %124

124:                                              ; preds = %117, %75
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @MemoryContextSwitchTo(i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @MemoryContextDelete(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  %134 = call i32 @freeGISTstate(%struct.TYPE_23__* %133)
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %136 = call i64 @RelationNeedsWAL(%struct.TYPE_19__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %124
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %140 = load i32, i32* @MAIN_FORKNUM, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %142 = call i64 @RelationGetNumberOfBlocks(%struct.TYPE_19__* %141)
  %143 = call i32 @log_newpage_range(%struct.TYPE_19__* %139, i32 %140, i32 0, i64 %142, i32 1)
  br label %144

144:                                              ; preds = %138, %124
  %145 = call i64 @palloc(i32 16)
  %146 = inttoptr i64 %145 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %146, %struct.TYPE_20__** %7, align 8
  %147 = load double, double* %8, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  store double %147, double* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = sitofp i64 %151 to double
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  store double %152, double* %154, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  ret %struct.TYPE_20__* %155
}

declare dso_local i64 @RelationGetNumberOfBlocks(%struct.TYPE_19__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_23__* @initGISTstate(%struct.TYPE_19__*) #1

declare dso_local i32 @createTempGistContext(...) #1

declare dso_local i32 @gistNewBuffer(%struct.TYPE_19__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @GISTInitBuffer(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local double @table_index_build_scan(%struct.TYPE_19__*, %struct.TYPE_19__*, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @gistEmptyAllBuffers(%struct.TYPE_22__*) #1

declare dso_local i32 @gistFreeBuildBuffers(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

declare dso_local i32 @freeGISTstate(%struct.TYPE_23__*) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_19__*) #1

declare dso_local i32 @log_newpage_range(%struct.TYPE_19__*, i32, i32, i64, i32) #1

declare dso_local i64 @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
