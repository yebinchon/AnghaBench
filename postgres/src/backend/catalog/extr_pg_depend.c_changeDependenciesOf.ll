; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_changeDependenciesOf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_changeDependenciesOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@DependRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_depend_classid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_depend_objid = common dso_local global i32 0, align 4
@DependDependerIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @changeDependenciesOf(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %13 = load i32, i32* @DependRelationId, align 4
  %14 = load i32, i32* @RowExclusiveLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %17 = load i32, i32* @Anum_pg_depend_classid, align 4
  %18 = load i32, i32* @BTEqualStrategyNumber, align 4
  %19 = load i32, i32* @F_OIDEQ, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ObjectIdGetDatum(i32 %20)
  %22 = call i32 @ScanKeyInit(i32* %16, i32 %17, i32 %18, i32 %19, i32 %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %24 = load i32, i32* @Anum_pg_depend_objid, align 4
  %25 = load i32, i32* @BTEqualStrategyNumber, align 4
  %26 = load i32, i32* @F_OIDEQ, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ObjectIdGetDatum(i32 %27)
  %29 = call i32 @ScanKeyInit(i32* %23, i32 %24, i32 %25, i32 %26, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @DependDependerIndexId, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %33 = call i32 @systable_beginscan(i32 %30, i32 %31, i32 1, i32* null, i32 2, i32* %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %39, %3
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.TYPE_10__* @systable_getnext(i32 %35)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %11, align 8
  %37 = call i64 @HeapTupleIsValid(%struct.TYPE_10__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %34
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %41 = call i64 @GETSTRUCT(%struct.TYPE_10__* %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %12, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = call %struct.TYPE_10__* @heap_copytuple(%struct.TYPE_10__* %43)
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %11, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = call i64 @GETSTRUCT(%struct.TYPE_10__* %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %12, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = call i32 @CatalogTupleUpdate(i32 %51, i32* %53, %struct.TYPE_10__* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %57 = call i32 @heap_freetuple(%struct.TYPE_10__* %56)
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %34

60:                                               ; preds = %34
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @systable_endscan(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @RowExclusiveLock, align 4
  %65 = call i32 @table_close(i32 %63, i32 %64)
  %66 = load i64, i64* %7, align 8
  ret i64 %66
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @heap_copytuple(%struct.TYPE_10__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_10__*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
