; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_get_domain_constraint_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_get_domain_constraint_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_constraint_contypid = common dso_local global i32 0, align 4
@Anum_pg_constraint_conname = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"constraint \22%s\22 for domain %s does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_domain_constraint_oid(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @InvalidOid, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @ConstraintRelationId, align 4
  %14 = load i32, i32* @AccessShareLock, align 4
  %15 = call i32 @table_open(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %17 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %18 = load i32, i32* @BTEqualStrategyNumber, align 4
  %19 = load i32, i32* @F_OIDEQ, align 4
  %20 = load i32, i32* @InvalidOid, align 4
  %21 = call i32 @ObjectIdGetDatum(i32 %20)
  %22 = call i32 @ScanKeyInit(i32* %16, i32 %17, i32 %18, i32 %19, i32 %21)
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %24 = load i32, i32* @Anum_pg_constraint_contypid, align 4
  %25 = load i32, i32* @BTEqualStrategyNumber, align 4
  %26 = load i32, i32* @F_OIDEQ, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ObjectIdGetDatum(i32 %27)
  %29 = call i32 @ScanKeyInit(i32* %23, i32 %24, i32 %25, i32 %26, i32 %28)
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %31 = load i32, i32* @Anum_pg_constraint_conname, align 4
  %32 = load i32, i32* @BTEqualStrategyNumber, align 4
  %33 = load i32, i32* @F_NAMEEQ, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @CStringGetDatum(i8* %34)
  %36 = call i32 @ScanKeyInit(i32* %30, i32 %31, i32 %32, i32 %33, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %40 = call i32 @systable_beginscan(i32 %37, i32 %38, i32 1, i32* null, i32 3, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @systable_getnext(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = call i64 @HeapTupleIsValid(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %3
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @GETSTRUCT(i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %45, %3
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @systable_endscan(i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @OidIsValid(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @format_type_be(i32 %65)
  %67 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %64, i32 %66)
  %68 = call i32 @ereport(i32 %61, i32 %67)
  br label %69

69:                                               ; preds = %60, %57, %51
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @AccessShareLock, align 4
  %72 = call i32 @table_close(i32 %70, i32 %71)
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
