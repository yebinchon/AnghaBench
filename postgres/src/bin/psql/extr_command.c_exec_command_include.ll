; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_include.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OT_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"\\%s: missing required argument\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"include_relative\00", align 1
@EXIT_SUCCESS = common dso_local global i64 0, align 8
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @exec_command_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_include(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @OT_NORMAL, align 4
  %15 = call i8* @psql_scan_slash_option(i32 %13, i32 %14, i32* null, i32 1)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @pg_log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 0, i32* %7, align 4
  br label %41

21:                                               ; preds = %12
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = call i32 @expand_tilde(i8** %8)
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @process_file(i8* %33, i32 %34)
  %36 = load i64, i64* @EXIT_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %29, %18
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ignore_slash_options(i32 %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @PSQL_CMD_ERROR, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  ret i32 %53
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @expand_tilde(i8**) #1

declare dso_local i64 @process_file(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
