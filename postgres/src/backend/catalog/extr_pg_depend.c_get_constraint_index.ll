; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_get_constraint_index.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_get_constraint_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@DependRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_depend_refclassid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@Anum_pg_depend_refobjid = common dso_local global i32 0, align 4
@Anum_pg_depend_refobjsubid = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@DependReferenceIndexId = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i64 0, align 8
@DEPENDENCY_INTERNAL = common dso_local global i64 0, align 8
@RELKIND_INDEX = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_INDEX = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_constraint_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @InvalidOid, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @DependRelationId, align 4
  %12 = load i32, i32* @AccessShareLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %15 = load i32, i32* @Anum_pg_depend_refclassid, align 4
  %16 = load i32, i32* @BTEqualStrategyNumber, align 4
  %17 = load i32, i32* @F_OIDEQ, align 4
  %18 = load i32, i32* @ConstraintRelationId, align 4
  %19 = call i32 @ObjectIdGetDatum(i32 %18)
  %20 = call i32 @ScanKeyInit(i32* %14, i32 %15, i32 %16, i32 %17, i32 %19)
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %22 = load i32, i32* @Anum_pg_depend_refobjid, align 4
  %23 = load i32, i32* @BTEqualStrategyNumber, align 4
  %24 = load i32, i32* @F_OIDEQ, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @ObjectIdGetDatum(i32 %25)
  %27 = call i32 @ScanKeyInit(i32* %21, i32 %22, i32 %23, i32 %24, i32 %26)
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %29 = load i32, i32* @Anum_pg_depend_refobjsubid, align 4
  %30 = load i32, i32* @BTEqualStrategyNumber, align 4
  %31 = load i32, i32* @F_INT4EQ, align 4
  %32 = call i32 @Int32GetDatum(i32 0)
  %33 = call i32 @ScanKeyInit(i32* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DependReferenceIndexId, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %37 = call i32 @systable_beginscan(i32 %34, i32 %35, i32 1, i32* null, i32 3, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %85, %80, %1
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @systable_getnext(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = call i64 @HeapTupleIsValid(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @GETSTRUCT(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %47, %struct.TYPE_2__** %8, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RelationRelationId, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %43
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %53
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DEPENDENCY_INTERNAL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %58
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call signext i8 @get_rel_relkind(i32 %67)
  store i8 %68, i8* %9, align 1
  %69 = load i8, i8* %9, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @RELKIND_INDEX, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load i8, i8* %9, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @RELKIND_PARTITIONED_INDEX, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %38

81:                                               ; preds = %74, %64
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %58, %53, %43
  br label %38

86:                                               ; preds = %81, %38
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @systable_endscan(i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @AccessShareLock, align 4
  %91 = call i32 @table_close(i32 %89, i32 %90)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
