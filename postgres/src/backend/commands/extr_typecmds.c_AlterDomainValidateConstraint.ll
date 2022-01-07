; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterDomainValidateConstraint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterDomainValidateConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32 }

@TypeRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@ConstraintRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
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
@CONSTRAINT_CHECK = common dso_local global i64 0, align 8
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"constraint \22%s\22 of domain \22%s\22 is not a check constraint\00", align 1
@CONSTROID = common dso_local global i32 0, align 4
@Anum_pg_constraint_conbin = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"null conbin for constraint %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterDomainValidateConstraint(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca [3 x i32], align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @makeTypeNameFromNameList(i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @typenameTypeId(i32* null, i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @TypeRelationId, align 4
  %25 = load i32, i32* @AccessShareLock, align 4
  %26 = call i32 @table_open(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @TYPEOID, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ObjectIdGetDatum(i32 %28)
  %30 = call %struct.TYPE_14__* @SearchSysCache1(i32 %27, i32 %29)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %9, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = call i32 @HeapTupleIsValid(%struct.TYPE_14__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %2
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = call i32 @checkDomainOwner(%struct.TYPE_14__* %39)
  %41 = load i32, i32* @ConstraintRelationId, align 4
  %42 = load i32, i32* @RowExclusiveLock, align 4
  %43 = call i32 @table_open(i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %45 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %46 = load i32, i32* @BTEqualStrategyNumber, align 4
  %47 = load i32, i32* @F_OIDEQ, align 4
  %48 = load i32, i32* @InvalidOid, align 4
  %49 = call i32 @ObjectIdGetDatum(i32 %48)
  %50 = call i32 @ScanKeyInit(i32* %44, i32 %45, i32 %46, i32 %47, i32 %49)
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %52 = load i32, i32* @Anum_pg_constraint_contypid, align 4
  %53 = load i32, i32* @BTEqualStrategyNumber, align 4
  %54 = load i32, i32* @F_OIDEQ, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @ObjectIdGetDatum(i32 %55)
  %57 = call i32 @ScanKeyInit(i32* %51, i32 %52, i32 %53, i32 %54, i32 %56)
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  %59 = load i32, i32* @Anum_pg_constraint_conname, align 4
  %60 = load i32, i32* @BTEqualStrategyNumber, align 4
  %61 = load i32, i32* @F_NAMEEQ, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @CStringGetDatum(i8* %62)
  %64 = call i32 @ScanKeyInit(i32* %58, i32 %59, i32 %60, i32 %61, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %68 = call i32 @systable_beginscan(i32 %65, i32 %66, i32 1, i32* null, i32 3, i32* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call %struct.TYPE_14__* @systable_getnext(i32 %69)
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %16, align 8
  %71 = call i32 @HeapTupleIsValid(%struct.TYPE_14__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %38
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = load i8*, i8** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @TypeNameToString(i32* %78)
  %80 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %77, i32 %79)
  %81 = call i32 @ereport(i32 %74, i32 %80)
  br label %82

82:                                               ; preds = %73, %38
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %84 = call i64 @GETSTRUCT(%struct.TYPE_14__* %83)
  %85 = inttoptr i64 %84 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %10, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CONSTRAINT_CHECK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %82
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %94 = call i32 @errcode(i32 %93)
  %95 = load i8*, i8** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @TypeNameToString(i32* %96)
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %95, i32 %97)
  %99 = call i32 @ereport(i32 %92, i32 %98)
  br label %100

100:                                              ; preds = %91, %82
  %101 = load i32, i32* @CONSTROID, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %103 = load i32, i32* @Anum_pg_constraint_conbin, align 4
  %104 = call i32 @SysCacheGetAttr(i32 %101, %struct.TYPE_14__* %102, i32 %103, i32* %15)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* @ERROR, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @elog(i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %107, %100
  %114 = load i32, i32* %14, align 4
  %115 = call i8* @TextDatumGetCString(i32 %114)
  store i8* %115, i8** %12, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @validateDomainConstraint(i32 %116, i8* %117)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %120 = call %struct.TYPE_14__* @heap_copytuple(%struct.TYPE_14__* %119)
  store %struct.TYPE_14__* %120, %struct.TYPE_14__** %17, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %122 = call i64 @GETSTRUCT(%struct.TYPE_14__* %121)
  %123 = inttoptr i64 %122 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %123, %struct.TYPE_15__** %11, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %130 = call i32 @CatalogTupleUpdate(i32 %126, i32* %128, %struct.TYPE_14__* %129)
  %131 = load i32, i32* @ConstraintRelationId, align 4
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @InvokeObjectPostAlterHook(i32 %131, i32 %134, i32 0)
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* @TypeRelationId, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @ObjectAddressSet(i32 %136, i32 %137, i32 %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %141 = call i32 @heap_freetuple(%struct.TYPE_14__* %140)
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @systable_endscan(i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @AccessShareLock, align 4
  %146 = call i32 @table_close(i32 %144, i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @RowExclusiveLock, align 4
  %149 = call i32 @table_close(i32 %147, i32 %148)
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %151 = call i32 @ReleaseSysCache(%struct.TYPE_14__* %150)
  %152 = load i32, i32* %19, align 4
  ret i32 %152
}

declare dso_local i32* @makeTypeNameFromNameList(i32*) #1

declare dso_local i32 @typenameTypeId(i32*, i32*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_14__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_14__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @checkDomainOwner(%struct.TYPE_14__*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @systable_getnext(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @TypeNameToString(i32*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_14__*) #1

declare dso_local i32 @SysCacheGetAttr(i32, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @validateDomainConstraint(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @heap_copytuple(%struct.TYPE_14__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_14__*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
