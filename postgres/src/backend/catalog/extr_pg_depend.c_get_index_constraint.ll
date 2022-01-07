; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_get_index_constraint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_get_index_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@DependRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_depend_classid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@Anum_pg_depend_objid = common dso_local global i32 0, align 4
@Anum_pg_depend_objsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@DependDependerIndexId = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i64 0, align 8
@DEPENDENCY_INTERNAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_index_constraint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @InvalidOid, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @DependRelationId, align 4
  %11 = load i32, i32* @AccessShareLock, align 4
  %12 = call i32 @table_open(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %14 = load i32, i32* @Anum_pg_depend_classid, align 4
  %15 = load i32, i32* @BTEqualStrategyNumber, align 4
  %16 = load i32, i32* @F_OIDEQ, align 4
  %17 = load i32, i32* @RelationRelationId, align 4
  %18 = call i32 @ObjectIdGetDatum(i32 %17)
  %19 = call i32 @ScanKeyInit(i32* %13, i32 %14, i32 %15, i32 %16, i32 %18)
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %21 = load i32, i32* @Anum_pg_depend_objid, align 4
  %22 = load i32, i32* @BTEqualStrategyNumber, align 4
  %23 = load i32, i32* @F_OIDEQ, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @ObjectIdGetDatum(i32 %24)
  %26 = call i32 @ScanKeyInit(i32* %20, i32 %21, i32 %22, i32 %23, i32 %25)
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %28 = load i32, i32* @Anum_pg_depend_objsubid, align 4
  %29 = load i32, i32* @BTEqualStrategyNumber, align 4
  %30 = load i32, i32* @F_INT4EQ, align 4
  %31 = call i32 @Int32GetDatum(i32 0)
  %32 = call i32 @ScanKeyInit(i32* %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @DependDependerIndexId, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %36 = call i32 @systable_beginscan(i32 %33, i32 %34, i32 1, i32* null, i32 3, i32* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %67, %1
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @systable_getnext(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = call i64 @HeapTupleIsValid(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @GETSTRUCT(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %8, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ConstraintRelationId, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %42
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DEPENDENCY_INTERNAL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %57, %52, %42
  br label %37

68:                                               ; preds = %63, %37
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @systable_endscan(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @AccessShareLock, align 4
  %73 = call i32 @table_close(i32 %71, i32 %72)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
