; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_GetAllTablesPublicationRelations.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_GetAllTablesPublicationRelations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@RelationRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_class_relkind = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_CHAREQ = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetAllTablesPublicationRelations() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = load i32*, i32** @NIL, align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* @RelationRelationId, align 4
  %10 = load i32, i32* @AccessShareLock, align 4
  %11 = call i32 @table_open(i32 %9, i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %13 = load i32, i32* @Anum_pg_class_relkind, align 4
  %14 = load i32, i32* @BTEqualStrategyNumber, align 4
  %15 = load i32, i32* @F_CHAREQ, align 4
  %16 = load i32, i32* @RELKIND_RELATION, align 4
  %17 = call i32 @CharGetDatum(i32 %16)
  %18 = call i32 @ScanKeyInit(i32* %12, i32 %13, i32 %14, i32 %15, i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %21 = call i32 @table_beginscan_catalog(i32 %19, i32 1, i32* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %43, %0
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ForwardScanDirection, align 4
  %25 = call i32* @heap_getnext(i32 %23, i32 %24)
  store i32* %25, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @GETSTRUCT(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %6, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = call i64 @is_publishable_class(i32 %35, %struct.TYPE_3__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32* @lappend_oid(i32* %40, i32 %41)
  store i32* %42, i32** %5, align 8
  br label %43

43:                                               ; preds = %39, %27
  br label %22

44:                                               ; preds = %22
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @table_endscan(i32 %45)
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @AccessShareLock, align 4
  %49 = call i32 @table_close(i32 %47, i32 %48)
  %50 = load i32*, i32** %5, align 8
  ret i32* %50
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CharGetDatum(i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i64 @is_publishable_class(i32, %struct.TYPE_3__*) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
