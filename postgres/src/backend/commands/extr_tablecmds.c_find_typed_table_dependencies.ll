; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_find_typed_table_dependencies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_find_typed_table_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@RelationRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_class_reloftype = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@DROP_RESTRICT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"cannot alter type \22%s\22 because it is the type of a typed table\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Use ALTER ... CASCADE to alter the typed tables too.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*, i64)* @find_typed_table_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_typed_table_dependencies(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32*, i32** @NIL, align 8
  store i32* %13, i32** %11, align 8
  %14 = load i32, i32* @RelationRelationId, align 4
  %15 = load i32, i32* @AccessShareLock, align 4
  %16 = call i32 @table_open(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %18 = load i32, i32* @Anum_pg_class_reloftype, align 4
  %19 = load i32, i32* @BTEqualStrategyNumber, align 4
  %20 = load i32, i32* @F_OIDEQ, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ObjectIdGetDatum(i32 %21)
  %23 = call i32 @ScanKeyInit(i32* %17, i32 %18, i32 %19, i32 %20, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %26 = call i32 @table_beginscan_catalog(i32 %24, i32 1, i32* %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %54, %3
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ForwardScanDirection, align 4
  %30 = call i32* @heap_getnext(i32 %28, i32 %29)
  store i32* %30, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @GETSTRUCT(i32* %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %12, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @DROP_RESTRICT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = call i32 @errhint(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %41, i32 %46)
  br label %54

48:                                               ; preds = %32
  %49 = load i32*, i32** %11, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @lappend_oid(i32* %49, i32 %52)
  store i32* %53, i32** %11, align 8
  br label %54

54:                                               ; preds = %48, %40
  br label %27

55:                                               ; preds = %27
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @table_endscan(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @AccessShareLock, align 4
  %60 = call i32 @table_close(i32 %58, i32 %59)
  %61 = load i32*, i32** %11, align 8
  ret i32* %61
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
