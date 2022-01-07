; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_ScanPgRelation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_ScanPgRelation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MyDatabaseId = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"cannot read pg_class without having selected a database\00", align 1
@Anum_pg_class_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ClassOidIndexId = common dso_local global i32 0, align 4
@criticalRelcachesBuilt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ScanPgRelation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ScanPgRelation(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @MyDatabaseId, align 4
  %13 = call i32 @OidIsValid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @FATAL, align 4
  %17 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %3
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %20 = load i32, i32* @Anum_pg_class_oid, align 4
  %21 = load i32, i32* @BTEqualStrategyNumber, align 4
  %22 = load i32, i32* @F_OIDEQ, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ObjectIdGetDatum(i32 %23)
  %25 = call i32 @ScanKeyInit(i32* %19, i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* @RelationRelationId, align 4
  %27 = load i32, i32* @AccessShareLock, align 4
  %28 = call i32 @table_open(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i32, i32* @RelationRelationId, align 4
  %33 = call i32 @GetNonHistoricCatalogSnapshot(i32 %32)
  store i32 %33, i32* %11, align 4
  br label %37

34:                                               ; preds = %18
  %35 = load i32, i32* @RelationRelationId, align 4
  %36 = call i32 @GetCatalogSnapshot(i32 %35)
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ClassOidIndexId, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* @criticalRelcachesBuilt, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi i1 [ false, %37 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %11, align 4
  %49 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %50 = call i32 @systable_beginscan(i32 %38, i32 %39, i32 %47, i32 %48, i32 1, i32* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @systable_getnext(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @HeapTupleIsValid(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @heap_copytuple(i32 %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %45
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @systable_endscan(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @AccessShareLock, align 4
  %64 = call i32 @table_close(i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @GetNonHistoricCatalogSnapshot(i32) #1

declare dso_local i32 @GetCatalogSnapshot(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @heap_copytuple(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
