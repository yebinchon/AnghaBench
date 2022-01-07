; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterDomainDropConstraint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterDomainDropConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@TypeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@ConstraintRelationId = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@Anum_pg_constraint_contypid = common dso_local global i32 0, align 4
@Anum_pg_constraint_conname = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"constraint \22%s\22 of domain \22%s\22 does not exist\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"constraint \22%s\22 of domain \22%s\22 does not exist, skipping\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @AlterDomainDropConstraint(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @makeTypeNameFromNameList(i32* %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @typenameTypeId(i32* null, i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @TypeRelationId, align 4
  %25 = load i32, i32* @RowExclusiveLock, align 4
  %26 = call i32 @table_open(i32 %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @TYPEOID, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @ObjectIdGetDatum(i32 %28)
  %30 = call i32* @SearchSysCacheCopy1(i32 %27, i32 %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @HeapTupleIsValid(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %4
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @checkDomainOwner(i32* %39)
  %41 = load i32, i32* @ConstraintRelationId, align 4
  %42 = load i32, i32* @RowExclusiveLock, align 4
  %43 = call i32 @table_open(i32 %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %45 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %46 = load i32, i32* @BTEqualStrategyNumber, align 4
  %47 = load i32, i32* @F_OIDEQ, align 4
  %48 = load i32, i32* @InvalidOid, align 4
  %49 = call i32 @ObjectIdGetDatum(i32 %48)
  %50 = call i32 @ScanKeyInit(i32* %44, i32 %45, i32 %46, i32 %47, i32 %49)
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %52 = load i32, i32* @Anum_pg_constraint_contypid, align 4
  %53 = load i32, i32* @BTEqualStrategyNumber, align 4
  %54 = load i32, i32* @F_OIDEQ, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ObjectIdGetDatum(i32 %55)
  %57 = call i32 @ScanKeyInit(i32* %51, i32 %52, i32 %53, i32 %54, i32 %56)
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  %59 = load i32, i32* @Anum_pg_constraint_conname, align 4
  %60 = load i32, i32* @BTEqualStrategyNumber, align 4
  %61 = load i32, i32* @F_NAMEEQ, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @CStringGetDatum(i8* %62)
  %64 = call i32 @ScanKeyInit(i32* %58, i32 %59, i32 %60, i32 %61, i32 %63)
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %68 = call i32 @systable_beginscan(i32 %65, i32 %66, i32 1, i32* null, i32 3, i32* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32* @systable_getnext(i32 %69)
  store i32* %70, i32** %17, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %38
  %73 = load i32, i32* @ConstraintRelationId, align 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %17, align 8
  %76 = call i64 @GETSTRUCT(i32* %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_7__*
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @performDeletion(%struct.TYPE_6__* %19, i32 %82, i32 0)
  store i32 1, i32* %18, align 4
  br label %84

84:                                               ; preds = %72, %38
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @systable_endscan(i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @RowExclusiveLock, align 4
  %89 = call i32 @table_close(i32 %87, i32 %88)
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %112, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %98 = call i32 @errcode(i32 %97)
  %99 = load i8*, i8** %7, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @TypeNameToString(i32* %100)
  %102 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %99, i32 %101)
  %103 = call i32 @ereport(i32 %96, i32 %102)
  br label %111

104:                                              ; preds = %92
  %105 = load i32, i32* @NOTICE, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @TypeNameToString(i32* %107)
  %109 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %106, i32 %108)
  %110 = call i32 @ereport(i32 %105, i32 %109)
  br label %111

111:                                              ; preds = %104, %95
  br label %112

112:                                              ; preds = %111, %84
  %113 = load i32, i32* %13, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @CacheInvalidateHeapTuple(i32 %113, i32* %114, i32* null)
  %116 = load i32, i32* @TypeRelationId, align 4
  %117 = load i32, i32* %11, align 4
  %118 = bitcast %struct.TYPE_6__* %5 to { i64, i64 }*
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @ObjectAddressSet(i64 %120, i64 %122, i32 %116, i32 %117)
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @RowExclusiveLock, align 4
  %126 = call i32 @table_close(i32 %124, i32 %125)
  %127 = bitcast %struct.TYPE_6__* %5 to { i64, i64 }*
  %128 = load { i64, i64 }, { i64, i64 }* %127, align 8
  ret { i64, i64 } %128
}

declare dso_local i32* @makeTypeNameFromNameList(i32*) #1

declare dso_local i32 @typenameTypeId(i32*, i32*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @checkDomainOwner(i32*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @performDeletion(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @TypeNameToString(i32*) #1

declare dso_local i32 @CacheInvalidateHeapTuple(i32, i32*, i32*) #1

declare dso_local i32 @ObjectAddressSet(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
