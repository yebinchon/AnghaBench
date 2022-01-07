; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_db_role_setting.c_DropSetting.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_db_role_setting.c_DropSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DbRoleSettingRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_db_role_setting_setdatabase = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_db_role_setting_setrole = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DropSetting(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @DbRoleSettingRelationId, align 4
  %11 = load i32, i32* @RowExclusiveLock, align 4
  %12 = call i32 @table_open(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @OidIsValid(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %18
  %20 = load i32, i32* @Anum_pg_db_role_setting_setdatabase, align 4
  %21 = load i32, i32* @BTEqualStrategyNumber, align 4
  %22 = load i32, i32* @F_OIDEQ, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ObjectIdGetDatum(i32 %23)
  %25 = call i32 @ScanKeyInit(i32* %19, i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %16, %2
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @OidIsValid(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %34
  %36 = load i32, i32* @Anum_pg_db_role_setting_setrole, align 4
  %37 = load i32, i32* @BTEqualStrategyNumber, align 4
  %38 = load i32, i32* @F_OIDEQ, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ObjectIdGetDatum(i32 %39)
  %41 = call i32 @ScanKeyInit(i32* %35, i32 %36, i32 %37, i32 %38, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %32, %28
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %48 = call i32 @table_beginscan_catalog(i32 %45, i32 %46, i32* %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %55, %44
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ForwardScanDirection, align 4
  %52 = call %struct.TYPE_4__* @heap_getnext(i32 %50, i32 %51)
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %8, align 8
  %53 = call i64 @HeapTupleIsValid(%struct.TYPE_4__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @CatalogTupleDelete(i32 %56, i32* %58)
  br label %49

60:                                               ; preds = %49
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @table_endscan(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @RowExclusiveLock, align 4
  %65 = call i32 @table_close(i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @heap_getnext(i32, i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
