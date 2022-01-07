; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_begin_index_btree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_begin_index_btree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__*, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i32 }

@INDEX_SORT = common dso_local global i32 0, align 4
@comparetup_index_btree = common dso_local global i32 0, align 4
@copytup_index = common dso_local global i32 0, align 4
@writetup_index = common dso_local global i32 0, align 4
@readtup_index = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@SK_BT_NULLS_FIRST = common dso_local global i32 0, align 4
@SK_BT_DESC = common dso_local global i32 0, align 4
@BTGreaterStrategyNumber = common dso_local global i32 0, align 4
@BTLessStrategyNumber = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@trace_sort = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @tuplesort_begin_index_btree(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.TYPE_11__* @tuplesort_begin_common(i32 %20, i32 %21, i32 %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %13, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @MemoryContextSwitchTo(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @IndexRelationGetNumberOfKeyAttributes(i8* %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @INDEX_SORT, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %40 = call i32 @PARALLEL_SORT(%struct.TYPE_11__* %39)
  %41 = call i32 @TRACE_POSTGRESQL_SORT_START(i32 %32, i32 %33, i32 %36, i32 %37, i32 %38, i32 %40)
  %42 = load i32, i32* @comparetup_index_btree, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @copytup_index, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @writetup_index, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @readtup_index, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i32 10, i32* %55, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call %struct.TYPE_14__* @_bt_mkscankey(i8* %65, i32* null)
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %14, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i64 @palloc0(i32 %72)
  %74 = inttoptr i64 %73 to %struct.TYPE_12__*
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %76, align 8
  store i32 0, i32* %16, align 4
  br label %77

77:                                               ; preds = %145, %6
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %148

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i64 %88
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %17, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %18, align 8
  %96 = load i32, i32* @CurrentMemoryContext, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* %16, align 4
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @AssertState(i32 %127)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SK_BT_DESC, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %83
  %136 = load i32, i32* @BTGreaterStrategyNumber, align 4
  br label %139

137:                                              ; preds = %83
  %138 = load i32, i32* @BTLessStrategyNumber, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  store i32 %140, i32* %19, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %144 = call i32 @PrepareSortSupportFromIndexRel(i8* %141, i32 %142, %struct.TYPE_12__* %143)
  br label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %77

148:                                              ; preds = %77
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %150 = call i32 @pfree(%struct.TYPE_14__* %149)
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @MemoryContextSwitchTo(i32 %151)
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  ret %struct.TYPE_11__* %153
}

declare dso_local %struct.TYPE_11__* @tuplesort_begin_common(i32, i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(i8*) #1

declare dso_local i32 @TRACE_POSTGRESQL_SORT_START(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PARALLEL_SORT(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_14__* @_bt_mkscankey(i8*, i32*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @AssertState(i32) #1

declare dso_local i32 @PrepareSortSupportFromIndexRel(i8*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @pfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
