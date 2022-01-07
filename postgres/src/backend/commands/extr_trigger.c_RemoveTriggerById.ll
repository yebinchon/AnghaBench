; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_RemoveTriggerById.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_RemoveTriggerById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@TriggerRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_trigger_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@TriggerOidIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not find tuple for trigger %u\00", align 1
@AccessExclusiveLock = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_VIEW = common dso_local global i64 0, align 8
@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\22%s\22 is not a table, view, or foreign table\00", align 1
@allowSystemTableMods = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"permission denied: \22%s\22 is a system catalog\00", align 1
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveTriggerById(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @TriggerRelationId, align 4
  %10 = load i32, i32* @RowExclusiveLock, align 4
  %11 = call %struct.TYPE_16__* @table_open(i32 %9, i32 %10)
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %3, align 8
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %13 = load i32, i32* @Anum_pg_trigger_oid, align 4
  %14 = load i32, i32* @BTEqualStrategyNumber, align 4
  %15 = load i32, i32* @F_OIDEQ, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = call i32 @ScanKeyInit(i32* %12, i32 %13, i32 %14, i32 %15, i32 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = load i32, i32* @TriggerOidIndexId, align 4
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %22 = call i32 @systable_beginscan(%struct.TYPE_16__* %19, i32 %20, i32 1, i32* null, i32 1, i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.TYPE_17__* @systable_getnext(i32 %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %6, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = call i32 @HeapTupleIsValid(%struct.TYPE_17__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @elog(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = call i64 @GETSTRUCT(%struct.TYPE_17__* %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_18__*
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AccessExclusiveLock, align 4
  %40 = call %struct.TYPE_16__* @table_open(i32 %38, i32 %39)
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %8, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RELKIND_RELATION, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %32
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RELKIND_VIEW, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %48
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %56
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %77 = call i32 @RelationGetRelationName(%struct.TYPE_16__* %76)
  %78 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = call i32 @ereport(i32 %73, i32 %78)
  br label %80

80:                                               ; preds = %72, %64, %56, %48, %32
  %81 = load i32, i32* @allowSystemTableMods, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = call i64 @IsSystemRelation(%struct.TYPE_16__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %90 = call i32 @errcode(i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = call i32 @RelationGetRelationName(%struct.TYPE_16__* %91)
  %93 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = call i32 @ereport(i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %87, %83, %80
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = call i32 @CatalogTupleDelete(%struct.TYPE_16__* %96, i32* %98)
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @systable_endscan(i32 %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = load i32, i32* @RowExclusiveLock, align 4
  %104 = call i32 @table_close(%struct.TYPE_16__* %102, i32 %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %106 = call i32 @CacheInvalidateRelcache(%struct.TYPE_16__* %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %108 = load i32, i32* @NoLock, align 4
  %109 = call i32 @table_close(%struct.TYPE_16__* %107, i32 %108)
  ret void
}

declare dso_local %struct.TYPE_16__* @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_16__*, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_17__* @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_17__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_17__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_16__*) #1

declare dso_local i64 @IsSystemRelation(%struct.TYPE_16__*) #1

declare dso_local i32 @CatalogTupleDelete(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @CacheInvalidateRelcache(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
