; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_cd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@OT_NORMAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"could not get home directory for user ID %ld: %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"user does not exist\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"\\%s: could not change directory to \22%s\22: %m\00", align 1
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @exec_command_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_cd(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.passwd*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %61

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @OT_NORMAL, align 4
  %17 = call i8* @psql_scan_slash_option(i32 %15, i32 %16, i32* null, i32 1)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %9, align 8
  br label %46

22:                                               ; preds = %14
  %23 = call i64 (...) @geteuid()
  store i64 %23, i64* %11, align 8
  store i64 0, i64* @errno, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call %struct.passwd* @getpwuid(i64 %24)
  store %struct.passwd* %25, %struct.passwd** %10, align 8
  %26 = load %struct.passwd*, %struct.passwd** %10, align 8
  %27 = icmp ne %struct.passwd* %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @errno, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* @errno, align 8
  %34 = call i32 @strerror(i64 %33)
  br label %37

35:                                               ; preds = %28
  %36 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  %39 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %38)
  %40 = load i32, i32* @EXIT_FAILURE, align 4
  %41 = call i32 @exit(i32 %40) #3
  unreachable

42:                                               ; preds = %22
  %43 = load %struct.passwd*, %struct.passwd** %10, align 8
  %44 = getelementptr inbounds %struct.passwd, %struct.passwd* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %42, %20
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @chdir(i8* %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  br label %64

61:                                               ; preds = %3
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @ignore_slash_options(i32 %62)
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @PSQL_CMD_ERROR, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  ret i32 %72
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i32 @pg_log_error(i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
