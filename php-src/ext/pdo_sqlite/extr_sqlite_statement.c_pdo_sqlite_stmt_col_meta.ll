; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_statement.c_pdo_sqlite_stmt_col_meta.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_statement.c_pdo_sqlite_stmt_col_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"native_type\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"sqlite:decl_type\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32*)* @pdo_sqlite_stmt_col_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_sqlite_stmt_col_meta(%struct.TYPE_5__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @FAILURE, align 4
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @sqlite3_data_count(i32 %25)
  %27 = icmp sge i64 %22, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = call i32 @pdo_sqlite_error_stmt(%struct.TYPE_5__* %29)
  %31 = load i32, i32* @FAILURE, align 4
  store i32 %31, i32* %4, align 4
  br label %71

32:                                               ; preds = %21
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @array_init(i32* %33)
  %35 = call i32 @array_init(i32* %10)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @sqlite3_column_type(i32 %38, i64 %39)
  switch i32 %40, label %55 [
    i32 129, label %41
    i32 131, label %44
    i32 132, label %47
    i32 128, label %49
    i32 130, label %52
  ]

41:                                               ; preds = %32
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @add_assoc_string(i32* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %55

44:                                               ; preds = %32
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @add_assoc_string(i32* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %55

47:                                               ; preds = %32
  %48 = call i32 @add_next_index_string(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %32, %47
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @add_assoc_string(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %55

52:                                               ; preds = %32
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @add_assoc_string(i32* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %32, %52, %49, %44, %41
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i8* @sqlite3_column_decltype(i32 %58, i64 %59)
  store i8* %60, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @add_assoc_string(i32* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %63, %55
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @add_assoc_zval(i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %10)
  %70 = load i32, i32* @SUCCESS, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %28, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @sqlite3_data_count(i32) #1

declare dso_local i32 @pdo_sqlite_error_stmt(%struct.TYPE_5__*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @sqlite3_column_type(i32, i64) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i8*) #1

declare dso_local i32 @add_next_index_string(i32*, i8*) #1

declare dso_local i8* @sqlite3_column_decltype(i32, i64) #1

declare dso_local i32 @add_assoc_zval(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
