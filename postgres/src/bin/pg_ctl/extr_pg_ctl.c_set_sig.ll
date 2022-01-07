; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_set_sig.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_set_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"HUP\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@sig = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@SIGQUIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ABRT\00", align 1
@SIGABRT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"USR1\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"USR2\00", align 1
@SIGUSR2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"%s: unrecognized signal name \22%s\22\0A\00", align 1
@progname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sig(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strcmp(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @SIGHUP, align 4
  store i32 %7, i32* @sig, align 4
  br label %64

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @SIGINT, align 4
  store i32 %13, i32* @sig, align 4
  br label %63

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @SIGQUIT, align 4
  store i32 %19, i32* @sig, align 4
  br label %62

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @SIGABRT, align 4
  store i32 %25, i32* @sig, align 4
  br label %61

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @SIGKILL, align 4
  store i32 %31, i32* @sig, align 4
  br label %60

32:                                               ; preds = %26
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @SIGTERM, align 4
  store i32 %37, i32* @sig, align 4
  br label %59

38:                                               ; preds = %32
  %39 = load i8*, i8** %2, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @SIGUSR1, align 4
  store i32 %43, i32* @sig, align 4
  br label %58

44:                                               ; preds = %38
  %45 = load i8*, i8** %2, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @SIGUSR2, align 4
  store i32 %49, i32* @sig, align 4
  br label %57

50:                                               ; preds = %44
  %51 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %52 = load i32, i32* @progname, align 4
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @write_stderr(i32 %51, i32 %52, i8* %53)
  %55 = call i32 (...) @do_advice()
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %59, %30
  br label %61

61:                                               ; preds = %60, %24
  br label %62

62:                                               ; preds = %61, %18
  br label %63

63:                                               ; preds = %62, %12
  br label %64

64:                                               ; preds = %63, %6
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
