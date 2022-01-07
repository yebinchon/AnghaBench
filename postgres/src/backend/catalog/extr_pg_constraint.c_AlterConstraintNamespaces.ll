; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_AlterConstraintNamespaces.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_AlterConstraintNamespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i64, i32 }

@ConstraintRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@Anum_pg_constraint_contypid = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AlterConstraintNamespaces(i64 %0, i64 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* @ConstraintRelationId, align 4
  %18 = load i32, i32* @RowExclusiveLock, align 4
  %19 = call i32 @table_open(i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %21 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %22 = load i32, i32* @BTEqualStrategyNumber, align 4
  %23 = load i32, i32* @F_OIDEQ, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i64, i64* @InvalidOid, align 8
  br label %30

28:                                               ; preds = %5
  %29 = load i64, i64* %6, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @ObjectIdGetDatum(i64 %31)
  %33 = call i32 @ScanKeyInit(i32* %20, i32 %21, i32 %22, i32 %23, i32 %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %35 = load i32, i32* @Anum_pg_constraint_contypid, align 4
  %36 = load i32, i32* @BTEqualStrategyNumber, align 4
  %37 = load i32, i32* @F_OIDEQ, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i64, i64* %6, align 8
  br label %44

42:                                               ; preds = %30
  %43 = load i64, i64* @InvalidOid, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  %46 = call i32 @ObjectIdGetDatum(i64 %45)
  %47 = call i32 @ScanKeyInit(i32* %34, i32 %35, i32 %36, i32 %37, i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %51 = call i32 @systable_beginscan(i32 %48, i32 %49, i32 1, i32* null, i32 2, i32* %50)
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %96, %71, %44
  %53 = load i32, i32* %13, align 4
  %54 = call %struct.TYPE_13__* @systable_getnext(i32 %53)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %14, align 8
  %55 = call i64 @HeapTupleIsValid(%struct.TYPE_13__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %103

57:                                               ; preds = %52
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %59 = call i64 @GETSTRUCT(%struct.TYPE_13__* %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %15, align 8
  %61 = load i32, i32* @ConstraintRelationId, align 4
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i64 @object_address_present(%struct.TYPE_12__* %16, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %52

72:                                               ; preds = %57
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %84 = call %struct.TYPE_13__* @heap_copytuple(%struct.TYPE_13__* %83)
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %14, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %86 = call i64 @GETSTRUCT(%struct.TYPE_13__* %85)
  %87 = inttoptr i64 %86 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %87, %struct.TYPE_14__** %15, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %95 = call i32 @CatalogTupleUpdate(i32 %91, i32* %93, %struct.TYPE_13__* %94)
  br label %96

96:                                               ; preds = %82, %78, %72
  %97 = load i32, i32* @ConstraintRelationId, align 4
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @InvokeObjectPostAlterHook(i32 %97, i32 %99, i32 0)
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @add_exact_object_address(%struct.TYPE_12__* %16, i32* %101)
  br label %52

103:                                              ; preds = %52
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @systable_endscan(i32 %104)
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @RowExclusiveLock, align 4
  %108 = call i32 @table_close(i32 %106, i32 %107)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_13__*) #1

declare dso_local i64 @object_address_present(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_13__* @heap_copytuple(%struct.TYPE_13__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @add_exact_object_address(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
