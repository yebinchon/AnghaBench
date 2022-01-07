; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_extended_stats.c_statext_store.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_extended_stats.c_statext_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@Natts_pg_statistic_ext_data = common dso_local global i32 0, align 4
@Anum_pg_statistic_ext_data_stxdndistinct = common dso_local global i32 0, align 4
@Anum_pg_statistic_ext_data_stxddependencies = common dso_local global i32 0, align 4
@Anum_pg_statistic_ext_data_stxdmcv = common dso_local global i32 0, align 4
@STATEXTDATASTXOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cache lookup failed for statistics object %u\00", align 1
@StatisticExtDataRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32**)* @statext_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statext_store(i32 %0, i32* %1, i32* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32** %4, i32*** %10, align 8
  %21 = load i32, i32* @Natts_pg_statistic_ext_data, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32, i32* @Natts_pg_statistic_ext_data, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %28 = load i32, i32* @Natts_pg_statistic_ext_data, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %31 = mul nuw i64 4, %26
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32* %27, i32 1, i32 %32)
  %34 = mul nuw i64 4, %29
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32* %30, i32 0, i32 %35)
  %37 = mul nuw i64 4, %22
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(i32* %24, i32 0, i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %5
  %43 = load i32*, i32** %7, align 8
  %44 = call i32* @statext_ndistinct_serialize(i32* %43)
  store i32* %44, i32** %18, align 8
  %45 = load i32*, i32** %18, align 8
  %46 = icmp eq i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @Anum_pg_statistic_ext_data_stxdndistinct, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %27, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32*, i32** %18, align 8
  %53 = call i32 @PointerGetDatum(i32* %52)
  %54 = load i32, i32* @Anum_pg_statistic_ext_data_stxdndistinct, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %24, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %42, %5
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load i32*, i32** %8, align 8
  %63 = call i32* @statext_dependencies_serialize(i32* %62)
  store i32* %63, i32** %19, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = icmp eq i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* @Anum_pg_statistic_ext_data_stxddependencies, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %27, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32*, i32** %19, align 8
  %72 = call i32 @PointerGetDatum(i32* %71)
  %73 = load i32, i32* @Anum_pg_statistic_ext_data_stxddependencies, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %24, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %61, %58
  %78 = load i32*, i32** %9, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load i32*, i32** %9, align 8
  %82 = load i32**, i32*** %10, align 8
  %83 = call i32* @statext_mcv_serialize(i32* %81, i32** %82)
  store i32* %83, i32** %20, align 8
  %84 = load i32*, i32** %20, align 8
  %85 = icmp eq i32* %84, null
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* @Anum_pg_statistic_ext_data_stxdmcv, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %27, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load i32*, i32** %20, align 8
  %92 = call i32 @PointerGetDatum(i32* %91)
  %93 = load i32, i32* @Anum_pg_statistic_ext_data_stxdmcv, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %24, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %80, %77
  %98 = load i32, i32* @Anum_pg_statistic_ext_data_stxdndistinct, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %30, i64 %100
  store i32 1, i32* %101, align 4
  %102 = load i32, i32* @Anum_pg_statistic_ext_data_stxddependencies, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %30, i64 %104
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* @Anum_pg_statistic_ext_data_stxdmcv, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %30, i64 %108
  store i32 1, i32* %109, align 4
  %110 = load i32, i32* @STATEXTDATASTXOID, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @ObjectIdGetDatum(i32 %111)
  %113 = call %struct.TYPE_9__* @SearchSysCache1(i32 %110, i32 %112)
  store %struct.TYPE_9__* %113, %struct.TYPE_9__** %12, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %115 = call i32 @HeapTupleIsValid(%struct.TYPE_9__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %97
  %118 = load i32, i32* @ERROR, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @elog(i32 %118, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %97
  %122 = load i32, i32* @StatisticExtDataRelationId, align 4
  %123 = load i32, i32* @RowExclusiveLock, align 4
  %124 = call i32 @table_open(i32 %122, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @RelationGetDescr(i32 %126)
  %128 = call %struct.TYPE_9__* @heap_modify_tuple(%struct.TYPE_9__* %125, i32 %127, i32* %24, i32* %27, i32* %30)
  store %struct.TYPE_9__* %128, %struct.TYPE_9__** %11, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %130 = call i32 @ReleaseSysCache(%struct.TYPE_9__* %129)
  %131 = load i32, i32* %17, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %135 = call i32 @CatalogTupleUpdate(i32 %131, i32* %133, %struct.TYPE_9__* %134)
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %137 = call i32 @heap_freetuple(%struct.TYPE_9__* %136)
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* @RowExclusiveLock, align 4
  %140 = call i32 @table_close(i32 %138, i32 %139)
  %141 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %141)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32* @statext_ndistinct_serialize(i32*) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i32* @statext_dependencies_serialize(i32*) #2

declare dso_local i32* @statext_mcv_serialize(i32*, i32**) #2

declare dso_local %struct.TYPE_9__* @SearchSysCache1(i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_9__*) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_9__* @heap_modify_tuple(%struct.TYPE_9__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_9__*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_9__*) #2

declare dso_local i32 @table_close(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
