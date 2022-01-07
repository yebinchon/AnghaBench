; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_policy.c_rename_policy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_policy.c_rename_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@AccessExclusiveLock = common dso_local global i32 0, align 4
@RangeVarCallbackForPolicy = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@PolicyRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_policy_polrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_policy_polname = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@PolicyPolrelidPolnameIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"policy \22%s\22 for table \22%s\22 already exists\00", align 1
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"policy \22%s\22 for table \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rename_policy(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AccessExclusiveLock, align 4
  %15 = load i32, i32* @RangeVarCallbackForPolicy, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = bitcast %struct.TYPE_11__* %16 to i8*
  %18 = call i32 @RangeVarGetRelidExtended(i32 %13, i32 %14, i32 0, i32 %15, i8* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NoLock, align 4
  %21 = call i32 @relation_open(i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @PolicyRelationId, align 4
  %23 = load i32, i32* @RowExclusiveLock, align 4
  %24 = call i32 @table_open(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %26 = load i32, i32* @Anum_pg_policy_polrelid, align 4
  %27 = load i32, i32* @BTEqualStrategyNumber, align 4
  %28 = load i32, i32* @F_OIDEQ, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ObjectIdGetDatum(i32 %29)
  %31 = call i32 @ScanKeyInit(i32* %25, i32 %26, i32 %27, i32 %28, i32 %30)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %33 = load i32, i32* @Anum_pg_policy_polname, align 4
  %34 = load i32, i32* @BTEqualStrategyNumber, align 4
  %35 = load i32, i32* @F_NAMEEQ, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CStringGetDatum(i32 %38)
  %40 = call i32 @ScanKeyInit(i32* %32, i32 %33, i32 %34, i32 %35, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @PolicyPolrelidPolnameIndexId, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %44 = call i32 @systable_beginscan(i32 %41, i32 %42, i32 1, i32* null, i32 2, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.TYPE_12__* @systable_getnext(i32 %45)
  %47 = call i64 @HeapTupleIsValid(%struct.TYPE_12__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %1
  %50 = load i32, i32* @ERROR, align 4
  %51 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @RelationGetRelationName(i32 %56)
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %57)
  %59 = call i32 @ereport(i32 %50, i32 %58)
  br label %60

60:                                               ; preds = %49, %1
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @systable_endscan(i32 %61)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %64 = load i32, i32* @Anum_pg_policy_polrelid, align 4
  %65 = load i32, i32* @BTEqualStrategyNumber, align 4
  %66 = load i32, i32* @F_OIDEQ, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ObjectIdGetDatum(i32 %67)
  %69 = call i32 @ScanKeyInit(i32* %63, i32 %64, i32 %65, i32 %66, i32 %68)
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %71 = load i32, i32* @Anum_pg_policy_polname, align 4
  %72 = load i32, i32* @BTEqualStrategyNumber, align 4
  %73 = load i32, i32* @F_NAMEEQ, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CStringGetDatum(i32 %76)
  %78 = call i32 @ScanKeyInit(i32* %70, i32 %71, i32 %72, i32 %73, i32 %77)
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @PolicyPolrelidPolnameIndexId, align 4
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %82 = call i32 @systable_beginscan(i32 %79, i32 %80, i32 1, i32* null, i32 2, i32* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call %struct.TYPE_12__* @systable_getnext(i32 %83)
  store %struct.TYPE_12__* %84, %struct.TYPE_12__** %9, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %86 = call i64 @HeapTupleIsValid(%struct.TYPE_12__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %60
  %89 = load i32, i32* @ERROR, align 4
  %90 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %91 = call i32 @errcode(i32 %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @RelationGetRelationName(i32 %95)
  %97 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %96)
  %98 = call i32 @ereport(i32 %89, i32 %97)
  br label %99

99:                                               ; preds = %88, %60
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = call i64 @GETSTRUCT(%struct.TYPE_12__* %100)
  %102 = inttoptr i64 %101 to %struct.TYPE_13__*
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %6, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = call %struct.TYPE_12__* @heap_copytuple(%struct.TYPE_12__* %105)
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %9, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %108 = call i64 @GETSTRUCT(%struct.TYPE_12__* %107)
  %109 = inttoptr i64 %108 to %struct.TYPE_13__*
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @namestrcpy(i32* %110, i32 %113)
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %119 = call i32 @CatalogTupleUpdate(i32 %115, i32* %117, %struct.TYPE_12__* %118)
  %120 = load i32, i32* @PolicyRelationId, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @InvokeObjectPostAlterHook(i32 %120, i32 %121, i32 0)
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @PolicyRelationId, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @ObjectAddressSet(i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @CacheInvalidateRelcache(i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @systable_endscan(i32 %129)
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @RowExclusiveLock, align 4
  %133 = call i32 @table_close(i32 %131, i32 %132)
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @NoLock, align 4
  %136 = call i32 @relation_close(i32 %134, i32 %135)
  %137 = load i32, i32* %10, align 4
  ret i32 %137
}

declare dso_local i32 @RangeVarGetRelidExtended(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @CStringGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @systable_getnext(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @heap_copytuple(%struct.TYPE_12__*) #1

declare dso_local i32 @namestrcpy(i32*, i32) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @CacheInvalidateRelcache(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
