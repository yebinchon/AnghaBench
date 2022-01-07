; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gininsert.c_ginbuild.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_gininsert.c_ginbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { double, i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__, i8*, i8*, i32, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"index \22%s\22 already contains data\00", align 1
@GIN_LEAF = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Gin build temporary context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Gin build temporary context for user-defined function\00", align 1
@ginBuildCallback = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ginbuild(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @RelationGetNumberOfBlocks(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @RelationGetRelationName(i32 %23)
  %25 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @initGinState(i32* %27, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %32 = call i32 @memset(%struct.TYPE_12__* %31, i32 0, i32 4)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @GinNewBuffer(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @GinNewBuffer(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = call i32 (...) @START_CRIT_SECTION()
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @GinInitMetabuffer(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @MarkBufferDirty(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @GIN_LEAF, align 4
  %44 = call i32 @GinInitBuffer(i32 %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @MarkBufferDirty(i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @UnlockReleaseBuffer(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @UnlockReleaseBuffer(i32 %49)
  %51 = call i32 (...) @END_CRIT_SECTION()
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @CurrentMemoryContext, align 4
  %57 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %58 = call i8* @AllocSetContextCreate(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* @CurrentMemoryContext, align 4
  %61 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %62 = call i8* @AllocSetContextCreate(i32 %60, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 5
  %68 = call i32 @ginInitBA(%struct.TYPE_13__* %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @ginBuildCallback, align 4
  %73 = bitcast %struct.TYPE_11__* %9 to i8*
  %74 = call double @table_index_build_scan(i32 %69, i32 %70, i32* %71, i32 0, i32 1, i32 %72, i8* %73, i32* null)
  store double %74, double* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @MemoryContextSwitchTo(i8* %76)
  store i8* %77, i8** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 5
  %79 = call i32 @ginBeginBAScan(%struct.TYPE_13__* %78)
  br label %80

80:                                               ; preds = %84, %26
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 5
  %82 = call i32* @ginGetBAEntry(%struct.TYPE_13__* %81, i32* %17, i32* %13, i32* %14, i32* %15)
  store i32* %82, i32** %12, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %15, align 4
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %93 = call i32 @ginEntryInsert(i32* %86, i32 %87, i32 %88, i32 %89, i32* %90, i32 %91, %struct.TYPE_12__* %92)
  br label %80

94:                                               ; preds = %80
  %95 = load i8*, i8** %16, align 8
  %96 = call i8* @MemoryContextSwitchTo(i8* %95)
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @MemoryContextDelete(i8* %98)
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @MemoryContextDelete(i8* %101)
  %103 = load i32, i32* %5, align 4
  %104 = call i64 @RelationGetNumberOfBlocks(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* %5, align 4
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %109 = call i32 @ginUpdateStats(i32 %107, %struct.TYPE_12__* %108, i32 1)
  %110 = load i32, i32* %5, align 4
  %111 = call i64 @RelationNeedsWAL(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %94
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @MAIN_FORKNUM, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i64 @RelationGetNumberOfBlocks(i32 %116)
  %118 = call i32 @log_newpage_range(i32 %114, i32 %115, i32 0, i64 %117, i32 1)
  br label %119

119:                                              ; preds = %113, %94
  %120 = call i64 @palloc(i32 16)
  %121 = inttoptr i64 %120 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %7, align 8
  %122 = load double, double* %8, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store double %122, double* %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %129
}

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @initGinState(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @GinNewBuffer(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @GinInitMetabuffer(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @GinInitBuffer(i32, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i8* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @ginInitBA(%struct.TYPE_13__*) #1

declare dso_local double @table_index_build_scan(i32, i32, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i8* @MemoryContextSwitchTo(i8*) #1

declare dso_local i32 @ginBeginBAScan(%struct.TYPE_13__*) #1

declare dso_local i32* @ginGetBAEntry(%struct.TYPE_13__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ginEntryInsert(i32*, i32, i32, i32, i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @MemoryContextDelete(i8*) #1

declare dso_local i32 @ginUpdateStats(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @log_newpage_range(i32, i32, i32, i64, i32) #1

declare dso_local i64 @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
