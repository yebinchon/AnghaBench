; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/extr_php_pcre.c_php_pcre_init_pcre2.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/extr_php_pcre.c_php_pcre_init_pcre2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gctx = common dso_local global i64 0, align 8
@php_pcre_malloc = common dso_local global i32 0, align 4
@php_pcre_free = common dso_local global i32 0, align 4
@pcre2_init_ok = common dso_local global i32 0, align 4
@cctx = common dso_local global i64 0, align 8
@mctx = common dso_local global i64 0, align 8
@mdata = common dso_local global i64 0, align 8
@PHP_PCRE_PREALLOC_MDATA_SIZE = common dso_local global i32 0, align 4
@PCRE_JIT_STACK_MAX_SIZE = common dso_local global i32 0, align 4
@PCRE_JIT_STACK_MIN_SIZE = common dso_local global i32 0, align 4
@jit_stack = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @php_pcre_init_pcre2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_pcre_init_pcre2(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @gctx, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @php_pcre_malloc, align 4
  %7 = load i32, i32* @php_pcre_free, align 4
  %8 = call i64 @pcre2_general_context_create(i32 %6, i32 %7, i32* null)
  store i64 %8, i64* @gctx, align 8
  %9 = load i64, i64* @gctx, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  store i32 0, i32* @pcre2_init_ok, align 4
  br label %45

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i64, i64* @cctx, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @gctx, align 8
  %18 = call i64 @pcre2_compile_context_create(i64 %17)
  store i64 %18, i64* @cctx, align 8
  %19 = load i64, i64* @cctx, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* @pcre2_init_ok, align 4
  br label %45

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i64, i64* @mctx, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* @gctx, align 8
  %28 = call i64 @pcre2_match_context_create(i64 %27)
  store i64 %28, i64* @mctx, align 8
  %29 = load i64, i64* @mctx, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* @pcre2_init_ok, align 4
  br label %45

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i64, i64* @mdata, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @PHP_PCRE_PREALLOC_MDATA_SIZE, align 4
  %38 = load i64, i64* @gctx, align 8
  %39 = call i64 @pcre2_match_data_create(i32 %37, i64 %38)
  store i64 %39, i64* @mdata, align 8
  %40 = load i64, i64* @mdata, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 0, i32* @pcre2_init_ok, align 4
  br label %45

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %33
  store i32 1, i32* @pcre2_init_ok, align 4
  br label %45

45:                                               ; preds = %44, %42, %31, %21, %11
  ret void
}

declare dso_local i64 @pcre2_general_context_create(i32, i32, i32*) #1

declare dso_local i64 @pcre2_compile_context_create(i64) #1

declare dso_local i64 @pcre2_match_context_create(i64) #1

declare dso_local i64 @pcre2_match_data_create(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
