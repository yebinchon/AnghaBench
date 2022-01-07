; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistbuild.c_gistBuildCallback.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistbuild.c_gistBuildCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_17__*, %struct.TYPE_21__*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@GIST_BUFFERING_ACTIVE = common dso_local global i64 0, align 8
@BUFFERING_MODE_TUPLE_SIZE_STATS_TARGET = common dso_local global i32 0, align 4
@GIST_BUFFERING_AUTO = common dso_local global i64 0, align 8
@BUFFERING_MODE_SWITCH_CHECK_STEP = common dso_local global i32 0, align 4
@effective_cache_size = common dso_local global i64 0, align 8
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@GIST_BUFFERING_STATS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32*, i32*, i32*, i32, i8*)* @gistBuildCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistBuildCallback(%struct.TYPE_18__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %13, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MemoryContextSwitchTo(i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call %struct.TYPE_19__* @gistFormTuple(%struct.TYPE_21__* %26, %struct.TYPE_18__* %27, i32* %28, i32* %29, i32 1)
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %14, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GIST_BUFFERING_ACTIVE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %6
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %43 = call i32 @gistBufferingBuildInsert(%struct.TYPE_20__* %41, %struct.TYPE_19__* %42)
  br label %57

44:                                               ; preds = %6
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gistdoinsert(%struct.TYPE_18__* %45, %struct.TYPE_19__* %46, i32 %49, %struct.TYPE_21__* %52, i32 %55, i32 1)
  br label %57

57:                                               ; preds = %44, %40
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %63 = call i64 @IndexTupleSize(%struct.TYPE_19__* %62)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @MemoryContextSwitchTo(i32 %70)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @MemoryContextReset(i32 %76)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @GIST_BUFFERING_ACTIVE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %57
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @BUFFERING_MODE_TUPLE_SIZE_STATS_TARGET, align 4
  %88 = srem i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %83
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @calculatePagesPerBuffer(%struct.TYPE_20__* %91, i32 %96)
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 4
  br label %102

102:                                              ; preds = %90, %83, %57
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GIST_BUFFERING_AUTO, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @BUFFERING_MODE_SWITCH_CHECK_STEP, align 4
  %113 = srem i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load i64, i64* @effective_cache_size, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MAIN_FORKNUM, align 4
  %121 = call i64 @smgrnblocks(i32 %119, i32 %120)
  %122 = icmp slt i64 %116, %121
  br i1 %122, label %135, label %123

123:                                              ; preds = %115, %108, %102
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @GIST_BUFFERING_STATS, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @BUFFERING_MODE_TUPLE_SIZE_STATS_TARGET, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129, %115
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %137 = call i32 @gistInitBuffering(%struct.TYPE_20__* %136)
  br label %138

138:                                              ; preds = %135, %129, %123
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_19__* @gistFormTuple(%struct.TYPE_21__*, %struct.TYPE_18__*, i32*, i32*, i32) #1

declare dso_local i32 @gistBufferingBuildInsert(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @gistdoinsert(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @IndexTupleSize(%struct.TYPE_19__*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @calculatePagesPerBuffer(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @smgrnblocks(i32, i32) #1

declare dso_local i32 @gistInitBuffering(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
