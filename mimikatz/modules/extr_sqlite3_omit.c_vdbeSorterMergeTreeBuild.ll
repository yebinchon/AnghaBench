; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_vdbeSorterMergeTreeBuild.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_vdbeSorterMergeTreeBuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MAX_WORKER_THREADS = common dso_local global i64 0, align 8
@SORTER_MAX_MERGE_COUNT = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__**)* @vdbeSorterMergeTreeBuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeSorterMergeTreeBuild(%struct.TYPE_17__* %0, %struct.TYPE_19__** %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__**, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_19__** %1, %struct.TYPE_19__*** %4, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %138, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SQLITE_OK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi i1 [ false, %17 ], [ %26, %21 ]
  br i1 %28, label %29, label %141

29:                                               ; preds = %27
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i64 %34
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %8, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i64, i64* @SQLITE_MAX_WORKER_THREADS, align 8
  %42 = icmp sgt i64 %41, 0
  br label %43

43:                                               ; preds = %40, %29
  %44 = phi i1 [ true, %29 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* @SQLITE_MAX_WORKER_THREADS, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %137

54:                                               ; preds = %49, %43
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @vdbeSorterTreeDepth(i64 %57)
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @SORTER_MAX_MERGE_COUNT, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp sle i64 %61, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @vdbeMergeEngineLevel0(%struct.TYPE_18__* %66, i32 %70, i32* %11, %struct.TYPE_19__** %9)
  store i32 %71, i32* %6, align 4
  br label %123

72:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  %73 = load i32, i32* @SORTER_MAX_MERGE_COUNT, align 4
  %74 = call %struct.TYPE_19__* @vdbeMergeEngineNew(i32 %73)
  store %struct.TYPE_19__* %74, %struct.TYPE_19__** %9, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %76 = icmp eq %struct.TYPE_19__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %72
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %118, %79
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @SQLITE_OK, align 4
  %90 = icmp eq i32 %88, %89
  br label %91

91:                                               ; preds = %87, %80
  %92 = phi i1 [ false, %80 ], [ %90, %87 ]
  br i1 %92, label %93, label %122

93:                                               ; preds = %91
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %14, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %96, %98
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @SORTER_MAX_MERGE_COUNT, align 4
  %102 = call i32 @MIN(i32 %100, i32 %101)
  store i32 %102, i32* %15, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @vdbeMergeEngineLevel0(%struct.TYPE_18__* %103, i32 %104, i32* %11, %struct.TYPE_19__** %14)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @SQLITE_OK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %93
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %116 = call i32 @vdbeSorterAddToTree(%struct.TYPE_18__* %110, i32 %111, i32 %112, %struct.TYPE_19__* %114, %struct.TYPE_19__* %115)
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %109, %93
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* @SORTER_MAX_MERGE_COUNT, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %80

122:                                              ; preds = %91
  br label %123

123:                                              ; preds = %122, %65
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @SQLITE_OK, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %129 = icmp eq %struct.TYPE_19__* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %132, %struct.TYPE_19__** %5, align 8
  br label %136

133:                                              ; preds = %123
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %135 = call i32 @vdbeMergeEngineFree(%struct.TYPE_19__* %134)
  br label %136

136:                                              ; preds = %133, %127
  br label %137

137:                                              ; preds = %136, %49
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %17

141:                                              ; preds = %27
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @SQLITE_OK, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %147 = call i32 @vdbeMergeEngineFree(%struct.TYPE_19__* %146)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  br label %148

148:                                              ; preds = %145, %141
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %4, align 8
  store %struct.TYPE_19__* %149, %struct.TYPE_19__** %150, align 8
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vdbeSorterTreeDepth(i64) #1

declare dso_local i32 @vdbeMergeEngineLevel0(%struct.TYPE_18__*, i32, i32*, %struct.TYPE_19__**) #1

declare dso_local %struct.TYPE_19__* @vdbeMergeEngineNew(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @vdbeSorterAddToTree(%struct.TYPE_18__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @vdbeMergeEngineFree(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
