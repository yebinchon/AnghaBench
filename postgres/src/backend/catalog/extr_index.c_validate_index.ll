; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_validate_index.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_validate_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i64, i64, i64, i32 }

@PROGRESS_CREATEIDX_PHASE = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_TUPLES_DONE = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_TUPLES_TOTAL = common dso_local global i32 0, align 4
@PROGRESS_SCAN_BLOCKS_DONE = common dso_local global i32 0, align 4
@PROGRESS_SCAN_BLOCKS_TOTAL = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_PHASE_VALIDATE_IDXSCAN = common dso_local global i32 0, align 4
@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@SECURITY_RESTRICTED_OPERATION = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@INT8OID = common dso_local global i32 0, align 4
@Int8LessOperator = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@maintenance_work_mem = common dso_local global i32 0, align 4
@validate_index_callback = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_PHASE_VALIDATE_SORT = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_PHASE_VALIDATE_TABLESCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"validate_index found %.0f heap tuples, %.0f index tuples; inserted %.0f missing tuples\00", align 1
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_index(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [5 x i32], align 16
  %16 = alloca [5 x i32], align 16
  %17 = alloca [3 x i32], align 4
  %18 = alloca [3 x i32], align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %20 = load i32, i32* @PROGRESS_CREATEIDX_PHASE, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @PROGRESS_CREATEIDX_TUPLES_DONE, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* @PROGRESS_CREATEIDX_TUPLES_TOTAL, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @PROGRESS_SCAN_BLOCKS_DONE, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @PROGRESS_SCAN_BLOCKS_TOTAL, align 4
  store i32 %28, i32* %27, align 4
  %29 = bitcast [5 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 20, i1 false)
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %31 = load i32, i32* @PROGRESS_CREATEIDX_PHASE_VALIDATE_IDXSCAN, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 0
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %38 = call i32 @pgstat_progress_update_multi_param(i32 5, i32* %36, i32* %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  %41 = call %struct.TYPE_19__* @table_open(i32 %39, i32 %40)
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @RowExclusiveLock, align 4
  %44 = call %struct.TYPE_19__* @index_open(i32 %42, i32 %43)
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %8, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %46 = call %struct.TYPE_21__* @BuildIndexInfo(%struct.TYPE_19__* %45)
  store %struct.TYPE_21__* %46, %struct.TYPE_21__** %9, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = call i32 @GetUserIdAndSecContext(i32* %12, i32* %13)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @SECURITY_RESTRICTED_OPERATION, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @SetUserIdAndSecContext(i32 %54, i32 %57)
  %59 = call i32 (...) @NewGUCNestLevel()
  store i32 %59, i32* %14, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 6
  store %struct.TYPE_19__* %60, %struct.TYPE_19__** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @DEBUG2, align 4
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 5
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 4
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* @INT8OID, align 4
  %75 = load i32, i32* @Int8LessOperator, align 4
  %76 = load i32, i32* @InvalidOid, align 4
  %77 = load i32, i32* @maintenance_work_mem, align 4
  %78 = call i32 @tuplesort_begin_datum(i32 %74, i32 %75, i32 %76, i32 0, i32 %77, i32* null, i32 0)
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @validate_index_callback, align 4
  %84 = bitcast %struct.TYPE_18__* %11 to i8*
  %85 = call i32 @index_bulk_delete(%struct.TYPE_20__* %10, i32* null, i32 %83, i8* %84)
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %87 = load i32, i32* @PROGRESS_CREATEIDX_PHASE, align 4
  store i32 %87, i32* %86, align 4
  %88 = getelementptr inbounds i32, i32* %86, i64 1
  %89 = load i32, i32* @PROGRESS_SCAN_BLOCKS_DONE, align 4
  store i32 %89, i32* %88, align 4
  %90 = getelementptr inbounds i32, i32* %88, i64 1
  %91 = load i32, i32* @PROGRESS_SCAN_BLOCKS_TOTAL, align 4
  store i32 %91, i32* %90, align 4
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %93 = load i32, i32* @PROGRESS_CREATEIDX_PHASE_VALIDATE_SORT, align 4
  store i32 %93, i32* %92, align 4
  %94 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 0, i32* %94, align 4
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %98 = call i32 @pgstat_progress_update_multi_param(i32 3, i32* %96, i32* %97)
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @tuplesort_performsort(i32 %100)
  %102 = load i32, i32* @PROGRESS_CREATEIDX_PHASE, align 4
  %103 = load i32, i32* @PROGRESS_CREATEIDX_PHASE_VALIDATE_TABLESCAN, align 4
  %104 = call i32 @pgstat_progress_update_param(i32 %102, i32 %103)
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @table_index_validate_scan(%struct.TYPE_19__* %105, %struct.TYPE_19__* %106, %struct.TYPE_21__* %107, i32 %108, %struct.TYPE_18__* %11)
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @tuplesort_end(i32 %111)
  %113 = load i32, i32* @DEBUG2, align 4
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @elog(i32 %113, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i64 %115, i64 %117, i64 %119)
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @AtEOXact_GUC(i32 0, i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @SetUserIdAndSecContext(i32 %123, i32 %124)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %127 = load i32, i32* @NoLock, align 4
  %128 = call i32 @index_close(%struct.TYPE_19__* %126, i32 %127)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %130 = load i32, i32* @NoLock, align 4
  %131 = call i32 @table_close(%struct.TYPE_19__* %129, i32 %130)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pgstat_progress_update_multi_param(i32, i32*, i32*) #2

declare dso_local %struct.TYPE_19__* @table_open(i32, i32) #2

declare dso_local %struct.TYPE_19__* @index_open(i32, i32) #2

declare dso_local %struct.TYPE_21__* @BuildIndexInfo(%struct.TYPE_19__*) #2

declare dso_local i32 @GetUserIdAndSecContext(i32*, i32*) #2

declare dso_local i32 @SetUserIdAndSecContext(i32, i32) #2

declare dso_local i32 @NewGUCNestLevel(...) #2

declare dso_local i32 @tuplesort_begin_datum(i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @index_bulk_delete(%struct.TYPE_20__*, i32*, i32, i8*) #2

declare dso_local i32 @tuplesort_performsort(i32) #2

declare dso_local i32 @pgstat_progress_update_param(i32, i32) #2

declare dso_local i32 @table_index_validate_scan(%struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_21__*, i32, %struct.TYPE_18__*) #2

declare dso_local i32 @tuplesort_end(i32) #2

declare dso_local i32 @elog(i32, i8*, i64, i64, i64) #2

declare dso_local i32 @AtEOXact_GUC(i32, i32) #2

declare dso_local i32 @index_close(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @table_close(%struct.TYPE_19__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
