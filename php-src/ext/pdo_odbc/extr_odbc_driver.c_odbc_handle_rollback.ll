; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_driver.c_odbc_handle_rollback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_driver.c_odbc_handle_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@SQL_HANDLE_DBC = common dso_local global i32 0, align 4
@SQL_ROLLBACK = common dso_local global i32 0, align 4
@SQL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"SQLEndTran: Rollback\00", align 1
@SQL_SUCCESS_WITH_INFO = common dso_local global i64 0, align 8
@SQL_ATTR_AUTOCOMMIT = common dso_local global i32 0, align 4
@SQL_AUTOCOMMIT_ON = common dso_local global i64 0, align 8
@SQL_IS_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"SQLSetConnectAttr AUTOCOMMIT = ON\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @odbc_handle_rollback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odbc_handle_rollback(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  %10 = load i32, i32* @SQL_HANDLE_DBC, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @SQL_ROLLBACK, align 4
  %15 = call i64 @SQLEndTran(i32 %10, i64 %13, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @SQL_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = call i32 @pdo_odbc_drv_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %52

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @SQL_ATTR_AUTOCOMMIT, align 4
  %41 = load i64, i64* @SQL_AUTOCOMMIT_ON, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @SQL_IS_INTEGER, align 4
  %44 = call i64 @SQLSetConnectAttr(i64 %39, i32 %40, i32 %42, i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @SQL_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = call i32 @pdo_odbc_drv_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %31, %26
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48, %24
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @SQLEndTran(i32, i64, i32) #1

declare dso_local i32 @pdo_odbc_drv_error(i8*) #1

declare dso_local i64 @SQLSetConnectAttr(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
