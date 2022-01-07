; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_check_db_file_conflict.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_check_db_file_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.stat = type { i32 }

@TableSpaceRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @check_db_file_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_db_file_conflict(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %11 = load i32, i32* @TableSpaceRelationId, align 4
  %12 = load i32, i32* @AccessShareLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @table_beginscan_catalog(i32 %14, i32 0, i32* null)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %43, %32, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ForwardScanDirection, align 4
  %19 = call i32* @heap_getnext(i32 %17, i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @GETSTRUCT(i32* %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %7, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @GLOBALTABLESPACE_OID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %16

33:                                               ; preds = %21
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i8* @GetDatabasePath(i64 %34, i64 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @lstat(i8* %37, %struct.stat* %10)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @pfree(i8* %41)
  store i32 1, i32* %3, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @pfree(i8* %44)
  br label %16

46:                                               ; preds = %40, %16
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @table_endscan(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @AccessShareLock, align 4
  %51 = call i32 @table_close(i32 %49, i32 %50)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i8* @GetDatabasePath(i64, i64) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
