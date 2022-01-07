; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_heap_truncate_find_FKs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_heap_truncate_find_FKs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@NIL = common dso_local global i32* null, align 8
@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@CONSTRAINT_FOREIGN = common dso_local global i64 0, align 8
@list_oid_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @heap_truncate_find_FKs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** @NIL, align 8
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* @ConstraintRelationId, align 4
  %10 = load i32, i32* @AccessShareLock, align 4
  %11 = call i32 @table_open(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @InvalidOid, align 4
  %14 = call i32 @systable_beginscan(i32 %12, i32 %13, i32 0, i32* null, i32 0, i32* null)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %52, %38, %30, %1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @systable_getnext(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = call i64 @HeapTupleIsValid(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @GETSTRUCT(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %7, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CONSTRAINT_FOREIGN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %15

31:                                               ; preds = %20
  %32 = load i32*, i32** %2, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @list_member_oid(i32* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %15

39:                                               ; preds = %31
  %40 = load i32*, i32** %2, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @list_member_oid(i32* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %39
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @lappend_oid(i32* %47, i32 %50)
  store i32* %51, i32** %3, align 8
  br label %52

52:                                               ; preds = %46, %39
  br label %15

53:                                               ; preds = %15
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @systable_endscan(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @AccessShareLock, align 4
  %58 = call i32 @table_close(i32 %56, i32 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @list_oid_cmp, align 4
  %61 = call i32 @list_sort(i32* %59, i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @list_deduplicate_oid(i32* %62)
  %64 = load i32*, i32** %3, align 8
  ret i32* %64
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @list_member_oid(i32*, i32) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @list_sort(i32*, i32) #1

declare dso_local i32 @list_deduplicate_oid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
