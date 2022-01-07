; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_renametrig.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_renametrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@AccessExclusiveLock = common dso_local global i32 0, align 4
@RangeVarCallbackForRenameTrigger = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@TriggerRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_trigger_tgrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_trigger_tgname = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@TriggerRelidNameIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"trigger \22%s\22 for relation \22%s\22 already exists\00", align 1
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"trigger \22%s\22 for table \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @renametrig(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AccessExclusiveLock, align 4
  %16 = load i32, i32* @RangeVarCallbackForRenameTrigger, align 4
  %17 = call i32 @RangeVarGetRelidExtended(i32 %14, i32 %15, i32 0, i32 %16, i32* null)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @NoLock, align 4
  %20 = call i32 @relation_open(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @TriggerRelationId, align 4
  %22 = load i32, i32* @RowExclusiveLock, align 4
  %23 = call i32 @table_open(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %25 = load i32, i32* @Anum_pg_trigger_tgrelid, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_OIDEQ, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @ObjectIdGetDatum(i32 %28)
  %30 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %29)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %32 = load i32, i32* @Anum_pg_trigger_tgname, align 4
  %33 = load i32, i32* @BTEqualStrategyNumber, align 4
  %34 = load i32, i32* @F_NAMEEQ, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PointerGetDatum(i32 %37)
  %39 = call i32 @ScanKeyInit(i32* %31, i32 %32, i32 %33, i32 %34, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @TriggerRelidNameIndexId, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %43 = call i32 @systable_beginscan(i32 %40, i32 %41, i32 1, i32* null, i32 2, i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call %struct.TYPE_12__* @systable_getnext(i32 %44)
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %6, align 8
  %46 = call i64 @HeapTupleIsValid(%struct.TYPE_12__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %1
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %51 = call i32 @errcode(i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @RelationGetRelationName(i32 %55)
  %57 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %56)
  %58 = call i32 @ereport(i32 %49, i32 %57)
  br label %59

59:                                               ; preds = %48, %1
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @systable_endscan(i32 %60)
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %63 = load i32, i32* @Anum_pg_trigger_tgrelid, align 4
  %64 = load i32, i32* @BTEqualStrategyNumber, align 4
  %65 = load i32, i32* @F_OIDEQ, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ObjectIdGetDatum(i32 %66)
  %68 = call i32 @ScanKeyInit(i32* %62, i32 %63, i32 %64, i32 %65, i32 %67)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %70 = load i32, i32* @Anum_pg_trigger_tgname, align 4
  %71 = load i32, i32* @BTEqualStrategyNumber, align 4
  %72 = load i32, i32* @F_NAMEEQ, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PointerGetDatum(i32 %75)
  %77 = call i32 @ScanKeyInit(i32* %69, i32 %70, i32 %71, i32 %72, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @TriggerRelidNameIndexId, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %81 = call i32 @systable_beginscan(i32 %78, i32 %79, i32 1, i32* null, i32 2, i32* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call %struct.TYPE_12__* @systable_getnext(i32 %82)
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %6, align 8
  %84 = call i64 @HeapTupleIsValid(%struct.TYPE_12__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %59
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = call %struct.TYPE_12__* @heap_copytuple(%struct.TYPE_12__* %87)
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %6, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = call i64 @GETSTRUCT(%struct.TYPE_12__* %89)
  %91 = inttoptr i64 %90 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %11, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %3, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @namestrcpy(i32* %96, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = call i32 @CatalogTupleUpdate(i32 %101, i32* %103, %struct.TYPE_12__* %104)
  %106 = load i32, i32* @TriggerRelationId, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @InvokeObjectPostAlterHook(i32 %106, i32 %107, i32 0)
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @CacheInvalidateRelcache(i32 %109)
  br label %122

111:                                              ; preds = %59
  %112 = load i32, i32* @ERROR, align 4
  %113 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %114 = call i32 @errcode(i32 %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @RelationGetRelationName(i32 %118)
  %120 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %119)
  %121 = call i32 @ereport(i32 %112, i32 %120)
  br label %122

122:                                              ; preds = %111, %86
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @TriggerRelationId, align 4
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @ObjectAddressSet(i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @systable_endscan(i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @RowExclusiveLock, align 4
  %131 = call i32 @table_close(i32 %129, i32 %130)
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @NoLock, align 4
  %134 = call i32 @relation_close(i32 %132, i32 %133)
  %135 = load i32, i32* %10, align 4
  ret i32 %135
}

declare dso_local i32 @RangeVarGetRelidExtended(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @systable_getnext(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local %struct.TYPE_12__* @heap_copytuple(%struct.TYPE_12__*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_12__*) #1

declare dso_local i32 @namestrcpy(i32*, i32) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @CacheInvalidateRelcache(i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
