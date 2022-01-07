; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash.c_hashbuild.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash.c_hashbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { double, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { i64, i32*, %struct.TYPE_18__* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"index \22%s\22 already contains data\00", align 1
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@maintenance_work_mem = common dso_local global i64 0, align 8
@BLCKSZ = common dso_local global i64 0, align 8
@RELPERSISTENCE_TEMP = common dso_local global i64 0, align 8
@NBuffers = common dso_local global i32 0, align 4
@NLocBuffer = common dso_local global i32 0, align 4
@hashbuildCallback = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_TUPLES_TOTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @hashbuild(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = call i64 @RelationGetNumberOfBlocks(%struct.TYPE_18__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @ERROR, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = call i32 @RelationGetRelationName(%struct.TYPE_18__* %19)
  %21 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = call i32 @estimate_rel_size(%struct.TYPE_18__* %23, i32* null, i32* %8, double* %9, double* %10)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = load double, double* %9, align 8
  %27 = load i32, i32* @MAIN_FORKNUM, align 4
  %28 = call i64 @_hash_init(%struct.TYPE_18__* %25, double %26, i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* @maintenance_work_mem, align 8
  %30 = mul nsw i64 %29, 1024
  %31 = load i64, i64* @BLCKSZ, align 8
  %32 = sdiv i64 %30, %31
  store i64 %32, i64* %12, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RELPERSISTENCE_TEMP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %22
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* @NBuffers, align 4
  %43 = call i64 @Min(i64 %41, i32 %42)
  store i64 %43, i64* %12, align 8
  br label %48

44:                                               ; preds = %22
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* @NLocBuffer, align 4
  %47 = call i64 @Min(i64 %45, i32 %46)
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32* @_h_spoolinit(%struct.TYPE_18__* %53, %struct.TYPE_18__* %54, i64 %55)
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  store i32* %56, i32** %57, align 8
  br label %60

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %58, %52
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %63, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @hashbuildCallback, align 4
  %68 = bitcast %struct.TYPE_20__* %13 to i8*
  %69 = call double @table_index_build_scan(%struct.TYPE_18__* %64, %struct.TYPE_18__* %65, i32* %66, i32 1, i32 1, i32 %67, i8* %68, i32* null)
  store double %69, double* %9, align 8
  %70 = load i32, i32* @PROGRESS_CREATEIDX_TUPLES_TOTAL, align 4
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @pgstat_progress_update_param(i32 %70, i64 %72)
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %60
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = call i32 @_h_indexbuild(i32* %79, %struct.TYPE_18__* %81)
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @_h_spooldestroy(i32* %84)
  br label %86

86:                                               ; preds = %77, %60
  %87 = call i64 @palloc(i32 16)
  %88 = inttoptr i64 %87 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %88, %struct.TYPE_19__** %7, align 8
  %89 = load double, double* %9, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  store double %89, double* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  ret %struct.TYPE_19__* %96
}

declare dso_local i64 @RelationGetNumberOfBlocks(%struct.TYPE_18__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_18__*) #1

declare dso_local i32 @estimate_rel_size(%struct.TYPE_18__*, i32*, i32*, double*, double*) #1

declare dso_local i64 @_hash_init(%struct.TYPE_18__*, double, i32) #1

declare dso_local i64 @Min(i64, i32) #1

declare dso_local i32* @_h_spoolinit(%struct.TYPE_18__*, %struct.TYPE_18__*, i64) #1

declare dso_local double @table_index_build_scan(%struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @pgstat_progress_update_param(i32, i64) #1

declare dso_local i32 @_h_indexbuild(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @_h_spooldestroy(i32*) #1

declare dso_local i64 @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
