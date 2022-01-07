; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_get_tables_to_cluster.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_cluster.c_get_tables_to_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NIL = common dso_local global i32* null, align 8
@IndexRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_index_indisclustered = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_BOOLEQ = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @get_tables_to_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_tables_to_cluster(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32*, i32** @NIL, align 8
  store i32* %11, i32** %10, align 8
  %12 = load i32, i32* @IndexRelationId, align 4
  %13 = load i32, i32* @AccessShareLock, align 4
  %14 = call i32 @table_open(i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @Anum_pg_index_indisclustered, align 4
  %16 = load i32, i32* @BTEqualStrategyNumber, align 4
  %17 = load i32, i32* @F_BOOLEQ, align 4
  %18 = call i32 @BoolGetDatum(i32 1)
  %19 = call i32 @ScanKeyInit(i32* %5, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @table_beginscan_catalog(i32 %20, i32 1, i32* %5)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %38, %37, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ForwardScanDirection, align 4
  %25 = call i32* @heap_getnext(i32 %23, i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %58

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @GETSTRUCT(i32* %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %7, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (...) @GetUserId()
  %35 = call i32 @pg_class_ownercheck(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %22

38:                                               ; preds = %27
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @MemoryContextSwitchTo(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = call i64 @palloc(i32 8)
  %42 = inttoptr i64 %41 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %9, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = call i32* @lappend(i32* %53, %struct.TYPE_4__* %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @MemoryContextSwitchTo(i32 %56)
  br label %22

58:                                               ; preds = %22
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @table_endscan(i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @AccessShareLock, align 4
  %63 = call i32 @relation_close(i32 %61, i32 %62)
  %64 = load i32*, i32** %10, align 8
  ret i32* %64
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @BoolGetDatum(i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @pg_class_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
