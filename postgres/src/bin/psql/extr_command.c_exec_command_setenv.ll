; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_setenv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_setenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OT_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"\\%s: missing required argument\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\\%s: environment variable name must not contain \22=\22\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @exec_command_setenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_setenv(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @OT_NORMAL, align 4
  %16 = call i8* @psql_scan_slash_option(i32 %14, i32 %15, i32* null, i32 0)
  store i8* %16, i8** %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @OT_NORMAL, align 4
  %19 = call i8* @psql_scan_slash_option(i32 %17, i32 %18, i32* null, i32 0)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 0, i32* %7, align 4
  br label %46

25:                                               ; preds = %13
  %26 = load i8*, i8** %8, align 8
  %27 = call i32* @strchr(i8* %26, i8 signext 61)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @pg_log_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 0, i32* %7, align 4
  br label %45

32:                                               ; preds = %25
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @unsetenv(i8* %36)
  store i32 1, i32* %7, align 4
  br label %44

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i8* @psprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %40)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @putenv(i8* %42)
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %38, %35
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @free(i8* %49)
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @ignore_slash_options(i32 %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @PSQL_CMD_ERROR, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  ret i32 %62
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i8* @psprintf(i8*, i8*, i8*) #1

declare dso_local i32 @putenv(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
