; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_driver.c_odbc_handle_commit.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_driver.c_odbc_handle_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@SQL_HANDLE_DBC = common dso_local global i32 0, align 4
@SQL_COMMIT = common dso_local global i32 0, align 4
@SQL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"SQLEndTran: Commit\00", align 1
@SQL_SUCCESS_WITH_INFO = common dso_local global i64 0, align 8
@SQL_ATTR_AUTOCOMMIT = common dso_local global i32 0, align 4
@SQL_AUTOCOMMIT_ON = common dso_local global i64 0, align 8
@SQL_IS_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"SQLSetConnectAttr AUTOCOMMIT = ON\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @odbc_handle_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odbc_handle_commit(%struct.TYPE_5__* %0) #0 {
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
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SQL_COMMIT, align 4
  %15 = call i64 @SQLEndTran(i32 %10, i32 %13, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @SQL_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = call i32 @pdo_odbc_drv_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %47

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SQL_ATTR_AUTOCOMMIT, align 4
  %36 = load i64, i64* @SQL_AUTOCOMMIT_ON, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @SQL_IS_INTEGER, align 4
  %39 = call i64 @SQLSetConnectAttr(i32 %34, i32 %35, i32 %37, i32 %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @SQL_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = call i32 @pdo_odbc_drv_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %47

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %26
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %43, %24
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @SQLEndTran(i32, i32, i32) #1

declare dso_local i32 @pdo_odbc_drv_error(i8*) #1

declare dso_local i64 @SQLSetConnectAttr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
