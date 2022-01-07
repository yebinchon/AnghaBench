; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_proper_datallowconn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_proper_datallowconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Checking database connection settings\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"template1\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"SELECT\09datname, datallowconn FROM\09pg_catalog.pg_database\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"datname\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"datallowconn\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"template0\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.7 = private unnamed_addr constant [87 x i8] c"template0 must not allow connections, i.e. its pg_database.datallowconn must be false\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.9 = private unnamed_addr constant [102 x i8] c"All non-template0 databases must allow connections, i.e. their pg_database.datallowconn must be true\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @check_proper_datallowconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_proper_datallowconn(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %11 = call i32 @prep_status(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @connectToServer(i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @executeQueryOrDie(i32* %14, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @PQfnumber(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @PQfnumber(i32* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @PQntuples(i32* %20)
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %53, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i8* @PQgetvalue(i32* %27, i32 %28, i32 %29)
  store i8* %30, i8** %9, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @PQgetvalue(i32* %31, i32 %32, i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @pg_fatal(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.7, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  br label %52

45:                                               ; preds = %26
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @pg_fatal(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.9, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51, %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %22

56:                                               ; preds = %22
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @PQclear(i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @PQfinish(i32* %59)
  %61 = call i32 (...) @check_ok()
  ret void
}

declare dso_local i32 @prep_status(i8*) #1

declare dso_local i32* @connectToServer(i32*, i8*) #1

declare dso_local i32* @executeQueryOrDie(i32*, i8*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pg_fatal(i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @check_ok(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
