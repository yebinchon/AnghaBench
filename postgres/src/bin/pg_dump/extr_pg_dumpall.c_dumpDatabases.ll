; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpDatabases.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpDatabases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [96 x i8] c"SELECT datname FROM pg_database d WHERE datallowconn ORDER BY (datname <> 'template1'), datname\00", align 1
@OPF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"--\0A-- Databases\0A--\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"template0\00", align 1
@database_exclude_names = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"excluding database \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"dumping database \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"--\0A-- Database \22%s\22 dump\0A--\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"template1\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@output_clean = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"--clean --create\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"\\connect %s\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"--create\00", align 1
@filename = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"pg_dump failed on database \22%s\22, exiting\00", align 1
@PG_BINARY_A = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"could not re-open the output file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dumpDatabases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpDatabases(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @executeQuery(i32* %8, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @PQntuples(i32* %10)
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @OPF, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %91, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @PQntuples(i32* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i8* @PQgetvalue(i32* %23, i32 %24, i32 0)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %91

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @simple_string_list_member(i32* @database_exclude_names, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @pg_log_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  br label %91

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @pg_log_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @OPF, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46, %37
  %51 = load i64, i64* @output_clean, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %58

54:                                               ; preds = %50
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  %55 = load i32, i32* @OPF, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %53
  br label %60

59:                                               ; preds = %46
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i8*, i8** @filename, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @OPF, align 4
  %65 = call i32 @fclose(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @runPgDump(i8* %67, i8* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @pg_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8* %73)
  %75 = call i32 @exit_nicely(i32 1)
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i8*, i8** @filename, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i8*, i8** @filename, align 8
  %81 = load i32, i32* @PG_BINARY_A, align 4
  %82 = call i32 @fopen(i8* %80, i32 %81)
  store i32 %82, i32* @OPF, align 4
  %83 = load i32, i32* @OPF, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = load i8*, i8** @filename, align 8
  %87 = call i32 @pg_log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* %86)
  %88 = call i32 @exit_nicely(i32 1)
  br label %89

89:                                               ; preds = %85, %79
  br label %90

90:                                               ; preds = %89, %76
  br label %91

91:                                               ; preds = %90, %34, %29
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %17

94:                                               ; preds = %17
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @PQclear(i32* %95)
  ret void
}

declare dso_local i32* @executeQuery(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @simple_string_list_member(i32*, i8*) #1

declare dso_local i32 @pg_log_info(i8*, i8*) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @runPgDump(i8*, i8*) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

declare dso_local i32 @exit_nicely(i32) #1

declare dso_local i32 @fopen(i8*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
