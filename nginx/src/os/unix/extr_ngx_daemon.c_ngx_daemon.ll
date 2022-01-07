; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_daemon.c_ngx_daemon.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_daemon.c_ngx_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_pid = common dso_local global i32 0, align 4
@ngx_parent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"setsid() failed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"open(\22/dev/null\22) failed\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"dup2(STDIN) failed\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"dup2(STDOUT) failed\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"close() failed\00", align 1
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_daemon(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = call i32 (...) @fork()
  switch i32 %5, label %13 [
    i32 -1, label %6
    i32 0, label %12
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @NGX_LOG_EMERG, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @ngx_errno, align 4
  %10 = call i32 @ngx_log_error(i32 %7, i32* %8, i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @NGX_ERROR, align 4
  store i32 %11, i32* %2, align 4
  br label %77

12:                                               ; preds = %1
  br label %15

13:                                               ; preds = %1
  %14 = call i32 @exit(i32 0) #3
  unreachable

15:                                               ; preds = %12
  %16 = load i32, i32* @ngx_pid, align 4
  store i32 %16, i32* @ngx_parent, align 4
  %17 = call i32 (...) @ngx_getpid()
  store i32 %17, i32* @ngx_pid, align 4
  %18 = call i32 (...) @setsid()
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @NGX_LOG_EMERG, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @ngx_errno, align 4
  %24 = call i32 @ngx_log_error(i32 %21, i32* %22, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @NGX_ERROR, align 4
  store i32 %25, i32* %2, align 4
  br label %77

26:                                               ; preds = %15
  %27 = call i32 @umask(i32 0)
  %28 = load i32, i32* @O_RDWR, align 4
  %29 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* @NGX_LOG_EMERG, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @ngx_errno, align 4
  %36 = call i32 @ngx_log_error(i32 %33, i32* %34, i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* @NGX_ERROR, align 4
  store i32 %37, i32* %2, align 4
  br label %77

38:                                               ; preds = %26
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @STDIN_FILENO, align 4
  %41 = call i32 @dup2(i32 %39, i32 %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @NGX_LOG_EMERG, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @ngx_errno, align 4
  %47 = call i32 @ngx_log_error(i32 %44, i32* %45, i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* @NGX_ERROR, align 4
  store i32 %48, i32* %2, align 4
  br label %77

49:                                               ; preds = %38
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @STDOUT_FILENO, align 4
  %52 = call i32 @dup2(i32 %50, i32 %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @NGX_LOG_EMERG, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @ngx_errno, align 4
  %58 = call i32 @ngx_log_error(i32 %55, i32* %56, i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* @NGX_ERROR, align 4
  store i32 %59, i32* %2, align 4
  br label %77

60:                                               ; preds = %49
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @STDERR_FILENO, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @close(i32 %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* @NGX_LOG_EMERG, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @ngx_errno, align 4
  %72 = call i32 @ngx_log_error(i32 %69, i32* %70, i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* @NGX_ERROR, align 4
  store i32 %73, i32* %2, align 4
  br label %77

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %60
  %76 = load i32, i32* @NGX_OK, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %68, %54, %43, %32, %20, %6
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ngx_getpid(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
