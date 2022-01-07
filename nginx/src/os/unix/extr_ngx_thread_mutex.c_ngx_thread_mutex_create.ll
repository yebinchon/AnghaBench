; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_thread_mutex.c_ngx_thread_mutex_create.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_thread_mutex.c_ngx_thread_mutex_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pthread_mutexattr_init() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_ERRORCHECK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"pthread_mutexattr_settype(PTHREAD_MUTEX_ERRORCHECK) failed\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"pthread_mutex_init() failed\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"pthread_mutexattr_destroy() failed\00", align 1
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_thread_mutex_create(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i64 @pthread_mutexattr_init(i32* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @NGX_LOG_EMERG, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @ngx_log_error(i32 %12, i32* %13, i64 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @NGX_ERROR, align 4
  store i32 %16, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load i32, i32* @PTHREAD_MUTEX_ERRORCHECK, align 4
  %19 = call i64 @pthread_mutexattr_settype(i32* %7, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @NGX_LOG_EMERG, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @ngx_log_error(i32 %23, i32* %24, i64 %25, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @NGX_ERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %17
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @pthread_mutex_init(i32* %29, i32* %7)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @NGX_LOG_EMERG, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @ngx_log_error(i32 %34, i32* %35, i64 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @NGX_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %50

39:                                               ; preds = %28
  %40 = call i64 @pthread_mutexattr_destroy(i32* %7)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* @NGX_LOG_ALERT, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @ngx_log_error(i32 %44, i32* %45, i64 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* @NGX_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %33, %22, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i64, i8*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @pthread_mutexattr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
