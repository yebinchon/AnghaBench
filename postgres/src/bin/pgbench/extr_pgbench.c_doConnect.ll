; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_doConnect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_doConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@doConnect.have_password = internal global i32 0, align 4
@doConnect.password = internal global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@pghost = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@pgport = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@login = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@dbName = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"fallback_application_name\00", align 1
@progname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"connection to database \22%s\22 failed\0A\00", align 1
@CONNECTION_BAD = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"connection to database \22%s\22 failed:\0A%s\00", align 1
@PARAMS_ARRAY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @doConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @doConnect() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [7 x i8*], align 16
  %5 = alloca [7 x i8*], align 16
  br label %6

6:                                                ; preds = %56, %0
  %7 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, align 16
  %8 = load i8*, i8** @pghost, align 8
  %9 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  store i8* %8, i8** %9, align 16
  %10 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %11 = load i8*, i8** @pgport, align 8
  %12 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 1
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 16
  %14 = load i8*, i8** @login, align 8
  %15 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 2
  store i8* %14, i8** %15, align 16
  %16 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* @doConnect.have_password, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @doConnect.password, i64 0, i64 0), i8* null
  %21 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 3
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %22, align 16
  %23 = load i8*, i8** @dbName, align 8
  %24 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 4
  store i8* %23, i8** %24, align 16
  %25 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 5
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %25, align 8
  %26 = load i8*, i8** @progname, align 8
  %27 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 5
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 6
  store i8* null, i8** %28, align 16
  %29 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 6
  store i8* null, i8** %29, align 16
  store i32 0, i32* %3, align 4
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 0
  %31 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  %32 = call i32* @PQconnectdbParams(i8** %30, i8** %31, i32 1)
  store i32* %32, i32** %2, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** @dbName, align 8
  %38 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %37)
  store i32* null, i32** %1, align 8
  br label %74

39:                                               ; preds = %6
  %40 = load i32*, i32** %2, align 8
  %41 = call i64 @PQstatus(i32* %40)
  %42 = load i64, i64* @CONNECTION_BAD, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i32*, i32** %2, align 8
  %46 = call i64 @PQconnectionNeedsPassword(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* @doConnect.have_password, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @PQfinish(i32* %52)
  %54 = call i32 @simple_prompt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @doConnect.password, i64 0, i64 0), i32 100, i32 0)
  store i32 1, i32* @doConnect.have_password, align 4
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %48, %44, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %6, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %2, align 8
  %61 = call i64 @PQstatus(i32* %60)
  %62 = load i64, i64* @CONNECTION_BAD, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8*, i8** @dbName, align 8
  %67 = load i32*, i32** %2, align 8
  %68 = call i8* @PQerrorMessage(i32* %67)
  %69 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %66, i8* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @PQfinish(i32* %70)
  store i32* null, i32** %1, align 8
  br label %74

72:                                               ; preds = %59
  %73 = load i32*, i32** %2, align 8
  store i32* %73, i32** %1, align 8
  br label %74

74:                                               ; preds = %72, %64, %35
  %75 = load i32*, i32** %1, align 8
  ret i32* %75
}

declare dso_local i32* @PQconnectdbParams(i8**, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i64 @PQstatus(i32*) #1

declare dso_local i64 @PQconnectionNeedsPassword(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @simple_prompt(i8*, i8*, i32, i32) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
