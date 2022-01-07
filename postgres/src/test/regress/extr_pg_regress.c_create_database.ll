; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_create_database.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_create_database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [23 x i8] c"creating database \22%s\22\00", align 1
@encoding = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"CREATE DATABASE \22%s\22 TEMPLATE=template0 ENCODING='%s'%s\00", align 1
@nolocale = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c" LC_COLLATE='C' LC_CTYPE='C'\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"CREATE DATABASE \22%s\22 TEMPLATE=template0%s\00", align 1
@.str.6 = private unnamed_addr constant [274 x i8] c"ALTER DATABASE \22%s\22 SET lc_messages TO 'C';ALTER DATABASE \22%s\22 SET lc_monetary TO 'C';ALTER DATABASE \22%s\22 SET lc_numeric TO 'C';ALTER DATABASE \22%s\22 SET lc_time TO 'C';ALTER DATABASE \22%s\22 SET bytea_output TO 'hex';ALTER DATABASE \22%s\22 SET timezone_abbreviations TO 'Default';\00", align 1
@loadlanguage = common dso_local global %struct.TYPE_4__* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"installing %s\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"CREATE OR REPLACE LANGUAGE \22%s\22\00", align 1
@loadextension = common dso_local global %struct.TYPE_4__* null, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"CREATE EXTENSION IF NOT EXISTS \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @create_database to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_database(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @header(i32 %4, i8* %5)
  %7 = load i64, i64* @encoding, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i64, i64* @encoding, align 8
  %12 = load i64, i64* @nolocale, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %16 = call i32 (i8*, i8*, i8*, ...) @psql_command(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %10, i64 %11, i8* %15)
  br label %24

17:                                               ; preds = %1
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* @nolocale, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %23 = call i32 (i8*, i8*, i8*, ...) @psql_command(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %18, i8* %22)
  br label %24

24:                                               ; preds = %17, %9
  %25 = load i8*, i8** %2, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 (i8*, i8*, i8*, ...) @psql_command(i8* %25, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.6, i64 0, i64 0), i8* %26, i8* %27, i8* %28, i8* %29, i8* %30, i8* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @loadlanguage, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %3, align 8
  br label %34

34:                                               ; preds = %48, %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @header(i32 %38, i8* %41)
  %43 = load i8*, i8** %2, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i8*, i8*, ...) @psql_command(i8* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %37
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %3, align 8
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @loadextension, align 8
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %3, align 8
  br label %54

54:                                               ; preds = %68, %52
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @header(i32 %58, i8* %61)
  %63 = load i8*, i8** %2, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i8*, i8*, ...) @psql_command(i8* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %57
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %3, align 8
  br label %54

72:                                               ; preds = %54
  ret void
}

declare dso_local i32 @header(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @psql_command(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
