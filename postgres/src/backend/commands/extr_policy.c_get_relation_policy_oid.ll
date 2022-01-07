; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_policy.c_get_relation_policy_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_policy.c_get_relation_policy_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PolicyRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_policy_polrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_policy_polname = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@PolicyPolrelidPolnameIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"policy \22%s\22 for table \22%s\22 does not exist\00", align 1
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_relation_policy_oid(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @PolicyRelationId, align 4
  %13 = load i32, i32* @AccessShareLock, align 4
  %14 = call i32 @table_open(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %16 = load i32, i32* @Anum_pg_policy_polrelid, align 4
  %17 = load i32, i32* @BTEqualStrategyNumber, align 4
  %18 = load i32, i32* @F_OIDEQ, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ObjectIdGetDatum(i32 %19)
  %21 = call i32 @ScanKeyInit(i32* %15, i32 %16, i32 %17, i32 %18, i32 %20)
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %23 = load i32, i32* @Anum_pg_policy_polname, align 4
  %24 = load i32, i32* @BTEqualStrategyNumber, align 4
  %25 = load i32, i32* @F_NAMEEQ, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @CStringGetDatum(i8* %26)
  %28 = call i32 @ScanKeyInit(i32* %22, i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PolicyPolrelidPolnameIndexId, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %32 = call i32 @systable_beginscan(i32 %29, i32 %30, i32 1, i32* null, i32 2, i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @systable_getnext(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @HeapTupleIsValid(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @get_rel_name(i32 %46)
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %47)
  %49 = call i32 @ereport(i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %41, %38
  %51 = load i32, i32* @InvalidOid, align 4
  store i32 %51, i32* %11, align 4
  br label %58

52:                                               ; preds = %3
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @GETSTRUCT(i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %52, %50
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @systable_endscan(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @AccessShareLock, align 4
  %63 = call i32 @table_close(i32 %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
