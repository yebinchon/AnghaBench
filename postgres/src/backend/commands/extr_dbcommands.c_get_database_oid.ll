; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_get_database_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_get_database_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DatabaseRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_database_datname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@DatabaseNameIndexId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_DATABASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"database \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_database_oid(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @DatabaseRelationId, align 4
  %11 = load i32, i32* @AccessShareLock, align 4
  %12 = call i32 @table_open(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %14 = load i32, i32* @Anum_pg_database_datname, align 4
  %15 = load i32, i32* @BTEqualStrategyNumber, align 4
  %16 = load i32, i32* @F_NAMEEQ, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @CStringGetDatum(i8* %17)
  %19 = call i32 @ScanKeyInit(i32* %13, i32 %14, i32 %15, i32 %16, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DatabaseNameIndexId, align 4
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %23 = call i32 @systable_beginscan(i32 %20, i32 %21, i32 1, i32* null, i32 1, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @systable_getnext(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @HeapTupleIsValid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @GETSTRUCT(i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @InvalidOid, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @systable_endscan(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @AccessShareLock, align 4
  %42 = call i32 @table_close(i32 %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @OidIsValid(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @ERROR, align 4
  %51 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = call i32 @ereport(i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %49, %46, %37
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
