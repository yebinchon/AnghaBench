; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_get_ulong_prop_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_get_ulong_prop_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHP_CONV_ERR_SUCCESS = common dso_local global i32 0, align 4
@PHP_CONV_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i8*, i64)* @php_conv_get_ulong_prop_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_conv_get_ulong_prop_ex(i32* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = sub i64 %14, 1
  %16 = call i32* @zend_hash_str_find(i32* %12, i8* %13, i64 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load i32*, i32** %10, align 8
  %21 = call i64 @zval_get_long(i32* %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64*, i64** %7, align 8
  store i64 0, i64* %25, align 8
  br label %29

26:                                               ; preds = %19
  %27 = load i64, i64* %11, align 8
  %28 = load i64*, i64** %7, align 8
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %24
  %30 = load i32, i32* @PHP_CONV_ERR_SUCCESS, align 4
  store i32 %30, i32* %5, align 4
  br label %34

31:                                               ; preds = %4
  %32 = load i64*, i64** %7, align 8
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @PHP_CONV_ERR_NOT_FOUND, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %29
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32* @zend_hash_str_find(i32*, i8*, i64) #1

declare dso_local i64 @zval_get_long(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
