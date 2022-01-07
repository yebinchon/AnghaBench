; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_get_all_vacuum_rels.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_get_all_vacuum_rels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@NIL = common dso_local global i32* null, align 8
@RelationRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@vac_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @get_all_vacuum_rels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_all_vacuum_rels(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32*, i32** @NIL, align 8
  store i32* %10, i32** %3, align 8
  %11 = load i32, i32* @RelationRelationId, align 4
  %12 = load i32, i32* @AccessShareLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @table_beginscan_catalog(i32 %14, i32 0, i32* null)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %54, %53, %34, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ForwardScanDirection, align 4
  %19 = call i32* @heap_getnext(i32 %17, i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %64

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @GETSTRUCT(i32* %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @vacuum_is_relation_owner(i32 %29, %struct.TYPE_3__* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %16

35:                                               ; preds = %21
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RELKIND_RELATION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RELKIND_MATVIEW, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %16

54:                                               ; preds = %47, %41, %35
  %55 = load i32, i32* @vac_context, align 4
  %56 = call i32 @MemoryContextSwitchTo(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** @NIL, align 8
  %60 = call i32 @makeVacuumRelation(i32* null, i32 %58, i32* %59)
  %61 = call i32* @lappend(i32* %57, i32 %60)
  store i32* %61, i32** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @MemoryContextSwitchTo(i32 %62)
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @table_endscan(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @AccessShareLock, align 4
  %69 = call i32 @table_close(i32 %67, i32 %68)
  %70 = load i32*, i32** %3, align 8
  ret i32* %70
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @vacuum_is_relation_owner(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @makeVacuumRelation(i32*, i32, i32*) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
