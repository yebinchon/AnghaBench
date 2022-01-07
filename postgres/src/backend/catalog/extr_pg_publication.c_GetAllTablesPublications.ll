; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_GetAllTablesPublications.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_publication.c_GetAllTablesPublications.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PublicationRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_publication_puballtables = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_BOOLEQ = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetAllTablesPublications() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @PublicationRelationId, align 4
  %8 = load i32, i32* @AccessShareLock, align 4
  %9 = call i32 @table_open(i32 %7, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @Anum_pg_publication_puballtables, align 4
  %11 = load i32, i32* @BTEqualStrategyNumber, align 4
  %12 = load i32, i32* @F_BOOLEQ, align 4
  %13 = call i32 @BoolGetDatum(i32 1)
  %14 = call i32 @ScanKeyInit(i32* %3, i32 %10, i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @InvalidOid, align 4
  %17 = call i32 @systable_beginscan(i32 %15, i32 %16, i32 0, i32* null, i32 1, i32* %3)
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** @NIL, align 8
  store i32* %18, i32** %1, align 8
  br label %19

19:                                               ; preds = %24, %0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @systable_getnext(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = call i64 @HeapTupleIsValid(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @GETSTRUCT(i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32* @lappend_oid(i32* %30, i32 %31)
  store i32* %32, i32** %1, align 8
  br label %19

33:                                               ; preds = %19
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @systable_endscan(i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @AccessShareLock, align 4
  %38 = call i32 @table_close(i32 %36, i32 %37)
  %39 = load i32*, i32** %1, align 8
  ret i32* %39
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @BoolGetDatum(i32) #1

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
