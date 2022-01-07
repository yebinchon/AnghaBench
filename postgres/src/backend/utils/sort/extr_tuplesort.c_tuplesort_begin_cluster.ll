; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_begin_cluster.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_tuplesort_begin_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__*, i32, %struct.TYPE_23__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_27__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i64, i32 }
%struct.TYPE_28__ = type { i32* }

@BTREE_AM_OID = common dso_local global i64 0, align 8
@CLUSTER_SORT = common dso_local global i32 0, align 4
@comparetup_cluster = common dso_local global i32 0, align 4
@copytup_cluster = common dso_local global i32 0, align 4
@writetup_cluster = common dso_local global i32 0, align 4
@readtup_cluster = common dso_local global i32 0, align 4
@TTSOpsHeapTuple = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@SK_BT_NULLS_FIRST = common dso_local global i32 0, align 4
@SK_BT_DESC = common dso_local global i32 0, align 4
@BTGreaterStrategyNumber = common dso_local global i32 0, align 4
@BTLessStrategyNumber = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@trace_sort = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @tuplesort_begin_cluster(i32 %0, %struct.TYPE_27__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.TYPE_24__* @tuplesort_begin_common(i32 %20, i32 %21, i32 %22)
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %11, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BTREE_AM_OID, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MemoryContextSwitchTo(i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %38 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_27__* %37)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @CLUSTER_SORT, align 4
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %48 = call i32 @PARALLEL_SORT(%struct.TYPE_24__* %47)
  %49 = call i32 @TRACE_POSTGRESQL_SORT_START(i32 %41, i32 0, i32 %44, i32 %45, i32 %46, i32 %48)
  %50 = load i32, i32* @comparetup_cluster, align 4
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @copytup_cluster, align 4
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @writetup_cluster, align 4
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @readtup_cluster, align 4
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  store i32 10, i32* %63, align 4
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %65 = call %struct.TYPE_23__* @BuildIndexInfo(%struct.TYPE_27__* %64)
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 4
  store %struct.TYPE_23__* %65, %struct.TYPE_23__** %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %72 = call %struct.TYPE_29__* @_bt_mkscankey(%struct.TYPE_27__* %71, i32* null)
  store %struct.TYPE_29__* %72, %struct.TYPE_29__** %12, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %5
  %80 = call i32 (...) @CreateExecutorState()
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32* @MakeSingleTupleTableSlot(i32 %83, i32* @TTSOpsHeapTuple)
  store i32* %84, i32** %15, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.TYPE_28__* @GetPerTupleExprContext(i32 %87)
  store %struct.TYPE_28__* %88, %struct.TYPE_28__** %16, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  br label %92

92:                                               ; preds = %79, %5
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i64 @palloc0(i32 %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_25__*
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 2
  store %struct.TYPE_25__* %100, %struct.TYPE_25__** %102, align 8
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %171, %92
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %174

109:                                              ; preds = %103
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i64 %114
  store %struct.TYPE_25__* %115, %struct.TYPE_25__** %17, align 8
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i64 %120
  store %struct.TYPE_26__* %121, %struct.TYPE_26__** %18, align 8
  %122 = load i32, i32* @CurrentMemoryContext, align 4
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* %14, align 4
  %145 = icmp eq i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @AssertState(i32 %153)
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @SK_BT_DESC, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %109
  %162 = load i32, i32* @BTGreaterStrategyNumber, align 4
  br label %165

163:                                              ; preds = %109
  %164 = load i32, i32* @BTLessStrategyNumber, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  store i32 %166, i32* %19, align 4
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %168 = load i32, i32* %19, align 4
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %170 = call i32 @PrepareSortSupportFromIndexRel(%struct.TYPE_27__* %167, i32 %168, %struct.TYPE_25__* %169)
  br label %171

171:                                              ; preds = %165
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %103

174:                                              ; preds = %103
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %176 = call i32 @pfree(%struct.TYPE_29__* %175)
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @MemoryContextSwitchTo(i32 %177)
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  ret %struct.TYPE_24__* %179
}

declare dso_local %struct.TYPE_24__* @tuplesort_begin_common(i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_27__*) #1

declare dso_local i32 @TRACE_POSTGRESQL_SORT_START(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PARALLEL_SORT(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @BuildIndexInfo(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_29__* @_bt_mkscankey(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @CreateExecutorState(...) #1

declare dso_local i32* @MakeSingleTupleTableSlot(i32, i32*) #1

declare dso_local %struct.TYPE_28__* @GetPerTupleExprContext(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @AssertState(i32) #1

declare dso_local i32 @PrepareSortSupportFromIndexRel(%struct.TYPE_27__*, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @pfree(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
