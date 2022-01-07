; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AssignTypeArrayOid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AssignTypeArrayOid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IsBinaryUpgrade = common dso_local global i64 0, align 8
@binary_upgrade_next_array_pg_type_oid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"pg_type array OID value not set when in binary upgrade mode\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@TypeOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_type_oid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AssignTypeArrayOid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @IsBinaryUpgrade, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  %6 = load i32, i32* @binary_upgrade_next_array_pg_type_oid, align 4
  %7 = call i32 @OidIsValid(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* @ERROR, align 4
  %11 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %12 = call i32 @errcode(i32 %11)
  %13 = call i32 @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @ereport(i32 %10, i32 %13)
  br label %15

15:                                               ; preds = %9, %5
  %16 = load i32, i32* @binary_upgrade_next_array_pg_type_oid, align 4
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @InvalidOid, align 4
  store i32 %17, i32* @binary_upgrade_next_array_pg_type_oid, align 4
  br label %29

18:                                               ; preds = %0
  %19 = load i32, i32* @TypeRelationId, align 4
  %20 = load i32, i32* @AccessShareLock, align 4
  %21 = call i32 @table_open(i32 %19, i32 %20)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @TypeOidIndexId, align 4
  %24 = load i32, i32* @Anum_pg_type_oid, align 4
  %25 = call i32 @GetNewOidWithIndex(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @AccessShareLock, align 4
  %28 = call i32 @table_close(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @GetNewOidWithIndex(i32, i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
