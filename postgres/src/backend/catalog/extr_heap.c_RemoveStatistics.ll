; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_RemoveStatistics.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_RemoveStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@StatisticRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_statistic_starelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_statistic_staattnum = common dso_local global i32 0, align 4
@F_INT2EQ = common dso_local global i32 0, align 4
@StatisticRelidAttnumInhIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveStatistics(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @StatisticRelationId, align 4
  %11 = load i32, i32* @RowExclusiveLock, align 4
  %12 = call i32 @table_open(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %14 = load i32, i32* @Anum_pg_statistic_starelid, align 4
  %15 = load i32, i32* @BTEqualStrategyNumber, align 4
  %16 = load i32, i32* @F_OIDEQ, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ObjectIdGetDatum(i32 %17)
  %19 = call i32 @ScanKeyInit(i32* %13, i32 %14, i32 %15, i32 %16, i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %31

23:                                               ; preds = %2
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %25 = load i32, i32* @Anum_pg_statistic_staattnum, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_INT2EQ, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @Int16GetDatum(i64 %28)
  %30 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %29)
  store i32 2, i32* %8, align 4
  br label %31

31:                                               ; preds = %23, %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @StatisticRelidAttnumInhIndexId, align 4
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %36 = call i32 @systable_beginscan(i32 %32, i32 %33, i32 1, i32* null, i32 %34, i32* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %42, %31
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.TYPE_4__* @systable_getnext(i32 %38)
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %9, align 8
  %40 = call i64 @HeapTupleIsValid(%struct.TYPE_4__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @CatalogTupleDelete(i32 %43, i32* %45)
  br label %37

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @systable_endscan(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @RowExclusiveLock, align 4
  %52 = call i32 @table_close(i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int16GetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @systable_getnext(i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
