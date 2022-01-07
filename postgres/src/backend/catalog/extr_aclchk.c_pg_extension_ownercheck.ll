; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_extension_ownercheck.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_extension_ownercheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ExtensionRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_extension_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ExtensionOidIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"extension with OID %u does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_extension_ownercheck(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @superuser_arg(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load i32, i32* @ExtensionRelationId, align 4
  %17 = load i32, i32* @AccessShareLock, align 4
  %18 = call i32 @table_open(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %20 = load i32, i32* @Anum_pg_extension_oid, align 4
  %21 = load i32, i32* @BTEqualStrategyNumber, align 4
  %22 = load i32, i32* @F_OIDEQ, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ObjectIdGetDatum(i32 %23)
  %25 = call i32 @ScanKeyInit(i32* %19, i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ExtensionOidIndexId, align 4
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %29 = call i32 @systable_beginscan(i32 %26, i32 %27, i32 1, i32* null, i32 1, i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @systable_getnext(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @HeapTupleIsValid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %15
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = call i32 @ereport(i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %35, %15
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @GETSTRUCT(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @systable_endscan(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @AccessShareLock, align 4
  %52 = call i32 @table_close(i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @has_privs_of_role(i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %42, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @superuser_arg(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @has_privs_of_role(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
