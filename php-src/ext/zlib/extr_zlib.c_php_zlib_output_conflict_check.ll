; ModuleID = '/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_output_conflict_check.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zlib/extr_zlib.c_php_zlib_output_conflict_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHP_ZLIB_OUTPUT_HANDLER_NAME = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"ob_gzhandler\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mb_output_handler\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"URL-Rewriter\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @php_zlib_output_conflict_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_zlib_output_conflict_check(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = call i64 (...) @php_output_get_level()
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i8*, i8** @PHP_ZLIB_OUTPUT_HANDLER_NAME, align 8
  %12 = call i32 @ZEND_STRL(i8* %11)
  %13 = call i64 @php_output_handler_conflict(i8* %9, i64 %10, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %8
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = call i64 @php_output_handler_conflict(i8* %16, i64 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i64 @php_output_handler_conflict(i8* %22, i64 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i64 @php_output_handler_conflict(i8* %28, i64 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %21, %15, %8
  %34 = load i32, i32* @FAILURE, align 4
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32, i32* @SUCCESS, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @php_output_get_level(...) #1

declare dso_local i64 @php_output_handler_conflict(i8*, i64, i32) #1

declare dso_local i32 @ZEND_STRL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
