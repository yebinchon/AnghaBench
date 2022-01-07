; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_set_mode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"smart\00", align 1
@SMART_MODE = common dso_local global i32 0, align 4
@shutdown_mode = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sig = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@FAST_MODE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"immediate\00", align 1
@IMMEDIATE_MODE = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"%s: unrecognized shutdown mode \22%s\22\0A\00", align 1
@progname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strcmp(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @SMART_MODE, align 4
  store i32 %11, i32* @shutdown_mode, align 4
  %12 = load i32, i32* @SIGTERM, align 4
  store i32 %12, i32* @sig, align 4
  br label %44

13:                                               ; preds = %6
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @FAST_MODE, align 4
  store i32 %22, i32* @shutdown_mode, align 4
  %23 = load i32, i32* @SIGINT, align 4
  store i32 %23, i32* @sig, align 4
  br label %43

24:                                               ; preds = %17
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @IMMEDIATE_MODE, align 4
  store i32 %33, i32* @shutdown_mode, align 4
  %34 = load i32, i32* @SIGQUIT, align 4
  store i32 %34, i32* @sig, align 4
  br label %42

35:                                               ; preds = %28
  %36 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %37 = load i32, i32* @progname, align 4
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @write_stderr(i32 %36, i32 %37, i8* %38)
  %40 = call i32 (...) @do_advice()
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %21
  br label %44

44:                                               ; preds = %43, %10
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @write_stderr(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @do_advice(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
