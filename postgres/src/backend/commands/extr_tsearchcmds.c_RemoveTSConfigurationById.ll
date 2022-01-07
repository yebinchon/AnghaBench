; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tsearchcmds.c_RemoveTSConfigurationById.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tsearchcmds.c_RemoveTSConfigurationById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@TSConfigRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@TSCONFIGOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cache lookup failed for text search dictionary %u\00", align 1
@TSConfigMapRelationId = common dso_local global i32 0, align 4
@Anum_pg_ts_config_map_mapcfg = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@TSConfigMapIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveTSConfigurationById(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @TSConfigRelationId, align 4
  %9 = load i32, i32* @RowExclusiveLock, align 4
  %10 = call i32 @table_open(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @TSCONFIGOID, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call %struct.TYPE_6__* @SearchSysCache1(i32 %11, i32 %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i64 @HeapTupleIsValid(%struct.TYPE_6__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @CatalogTupleDelete(i32 %23, i32* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = call i32 @ReleaseSysCache(%struct.TYPE_6__* %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @RowExclusiveLock, align 4
  %31 = call i32 @table_close(i32 %29, i32 %30)
  %32 = load i32, i32* @TSConfigMapRelationId, align 4
  %33 = load i32, i32* @RowExclusiveLock, align 4
  %34 = call i32 @table_open(i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @Anum_pg_ts_config_map_mapcfg, align 4
  %36 = load i32, i32* @BTEqualStrategyNumber, align 4
  %37 = load i32, i32* @F_OIDEQ, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @ObjectIdGetDatum(i32 %38)
  %40 = call i32 @ScanKeyInit(i32* %6, i32 %35, i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @TSConfigMapIndexId, align 4
  %43 = call i32 @systable_beginscan(i32 %41, i32 %42, i32 1, i32* null, i32 1, i32* %6)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %49, %22
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.TYPE_6__* @systable_getnext(i32 %45)
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %5, align 8
  %47 = call i64 @HeapTupleIsValid(%struct.TYPE_6__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @CatalogTupleDelete(i32 %50, i32* %52)
  br label %44

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @systable_endscan(i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @RowExclusiveLock, align 4
  %59 = call i32 @table_close(i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_6__* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_6__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_6__*) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @systable_getnext(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
