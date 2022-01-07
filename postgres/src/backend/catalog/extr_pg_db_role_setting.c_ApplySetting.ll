; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_db_role_setting.c_ApplySetting.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_db_role_setting.c_ApplySetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Anum_pg_db_role_setting_setdatabase = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_db_role_setting_setrole = common dso_local global i32 0, align 4
@DbRoleSettingDatidRolidIndexId = common dso_local global i32 0, align 4
@Anum_pg_db_role_setting_setconfig = common dso_local global i32 0, align 4
@PGC_SUSET = common dso_local global i32 0, align 4
@GUC_ACTION_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ApplySetting(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %18 = load i32, i32* @Anum_pg_db_role_setting_setdatabase, align 4
  %19 = load i32, i32* @BTEqualStrategyNumber, align 4
  %20 = load i32, i32* @F_OIDEQ, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ObjectIdGetDatum(i32 %21)
  %23 = call i32 @ScanKeyInit(i32* %17, i32 %18, i32 %19, i32 %20, i32 %22)
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %25 = load i32, i32* @Anum_pg_db_role_setting_setrole, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_OIDEQ, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ObjectIdGetDatum(i32 %28)
  %30 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @DbRoleSettingDatidRolidIndexId, align 4
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %35 = call i32 @systable_beginscan(i32 %31, i32 %32, i32 1, i32 %33, i32 2, i32* %34)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %57, %5
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @systable_getnext(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = call i64 @HeapTupleIsValid(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @Anum_pg_db_role_setting_setconfig, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @RelationGetDescr(i32 %44)
  %46 = call i32 @heap_getattr(i32 %42, i32 %43, i32 %45, i32* %14)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %15, align 4
  %51 = call i32* @DatumGetArrayTypeP(i32 %50)
  store i32* %51, i32** %16, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* @PGC_SUSET, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @GUC_ACTION_SET, align 4
  %56 = call i32 @ProcessGUCArray(i32* %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %49, %41
  br label %36

58:                                               ; preds = %36
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @systable_endscan(i32 %59)
  ret void
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @ProcessGUCArray(i32*, i32, i32, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
