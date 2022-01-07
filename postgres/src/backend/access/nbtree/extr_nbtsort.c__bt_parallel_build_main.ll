; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_parallel_build_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_parallel_build_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@PARALLEL_KEY_QUERY_TEXT = common dso_local global i32 0, align 4
@debug_query_string = common dso_local global i8* null, align 8
@STATE_RUNNING = common dso_local global i32 0, align 4
@PARALLEL_KEY_BTREE_SHARED = common dso_local global i32 0, align 4
@ShareLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@PARALLEL_KEY_TUPLESORT = common dso_local global i32 0, align 4
@PARALLEL_KEY_TUPLESORT_SPOOL2 = common dso_local global i32 0, align 4
@maintenance_work_mem = common dso_local global i32 0, align 4
@log_btree_build_stats = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bt_parallel_build_main(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @PARALLEL_KEY_QUERY_TEXT, align 4
  %18 = call i8* @shm_toc_lookup(i32* %16, i32 %17, i32 0)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** @debug_query_string, align 8
  %20 = load i32, i32* @STATE_RUNNING, align 4
  %21 = load i8*, i8** @debug_query_string, align 8
  %22 = call i32 @pgstat_report_activity(i32 %20, i8* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @PARALLEL_KEY_BTREE_SHARED, align 4
  %25 = call i8* @shm_toc_lookup(i32* %23, i32 %24, i32 0)
  %26 = bitcast i8* %25 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %8, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @ShareLock, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* @AccessExclusiveLock, align 4
  store i32 %33, i32* %14, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* @RowExclusiveLock, align 4
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i8* @table_open(i32 %40, i32 %41)
  store i8* %42, i8** %11, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i8* @index_open(i32 %45, i32 %46)
  store i8* %47, i8** %12, align 8
  %48 = call i64 @palloc0(i32 24)
  %49 = inttoptr i64 %48 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %6, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @PARALLEL_KEY_TUPLESORT, align 4
  %63 = call i8* @shm_toc_lookup(i32* %61, i32 %62, i32 0)
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @tuplesort_attach_shared(i32* %65, i32* %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %37
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  store i32* null, i32** %10, align 8
  br label %95

73:                                               ; preds = %37
  %74 = call i64 @palloc0(i32 24)
  %75 = inttoptr i64 %74 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %7, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* @PARALLEL_KEY_TUPLESORT_SPOOL2, align 4
  %90 = call i8* @shm_toc_lookup(i32* %88, i32 %89, i32 0)
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %10, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @tuplesort_attach_shared(i32* %92, i32* %93)
  br label %95

95:                                               ; preds = %73, %72
  %96 = load i32, i32* @maintenance_work_mem, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %96, %99
  store i32 %100, i32* %15, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @_bt_parallel_scan_and_sort(%struct.TYPE_6__* %101, %struct.TYPE_6__* %102, %struct.TYPE_7__* %103, i32* %104, i32* %105, i32 %106, i32 0)
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @index_close(i8* %108, i32 %109)
  %111 = load i8*, i8** %11, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @table_close(i8* %111, i32 %112)
  ret void
}

declare dso_local i8* @shm_toc_lookup(i32*, i32, i32) #1

declare dso_local i32 @pgstat_report_activity(i32, i8*) #1

declare dso_local i8* @table_open(i32, i32) #1

declare dso_local i8* @index_open(i32, i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @tuplesort_attach_shared(i32*, i32*) #1

declare dso_local i32 @_bt_parallel_scan_and_sort(%struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_7__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @index_close(i8*, i32) #1

declare dso_local i32 @table_close(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
