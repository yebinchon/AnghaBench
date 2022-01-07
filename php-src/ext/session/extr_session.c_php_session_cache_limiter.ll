; ModuleID = '/home/carl/AnghaBench/php-src/ext/session/extr_session.c_php_session_cache_limiter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/session/extr_session.c_php_session_cache_limiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)*, i64 }

@cache_limiter = common dso_local global i32 0, align 4
@session_status = common dso_local global i32 0, align 4
@php_session_active = common dso_local global i8* null, align 8
@headers_sent = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Cannot send session cache limiter - headers already sent (output started at %s:%d)\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Cannot send session cache limiter - headers already sent\00", align 1
@php_session_cache_limiters = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @php_session_cache_limiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_session_cache_limiter() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @cache_limiter, align 4
  %6 = call i8* @PS(i32 %5)
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %62

12:                                               ; preds = %0
  %13 = load i32, i32* @session_status, align 4
  %14 = call i8* @PS(i32 %13)
  %15 = load i8*, i8** @php_session_active, align 8
  %16 = icmp ne i8* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -1, i32* %1, align 4
  br label %62

18:                                               ; preds = %12
  %19 = load i32, i32* @headers_sent, align 4
  %20 = call i64 @SG(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = call i8* (...) @php_output_get_start_filename()
  store i8* %23, i8** %3, align 8
  %24 = call i32 (...) @php_output_get_start_lineno()
  store i32 %24, i32* %4, align 4
  %25 = call i32 (...) @php_session_abort()
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* @E_WARNING, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %29, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  br label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @E_WARNING, align 4
  %35 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %34, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  store i32 -2, i32* %1, align 4
  br label %62

37:                                               ; preds = %18
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @php_session_cache_limiters, align 8
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %2, align 8
  br label %39

39:                                               ; preds = %58, %37
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @cache_limiter, align 4
  %49 = call i8* @PS(i32 %48)
  %50 = call i32 @strcasecmp(i64 %47, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (...)*, i32 (...)** %54, align 8
  %56 = call i32 (...) %55()
  store i32 0, i32* %1, align 4
  br label %62

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 1
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %2, align 8
  br label %39

61:                                               ; preds = %39
  store i32 -1, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %52, %36, %17, %11
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i8* @PS(i32) #1

declare dso_local i64 @SG(i32) #1

declare dso_local i8* @php_output_get_start_filename(...) #1

declare dso_local i32 @php_output_get_start_lineno(...) #1

declare dso_local i32 @php_session_abort(...) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i32 @strcasecmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
