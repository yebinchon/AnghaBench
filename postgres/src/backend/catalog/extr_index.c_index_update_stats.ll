; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_update_stats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i64, i64 }

@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_class_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not find tuple for relation %u\00", align 1
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@RELKIND_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, double)* @index_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @index_update_stats(i32 %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x i32], align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @RelationGetRelid(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @RelationRelationId, align 4
  %19 = load i32, i32* @RowExclusiveLock, align 4
  %20 = call i32 @table_open(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = call i64 (...) @IsBootstrapProcessingMode()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @RelationRelationId, align 4
  %25 = call i64 @ReindexIsProcessingHeap(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %23, %3
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %29 = load i32, i32* @Anum_pg_class_oid, align 4
  %30 = load i32, i32* @BTEqualStrategyNumber, align 4
  %31 = load i32, i32* @F_OIDEQ, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ObjectIdGetDatum(i32 %32)
  %34 = call i32 @ScanKeyInit(i32* %28, i32 %29, i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %37 = call i32 @table_beginscan_catalog(i32 %35, i32 1, i32* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @ForwardScanDirection, align 4
  %40 = call i32 @heap_getnext(i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @heap_copytuple(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @table_endscan(i32 %43)
  br label %50

45:                                               ; preds = %23
  %46 = load i32, i32* @RELOID, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ObjectIdGetDatum(i32 %47)
  %49 = call i32 @SearchSysCacheCopy1(i32 %46, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %27
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @HeapTupleIsValid(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @elog(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @GETSTRUCT(i32 %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %61, %struct.TYPE_2__** %10, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %66 = icmp ne i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  store i32 0, i32* %11, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %58
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %74, %58
  %79 = load double, double* %6, align 8
  %80 = fcmp oge double %79, 0.000000e+00
  br i1 %80, label %81, label %126

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @RelationGetNumberOfBlocks(i32 %82)
  store i64 %83, i64* %14, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RELKIND_INDEX, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @visibilitymap_count(i32 %90, i64* %15, i32* null)
  br label %93

92:                                               ; preds = %81
  store i64 0, i64* %15, align 8
  br label %93

93:                                               ; preds = %92, %89
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %14, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  store i32 1, i32* %11, align 4
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load double, double* %6, align 8
  %108 = fptosi double %107 to i64
  %109 = icmp ne i64 %106, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load double, double* %6, align 8
  %112 = fptosi double %111 to i64
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  store i32 1, i32* %11, align 4
  br label %115

115:                                              ; preds = %110, %103
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %15, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i64, i64* %15, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 4
  store i64 %122, i64* %124, align 8
  store i32 1, i32* %11, align 4
  br label %125

125:                                              ; preds = %121, %115
  br label %126

126:                                              ; preds = %125, %78
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @heap_inplace_update(i32 %130, i32 %131)
  br label %136

133:                                              ; preds = %126
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @CacheInvalidateRelcacheByTuple(i32 %134)
  br label %136

136:                                              ; preds = %133, %129
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @heap_freetuple(i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @RowExclusiveLock, align 4
  %141 = call i32 @table_close(i32 %139, i32 %140)
  ret void
}

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i64 @ReindexIsProcessingHeap(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i32 @heap_getnext(i32, i32) #1

declare dso_local i32 @heap_copytuple(i32) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @visibilitymap_count(i32, i64*, i32*) #1

declare dso_local i32 @heap_inplace_update(i32, i32) #1

declare dso_local i32 @CacheInvalidateRelcacheByTuple(i32) #1

declare dso_local i32 @heap_freetuple(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
