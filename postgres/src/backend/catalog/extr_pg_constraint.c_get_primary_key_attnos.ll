; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_get_primary_key_attnos.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_get_primary_key_attnos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }

@InvalidOid = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@CONSTRAINT_PRIMARY = common dso_local global i64 0, align 8
@Anum_pg_constraint_conkey = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"null conkey for constraint %u\00", align 1
@INT2OID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"conkey is not a 1-D smallint array\00", align 1
@FirstLowInvalidHeapAttributeNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_primary_key_attnos(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x i32], align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %19 = load i32, i32* @InvalidOid, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @ConstraintRelationId, align 4
  %22 = load i32, i32* @AccessShareLock, align 4
  %23 = call i32 @table_open(i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %25 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_OIDEQ, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ObjectIdGetDatum(i32 %28)
  %30 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %34 = call i32 @systable_beginscan(i32 %31, i32 %32, i32 1, i32* null, i32 1, i32* %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %49, %3
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @systable_getnext(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = call i64 @HeapTupleIsValid(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %128

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @GETSTRUCT(i32 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %12, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CONSTRAINT_PRIMARY, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %35

50:                                               ; preds = %40
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %128

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @Anum_pg_constraint_conkey, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @RelationGetDescr(i32 %62)
  %64 = call i32 @heap_getattr(i32 %60, i32 %61, i32 %63, i32* %14)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @GETSTRUCT(i32 %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @elog(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %67, %59
  %76 = load i32, i32* %13, align 4
  %77 = call i32* @DatumGetArrayTypeP(i32 %76)
  store i32* %77, i32** %15, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = call i32* @ARR_DIMS(i32* %78)
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %17, align 4
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @ARR_NDIM(i32* %82)
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %97, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %17, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %15, align 8
  %90 = call i64 @ARR_HASNULL(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %15, align 8
  %94 = call i64 @ARR_ELEMTYPE(i32* %93)
  %95 = load i64, i64* @INT2OID, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92, %88, %85, %75
  %98 = load i32, i32* @ERROR, align 4
  %99 = call i32 (i32, i8*, ...) @elog(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32*, i32** %15, align 8
  %102 = call i64 @ARR_DATA_PTR(i32* %101)
  %103 = inttoptr i64 %102 to i64*
  store i64* %103, i64** %16, align 8
  store i32 0, i32* %18, align 4
  br label %104

104:                                              ; preds = %118, %100
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load i32*, i32** %7, align 8
  %110 = load i64*, i64** %16, align 8
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %116 = sub nsw i64 %114, %115
  %117 = call i32* @bms_add_member(i32* %109, i64 %116)
  store i32* %117, i32** %7, align 8
  br label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %18, align 4
  br label %104

121:                                              ; preds = %104
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @GETSTRUCT(i32 %122)
  %124 = inttoptr i64 %123 to %struct.TYPE_2__*
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %58, %35
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @systable_endscan(i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @AccessShareLock, align 4
  %133 = call i32 @table_close(i32 %131, i32 %132)
  %134 = load i32*, i32** %7, align 8
  ret i32* %134
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i32* @bms_add_member(i32*, i64) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
