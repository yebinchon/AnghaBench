; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/extr_php_pcre.c_pcre_handle_exec_error.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/extr_php_pcre.c_pcre_handle_exec_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHP_PCRE_BACKTRACK_LIMIT_ERROR = common dso_local global i32 0, align 4
@PHP_PCRE_RECURSION_LIMIT_ERROR = common dso_local global i32 0, align 4
@PHP_PCRE_BAD_UTF8_OFFSET_ERROR = common dso_local global i32 0, align 4
@PCRE2_ERROR_UTF8_ERR1 = common dso_local global i32 0, align 4
@PCRE2_ERROR_UTF8_ERR21 = common dso_local global i32 0, align 4
@PHP_PCRE_BAD_UTF8_ERROR = common dso_local global i32 0, align 4
@PHP_PCRE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@PHP_PCRE_JIT_STACKLIMIT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pcre_handle_exec_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcre_handle_exec_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %12 [
    i32 129, label %6
    i32 128, label %8
    i32 131, label %10
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @PHP_PCRE_BACKTRACK_LIMIT_ERROR, align 4
  store i32 %7, i32* %3, align 4
  br label %25

8:                                                ; preds = %1
  %9 = load i32, i32* @PHP_PCRE_RECURSION_LIMIT_ERROR, align 4
  store i32 %9, i32* %3, align 4
  br label %25

10:                                               ; preds = %1
  %11 = load i32, i32* @PHP_PCRE_BAD_UTF8_OFFSET_ERROR, align 4
  store i32 %11, i32* %3, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @PCRE2_ERROR_UTF8_ERR1, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @PCRE2_ERROR_UTF8_ERR21, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @PHP_PCRE_BAD_UTF8_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %16, %12
  %23 = load i32, i32* @PHP_PCRE_INTERNAL_ERROR, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24, %10, %8, %6
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %4, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
