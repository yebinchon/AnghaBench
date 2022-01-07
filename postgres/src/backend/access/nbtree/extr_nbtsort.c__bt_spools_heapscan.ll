; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_spools_heapscan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsort.c__bt_spools_heapscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32, i32, %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@PROGRESS_CREATEIDX_SUBPHASE = common dso_local global i32 0, align 4
@PROGRESS_BTREE_PHASE_INDEXBUILD_TABLESCAN = common dso_local global i32 0, align 4
@maintenance_work_mem = common dso_local global i32 0, align 4
@work_mem = common dso_local global i32 0, align 4
@_bt_build_callback = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_TUPLES_TOTAL = common dso_local global i32 0, align 4
@PROGRESS_SCAN_BLOCKS_TOTAL = common dso_local global i32 0, align 4
@PROGRESS_SCAN_BLOCKS_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, i8*, %struct.TYPE_17__*, %struct.TYPE_15__*)* @_bt_spools_heapscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @_bt_spools_heapscan(i8* %0, i8* %1, %struct.TYPE_17__* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca [3 x i32], align 4
  %15 = alloca [3 x i32], align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %16 = call i64 @palloc0(i32 32)
  %17 = inttoptr i64 %16 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  store double 0.000000e+00, double* %11, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 5
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %31, align 8
  %32 = load i32, i32* @PROGRESS_CREATEIDX_SUBPHASE, align 4
  %33 = load i32, i32* @PROGRESS_BTREE_PHASE_INDEXBUILD_TABLESCAN, align 4
  %34 = call i32 @pgstat_progress_update_param(i32 %32, i32 %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @_bt_begin_parallel(%struct.TYPE_17__* %40, i32 %43, i64 %46)
  br label %48

48:                                               ; preds = %39, %4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = icmp ne %struct.TYPE_13__* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = call i64 @palloc0(i32 4)
  %55 = inttoptr i64 %54 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %10, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %53, %48
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @maintenance_work_mem, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %80 = call i8* @tuplesort_begin_index_btree(i8* %73, i8* %74, i32 %77, i32 %78, %struct.TYPE_14__* %79, i32 0)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  store i8* %80, i8** %84, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %136

89:                                               ; preds = %72
  %90 = call i64 @palloc0(i32 32)
  %91 = inttoptr i64 %90 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  store %struct.TYPE_16__* %100, %struct.TYPE_16__** %102, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = icmp ne %struct.TYPE_13__* %105, null
  br i1 %106, label %107, label %126

107:                                              ; preds = %89
  %108 = call i64 @palloc0(i32 4)
  %109 = inttoptr i64 %108 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %109, %struct.TYPE_14__** %13, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %107, %89
  %127 = load i8*, i8** %5, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* @work_mem, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %131 = call i8* @tuplesort_begin_index_btree(i8* %127, i8* %128, i32 0, i32 %129, %struct.TYPE_14__* %130, i32 0)
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  store i8* %131, i8** %135, align 8
  br label %136

136:                                              ; preds = %126, %72
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = icmp ne %struct.TYPE_13__* %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %136
  %142 = load i8*, i8** %5, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %145 = load i32, i32* @_bt_build_callback, align 4
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %147 = bitcast %struct.TYPE_17__* %146 to i8*
  %148 = call double @table_index_build_scan(i8* %142, i8* %143, %struct.TYPE_15__* %144, i32 1, i32 1, i32 %145, i8* %147, i32* null)
  store double %148, double* %11, align 8
  br label %154

149:                                              ; preds = %136
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 2
  %153 = call double @_bt_parallel_heapscan(%struct.TYPE_17__* %150, i32* %152)
  store double %153, double* %11, align 8
  br label %154

154:                                              ; preds = %149, %141
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %156 = load i32, i32* @PROGRESS_CREATEIDX_TUPLES_TOTAL, align 4
  store i32 %156, i32* %155, align 4
  %157 = getelementptr inbounds i32, i32* %155, i64 1
  %158 = load i32, i32* @PROGRESS_SCAN_BLOCKS_TOTAL, align 4
  store i32 %158, i32* %157, align 4
  %159 = getelementptr inbounds i32, i32* %157, i64 1
  %160 = load i32, i32* @PROGRESS_SCAN_BLOCKS_DONE, align 4
  store i32 %160, i32* %159, align 4
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %161, align 4
  %165 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 0, i32* %165, align 4
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 0, i32* %166, align 4
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %169 = call i32 @pgstat_progress_update_multi_param(i32 3, i32* %167, i32* %168)
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = icmp ne %struct.TYPE_16__* %172, null
  br i1 %173, label %174, label %186

174:                                              ; preds = %154
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = call i32 @_bt_spooldestroy(%struct.TYPE_16__* %182)
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %185, align 8
  br label %186

186:                                              ; preds = %179, %174, %154
  %187 = load double, double* %11, align 8
  ret double %187
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @pgstat_progress_update_param(i32, i32) #1

declare dso_local i32 @_bt_begin_parallel(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i8* @tuplesort_begin_index_btree(i8*, i8*, i32, i32, %struct.TYPE_14__*, i32) #1

declare dso_local double @table_index_build_scan(i8*, i8*, %struct.TYPE_15__*, i32, i32, i32, i8*, i32*) #1

declare dso_local double @_bt_parallel_heapscan(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @pgstat_progress_update_multi_param(i32, i32*, i32*) #1

declare dso_local i32 @_bt_spooldestroy(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
