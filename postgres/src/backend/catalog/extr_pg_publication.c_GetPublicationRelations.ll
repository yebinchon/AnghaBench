; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_GetPublicationRelations.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_GetPublicationRelations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PublicationRelRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_publication_rel_prpubid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@PublicationRelPrrelidPrpubidIndexId = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetPublicationRelations(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @PublicationRelRelationId, align 4
  %10 = load i32, i32* @AccessShareLock, align 4
  %11 = call i32 @table_open(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @Anum_pg_publication_rel_prpubid, align 4
  %13 = load i32, i32* @BTEqualStrategyNumber, align 4
  %14 = load i32, i32* @F_OIDEQ, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ObjectIdGetDatum(i32 %15)
  %17 = call i32 @ScanKeyInit(i32* %5, i32 %12, i32 %13, i32 %14, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PublicationRelPrrelidPrpubidIndexId, align 4
  %20 = call i32 @systable_beginscan(i32 %18, i32 %19, i32 1, i32* null, i32 1, i32* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** @NIL, align 8
  store i32* %21, i32** %3, align 8
  br label %22

22:                                               ; preds = %27, %1
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @systable_getnext(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = call i64 @HeapTupleIsValid(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @GETSTRUCT(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %8, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @lappend_oid(i32* %31, i32 %34)
  store i32* %35, i32** %3, align 8
  br label %22

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @systable_endscan(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @AccessShareLock, align 4
  %41 = call i32 @table_close(i32 %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
