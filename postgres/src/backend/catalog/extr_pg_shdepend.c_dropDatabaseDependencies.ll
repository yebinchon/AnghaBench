; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_dropDatabaseDependencies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_dropDatabaseDependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SharedDependRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_shdepend_dbid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@SharedDependDependerIndexId = common dso_local global i32 0, align 4
@DatabaseRelationId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@SHARED_DEPENDENCY_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dropDatabaseDependencies(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @SharedDependRelationId, align 4
  %8 = load i32, i32* @RowExclusiveLock, align 4
  %9 = call i32 @table_open(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %11 = load i32, i32* @Anum_pg_shdepend_dbid, align 4
  %12 = load i32, i32* @BTEqualStrategyNumber, align 4
  %13 = load i32, i32* @F_OIDEQ, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = call i32 @ScanKeyInit(i32* %10, i32 %11, i32 %12, i32 %13, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SharedDependDependerIndexId, align 4
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %20 = call i32 @systable_beginscan(i32 %17, i32 %18, i32 1, i32* null, i32 1, i32* %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %26, %1
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.TYPE_4__* @systable_getnext(i32 %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %6, align 8
  %24 = call i64 @HeapTupleIsValid(%struct.TYPE_4__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @CatalogTupleDelete(i32 %27, i32* %29)
  br label %21

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @systable_endscan(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @DatabaseRelationId, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @InvalidOid, align 4
  %38 = load i32, i32* @InvalidOid, align 4
  %39 = load i32, i32* @SHARED_DEPENDENCY_INVALID, align 4
  %40 = call i32 @shdepDropDependency(i32 %34, i32 %35, i32 %36, i32 0, i32 1, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @RowExclusiveLock, align 4
  %43 = call i32 @table_close(i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @systable_getnext(i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @shdepDropDependency(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
