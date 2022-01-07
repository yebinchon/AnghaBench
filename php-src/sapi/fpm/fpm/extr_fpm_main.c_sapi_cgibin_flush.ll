; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_main.c_sapi_cgibin_flush.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_main.c_sapi_cgibin_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fpm_is_running = common dso_local global i64 0, align 8
@parent = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sapi_cgibin_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sapi_cgibin_flush(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @fpm_is_running, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* @parent, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @fcgi_flush(i32* %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = call i32 (...) @php_handle_aborted_connection()
  br label %20

20:                                               ; preds = %18, %14, %11, %6
  br label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @stdout, align 4
  %23 = call i64 @fflush(i32 %22)
  %24 = load i64, i64* @EOF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @php_handle_aborted_connection()
  br label %28

28:                                               ; preds = %20, %26, %21
  ret void
}

declare dso_local i32 @fcgi_flush(i32*, i32) #1

declare dso_local i32 @php_handle_aborted_connection(...) #1

declare dso_local i64 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
