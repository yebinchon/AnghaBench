; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pdo_pgsql_last_insert_id.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pdo_pgsql_last_insert_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"SELECT LASTVAL()\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SELECT CURRVAL($1)\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i8*, i64*)* @pdo_pgsql_last_insert_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pdo_pgsql_last_insert_id(%struct.TYPE_6__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x i8*], align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %7, align 8
  store i8* null, i8** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @PQexec(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %9, align 8
  br label %31

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds [1 x i8*], [1 x i8*]* %11, i64 0, i64 0
  store i8* %24, i8** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [1 x i8*], [1 x i8*]* %11, i64 0, i64 0
  %30 = call i32* @PQexecParams(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* null, i8** %29, i32* null, i32* null, i32 0)
  store i32* %30, i32** %9, align 8
  br label %31

31:                                               ; preds = %23, %18
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @PQresultStatus(i32* %32)
  store i64 %33, i64* %10, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32*, i32** %9, align 8
  %42 = call i64 @PQgetvalue(i32* %41, i32 0, i32 0)
  %43 = inttoptr i64 %42 to i8*
  %44 = call i8* @estrdup(i8* %43)
  store i8* %44, i8** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @PQgetlength(i32* %45, i32 0, i32 0)
  %47 = load i64*, i64** %6, align 8
  store i64 %46, i64* %47, align 8
  br label %54

48:                                               ; preds = %36, %31
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @pdo_pgsql_sqlstate(i32* %51)
  %53 = call i32 @pdo_pgsql_error(%struct.TYPE_6__* %49, i64 %50, i32 %52)
  br label %54

54:                                               ; preds = %48, %40
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @PQclear(i32* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i8*, i8** %8, align 8
  ret i8* %61
}

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i32* @PQexecParams(i32, i8*, i32, i32*, i8**, i32*, i32*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i64 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @PQgetlength(i32*, i32, i32) #1

declare dso_local i32 @pdo_pgsql_error(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @pdo_pgsql_sqlstate(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
