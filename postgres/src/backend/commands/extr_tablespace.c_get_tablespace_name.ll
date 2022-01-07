; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_get_tablespace_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_get_tablespace_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TableSpaceRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_tablespace_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_tablespace_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @TableSpaceRelationId, align 4
  %9 = load i32, i32* @AccessShareLock, align 4
  %10 = call i32 @table_open(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %12 = load i32, i32* @Anum_pg_tablespace_oid, align 4
  %13 = load i32, i32* @BTEqualStrategyNumber, align 4
  %14 = load i32, i32* @F_OIDEQ, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ObjectIdGetDatum(i32 %15)
  %17 = call i32 @ScanKeyInit(i32* %11, i32 %12, i32 %13, i32 %14, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %20 = call i32 @table_beginscan_catalog(i32 %18, i32 1, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ForwardScanDirection, align 4
  %23 = call i32 @heap_getnext(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @HeapTupleIsValid(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @GETSTRUCT(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @NameStr(i32 %32)
  %34 = call i8* @pstrdup(i32 %33)
  store i8* %34, i8** %3, align 8
  br label %36

35:                                               ; preds = %1
  store i8* null, i8** %3, align 8
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @table_endscan(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @AccessShareLock, align 4
  %41 = call i32 @table_close(i32 %39, i32 %40)
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i32 @heap_getnext(i32, i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
