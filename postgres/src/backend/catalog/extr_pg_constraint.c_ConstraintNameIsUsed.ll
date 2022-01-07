; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_ConstraintNameIsUsed.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_ConstraintNameIsUsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@CONSTRAINT_RELATION = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i32 0, align 4
@Anum_pg_constraint_contypid = common dso_local global i32 0, align 4
@CONSTRAINT_DOMAIN = common dso_local global i64 0, align 8
@Anum_pg_constraint_conname = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConstraintNameIsUsed(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @ConstraintRelationId, align 4
  %12 = load i32, i32* @AccessShareLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %15 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %16 = load i32, i32* @BTEqualStrategyNumber, align 4
  %17 = load i32, i32* @F_OIDEQ, align 4
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @CONSTRAINT_RELATION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @InvalidOid, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = call i32 @ObjectIdGetDatum(i32 %26)
  %28 = call i32 @ScanKeyInit(i32* %14, i32 %15, i32 %16, i32 %17, i32 %27)
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %30 = load i32, i32* @Anum_pg_constraint_contypid, align 4
  %31 = load i32, i32* @BTEqualStrategyNumber, align 4
  %32 = load i32, i32* @F_OIDEQ, align 4
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @CONSTRAINT_DOMAIN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  br label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @InvalidOid, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i32 @ObjectIdGetDatum(i32 %41)
  %43 = call i32 @ScanKeyInit(i32* %29, i32 %30, i32 %31, i32 %32, i32 %42)
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %45 = load i32, i32* @Anum_pg_constraint_conname, align 4
  %46 = load i32, i32* @BTEqualStrategyNumber, align 4
  %47 = load i32, i32* @F_NAMEEQ, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @CStringGetDatum(i8* %48)
  %50 = call i32 @ScanKeyInit(i32* %44, i32 %45, i32 %46, i32 %47, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %54 = call i32 @systable_beginscan(i32 %51, i32 %52, i32 1, i32* null, i32 3, i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @systable_getnext(i32 %55)
  %57 = call i32 @HeapTupleIsValid(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @systable_endscan(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @AccessShareLock, align 4
  %62 = call i32 @table_close(i32 %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
