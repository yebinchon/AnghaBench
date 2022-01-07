; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pgsql_handle_doer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pgsql_handle_doer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@PGRES_FATAL_ERROR = common dso_local global i64 0, align 8
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64)* @pgsql_handle_doer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_handle_doer(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %8, align 8
  store i32 1, i32* %10, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @PQexec(i32 %18, i8* %19)
  store i32* %20, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = load i64, i64* @PGRES_FATAL_ERROR, align 8
  %25 = call i32 @pdo_pgsql_error(%struct.TYPE_6__* %23, i64 %24, i32* null)
  store i32 -1, i32* %4, align 4
  br label %63

26:                                               ; preds = %3
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @PQresultStatus(i32* %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @pdo_pgsql_sqlstate(i32* %39)
  %41 = call i32 @pdo_pgsql_error(%struct.TYPE_6__* %37, i64 %38, i32* %40)
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @PQclear(i32* %42)
  store i32 -1, i32* %4, align 4
  br label %63

44:                                               ; preds = %32, %26
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @PQoidValue(i32* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @PQcmdTuples(i32* %54)
  %56 = call i32 @ZEND_ATOL(i32 %53, i32 %55)
  br label %59

57:                                               ; preds = %44
  %58 = call i32 @Z_L(i32 0)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @PQclear(i32* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %36, %22
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i32 @pdo_pgsql_error(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32* @pdo_pgsql_sqlstate(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQoidValue(i32*) #1

declare dso_local i32 @ZEND_ATOL(i32, i32) #1

declare dso_local i32 @PQcmdTuples(i32*) #1

declare dso_local i32 @Z_L(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
