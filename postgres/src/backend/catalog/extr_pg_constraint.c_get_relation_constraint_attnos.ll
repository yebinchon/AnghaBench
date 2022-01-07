; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_get_relation_constraint_attnos.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_get_relation_constraint_attnos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_constraint_contypid = common dso_local global i32 0, align 4
@Anum_pg_constraint_conname = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@Anum_pg_constraint_conkey = common dso_local global i32 0, align 4
@INT2OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"conkey is not a 1-D smallint array\00", align 1
@FirstLowInvalidHeapAttributeNumber = common dso_local global i64 0, align 8
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"constraint \22%s\22 for table \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_relation_constraint_attnos(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %20 = load i32, i32* @InvalidOid, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @ConstraintRelationId, align 4
  %23 = load i32, i32* @AccessShareLock, align 4
  %24 = call i32 @table_open(i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %26 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %27 = load i32, i32* @BTEqualStrategyNumber, align 4
  %28 = load i32, i32* @F_OIDEQ, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ObjectIdGetDatum(i32 %29)
  %31 = call i32 @ScanKeyInit(i32* %25, i32 %26, i32 %27, i32 %28, i32 %30)
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %33 = load i32, i32* @Anum_pg_constraint_contypid, align 4
  %34 = load i32, i32* @BTEqualStrategyNumber, align 4
  %35 = load i32, i32* @F_OIDEQ, align 4
  %36 = load i32, i32* @InvalidOid, align 4
  %37 = call i32 @ObjectIdGetDatum(i32 %36)
  %38 = call i32 @ScanKeyInit(i32* %32, i32 %33, i32 %34, i32 %35, i32 %37)
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %40 = load i32, i32* @Anum_pg_constraint_conname, align 4
  %41 = load i32, i32* @BTEqualStrategyNumber, align 4
  %42 = load i32, i32* @F_NAMEEQ, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @CStringGetDatum(i8* %43)
  %45 = call i32 @ScanKeyInit(i32* %39, i32 %40, i32 %41, i32 %42, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %49 = call i32 @systable_beginscan(i32 %46, i32 %47, i32 1, i32* null, i32 3, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @systable_getnext(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = call i64 @HeapTupleIsValid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %116

54:                                               ; preds = %4
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @GETSTRUCT(i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @Anum_pg_constraint_conkey, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @RelationGetDescr(i32 %63)
  %65 = call i32 @heap_getattr(i32 %61, i32 %62, i32 %64, i32* %15)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %115, label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %14, align 4
  %70 = call i32* @DatumGetArrayTypeP(i32 %69)
  store i32* %70, i32** %16, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = call i32* @ARR_DIMS(i32* %71)
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %17, align 4
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @ARR_NDIM(i32* %75)
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %90, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %17, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = load i32*, i32** %16, align 8
  %83 = call i64 @ARR_HASNULL(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = load i32*, i32** %16, align 8
  %87 = call i64 @ARR_ELEMTYPE(i32* %86)
  %88 = load i64, i64* @INT2OID, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85, %81, %78, %68
  %91 = load i32, i32* @ERROR, align 4
  %92 = call i32 @elog(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i32*, i32** %16, align 8
  %95 = call i64 @ARR_DATA_PTR(i32* %94)
  %96 = inttoptr i64 %95 to i64*
  store i64* %96, i64** %18, align 8
  store i32 0, i32* %19, align 4
  br label %97

97:                                               ; preds = %111, %93
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i32*, i32** %9, align 8
  %103 = load i64*, i64** %18, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %109 = sub nsw i64 %107, %108
  %110 = call i32* @bms_add_member(i32* %102, i64 %109)
  store i32* %110, i32** %9, align 8
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  br label %97

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %114, %54
  br label %116

116:                                              ; preds = %115, %4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @systable_endscan(i32 %117)
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @OidIsValid(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @ERROR, align 4
  %128 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %129 = call i32 @errcode(i32 %128)
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @get_rel_name(i32 %131)
  %133 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %130, i32 %132)
  %134 = call i32 @ereport(i32 %127, i32 %133)
  br label %135

135:                                              ; preds = %126, %123, %116
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @AccessShareLock, align 4
  %138 = call i32 @table_close(i32 %136, i32 %137)
  %139 = load i32*, i32** %9, align 8
  ret i32* %139
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i32* @bms_add_member(i32*, i64) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
