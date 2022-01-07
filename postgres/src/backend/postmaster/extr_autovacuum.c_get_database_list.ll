; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_get_database_list.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_get_database_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32 }

@NIL = common dso_local global i32* null, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@DatabaseRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_database_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_database_list() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = load i32*, i32** @NIL, align 8
  store i32* %9, i32** %1, align 8
  %10 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 (...) @StartTransactionCommand()
  %12 = call i32 (...) @GetTransactionSnapshot()
  %13 = load i32, i32* @DatabaseRelationId, align 4
  %14 = load i32, i32* @AccessShareLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @table_beginscan_catalog(i32 %16, i32 0, i32* null)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %24, %0
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ForwardScanDirection, align 4
  %21 = call i32 @heap_getnext(i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = call i64 @HeapTupleIsValid(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @GETSTRUCT(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @MemoryContextSwitchTo(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = call i64 @palloc(i32 24)
  %32 = inttoptr i64 %31 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %7, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @NameStr(i32 %40)
  %42 = call i32 @pstrdup(i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  %57 = load i32*, i32** %1, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = call i32* @lappend(i32* %57, %struct.TYPE_4__* %58)
  store i32* %59, i32** %1, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @MemoryContextSwitchTo(i32 %60)
  br label %18

62:                                               ; preds = %18
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @table_endscan(i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @AccessShareLock, align 4
  %67 = call i32 @table_close(i32 %65, i32 %66)
  %68 = call i32 (...) @CommitTransactionCommand()
  %69 = load i32*, i32** %1, align 8
  ret i32* %69
}

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @heap_getnext(i32, i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
