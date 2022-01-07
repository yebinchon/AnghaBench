; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_getRelationsInNamespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_getRelationsInNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@Anum_pg_class_relnamespace = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_class_relkind = common dso_local global i32 0, align 4
@F_CHAREQ = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8)* @getRelationsInNamespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getRelationsInNamespace(i32 %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %11 = load i32*, i32** @NIL, align 8
  store i32* %11, i32** %5, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %13 = load i32, i32* @Anum_pg_class_relnamespace, align 4
  %14 = load i32, i32* @BTEqualStrategyNumber, align 4
  %15 = load i32, i32* @F_OIDEQ, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = call i32 @ScanKeyInit(i32* %12, i32 %13, i32 %14, i32 %15, i32 %17)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %20 = load i32, i32* @Anum_pg_class_relkind, align 4
  %21 = load i32, i32* @BTEqualStrategyNumber, align 4
  %22 = load i32, i32* @F_CHAREQ, align 4
  %23 = load i8, i8* %4, align 1
  %24 = call i32 @CharGetDatum(i8 signext %23)
  %25 = call i32 @ScanKeyInit(i32* %19, i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* @RelationRelationId, align 4
  %27 = load i32, i32* @AccessShareLock, align 4
  %28 = call i32 @table_open(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %31 = call i32 @table_beginscan_catalog(i32 %29, i32 2, i32* %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %37, %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ForwardScanDirection, align 4
  %35 = call i32* @heap_getnext(i32 %33, i32 %34)
  store i32* %35, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @GETSTRUCT(i32* %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32* @lappend_oid(i32* %43, i32 %44)
  store i32* %45, i32** %5, align 8
  br label %32

46:                                               ; preds = %32
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @table_endscan(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @AccessShareLock, align 4
  %51 = call i32 @table_close(i32 %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  ret i32* %52
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @CharGetDatum(i8 signext) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
