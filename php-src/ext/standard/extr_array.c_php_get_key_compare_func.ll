; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_array.c_php_get_key_compare_func.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_array.c_php_get_key_compare_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHP_SORT_FLAG_CASE = common dso_local global i32 0, align 4
@php_array_reverse_key_compare_numeric = common dso_local global i32* null, align 8
@php_array_key_compare_numeric = common dso_local global i32* null, align 8
@php_array_reverse_key_compare_string_case = common dso_local global i32* null, align 8
@php_array_key_compare_string_case = common dso_local global i32* null, align 8
@php_array_reverse_key_compare_string = common dso_local global i32* null, align 8
@php_array_key_compare_string = common dso_local global i32* null, align 8
@php_array_reverse_key_compare_string_natural_case = common dso_local global i32* null, align 8
@php_array_key_compare_string_natural_case = common dso_local global i32* null, align 8
@php_array_reverse_key_compare_string_natural = common dso_local global i32* null, align 8
@php_array_key_compare_string_natural = common dso_local global i32* null, align 8
@php_array_reverse_key_compare_string_locale = common dso_local global i32* null, align 8
@php_array_key_compare_string_locale = common dso_local global i32* null, align 8
@php_array_reverse_key_compare = common dso_local global i32* null, align 8
@php_array_key_compare = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @php_get_key_compare_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_get_key_compare_func(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PHP_SORT_FLAG_CASE, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  switch i32 %9, label %63 [
    i32 130, label %10
    i32 128, label %17
    i32 131, label %36
    i32 132, label %55
    i32 129, label %62
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32*, i32** @php_array_reverse_key_compare_numeric, align 8
  store i32* %14, i32** %3, align 8
  br label %70

15:                                               ; preds = %10
  %16 = load i32*, i32** @php_array_key_compare_numeric, align 8
  store i32* %16, i32** %3, align 8
  br label %70

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PHP_SORT_FLAG_CASE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32*, i32** @php_array_reverse_key_compare_string_case, align 8
  store i32* %26, i32** %3, align 8
  br label %70

27:                                               ; preds = %22
  %28 = load i32*, i32** @php_array_key_compare_string_case, align 8
  store i32* %28, i32** %3, align 8
  br label %70

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32*, i32** @php_array_reverse_key_compare_string, align 8
  store i32* %33, i32** %3, align 8
  br label %70

34:                                               ; preds = %29
  %35 = load i32*, i32** @php_array_key_compare_string, align 8
  store i32* %35, i32** %3, align 8
  br label %70

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @PHP_SORT_FLAG_CASE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32*, i32** @php_array_reverse_key_compare_string_natural_case, align 8
  store i32* %45, i32** %3, align 8
  br label %70

46:                                               ; preds = %41
  %47 = load i32*, i32** @php_array_key_compare_string_natural_case, align 8
  store i32* %47, i32** %3, align 8
  br label %70

48:                                               ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32*, i32** @php_array_reverse_key_compare_string_natural, align 8
  store i32* %52, i32** %3, align 8
  br label %70

53:                                               ; preds = %48
  %54 = load i32*, i32** @php_array_key_compare_string_natural, align 8
  store i32* %54, i32** %3, align 8
  br label %70

55:                                               ; preds = %2
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32*, i32** @php_array_reverse_key_compare_string_locale, align 8
  store i32* %59, i32** %3, align 8
  br label %70

60:                                               ; preds = %55
  %61 = load i32*, i32** @php_array_key_compare_string_locale, align 8
  store i32* %61, i32** %3, align 8
  br label %70

62:                                               ; preds = %2
  br label %63

63:                                               ; preds = %2, %62
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32*, i32** @php_array_reverse_key_compare, align 8
  store i32* %67, i32** %3, align 8
  br label %70

68:                                               ; preds = %63
  %69 = load i32*, i32** @php_array_key_compare, align 8
  store i32* %69, i32** %3, align 8
  br label %70

70:                                               ; preds = %68, %66, %60, %58, %53, %51, %46, %44, %34, %32, %27, %25, %15, %13
  %71 = load i32*, i32** %3, align 8
  ret i32* %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
