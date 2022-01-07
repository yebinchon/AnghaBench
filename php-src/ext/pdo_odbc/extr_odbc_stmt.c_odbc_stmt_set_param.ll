; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_stmt.c_odbc_stmt_set_param.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_stmt.c_odbc_stmt_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32 }

@SQL_SUCCESS = common dso_local global i32 0, align 4
@SQL_SUCCESS_WITH_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SQLSetCursorName\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown Attribute\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"setAttribute\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"IM001\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*)* @odbc_stmt_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odbc_stmt_set_param(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %41 [
    i32 129, label %15
    i32 128, label %36
  ]

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @convert_to_string(i32* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @Z_STRVAL_P(i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @Z_STRLEN_P(i32* %23)
  %25 = call i32 @SQLSetCursorName(i32 %20, i32 %22, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @SQL_SUCCESS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SQL_SUCCESS_WITH_INFO, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %15
  store i32 1, i32* %4, align 4
  br label %55

34:                                               ; preds = %29
  %35 = call i32 @pdo_odbc_stmt_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %55

36:                                               ; preds = %3
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @zval_is_true(i32* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %4, align 4
  br label %55

41:                                               ; preds = %3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcpy(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strcpy(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %55

55:                                               ; preds = %41, %36, %34, %33
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @convert_to_string(i32*) #1

declare dso_local i32 @SQLSetCursorName(i32, i32, i32) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @pdo_odbc_stmt_error(i8*) #1

declare dso_local i32 @zval_is_true(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
