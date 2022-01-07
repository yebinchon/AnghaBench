; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_get_string_prop_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_get_string_prop_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHP_CONV_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@PHP_CONV_ERR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i64*, i8*, i64, i32)* @php_conv_get_string_prop_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_conv_get_string_prop_ex(i32* %0, i8** %1, i64* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i8**, i8*** %9, align 8
  store i8* null, i8** %17, align 8
  %18 = load i64*, i64** %10, align 8
  store i64 0, i64* %18, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = sub i64 %21, 1
  %23 = call i32* @zend_hash_str_find(i32* %19, i8* %20, i64 %22)
  store i32* %23, i32** %14, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %6
  %26 = load i32*, i32** %14, align 8
  %27 = call i32* @zval_get_tmp_string(i32* %26, i32** %15)
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = call i32 @ZSTR_LEN(i32* %28)
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %13, align 4
  %32 = call i8* @pemalloc(i32 %30, i32 %31)
  %33 = load i8**, i8*** %9, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = call i32 @ZSTR_LEN(i32* %34)
  %36 = sext i32 %35 to i64
  %37 = load i64*, i64** %10, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i8**, i8*** %9, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = call i32 @ZSTR_VAL(i32* %40)
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @ZSTR_LEN(i32* %42)
  %44 = add nsw i32 %43, 1
  %45 = call i32 @memcpy(i8* %39, i32 %41, i32 %44)
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @zend_tmp_string_release(i32* %46)
  br label %50

48:                                               ; preds = %6
  %49 = load i32, i32* @PHP_CONV_ERR_NOT_FOUND, align 4
  store i32 %49, i32* %7, align 4
  br label %52

50:                                               ; preds = %25
  %51 = load i32, i32* @PHP_CONV_ERR_SUCCESS, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32* @zend_hash_str_find(i32*, i8*, i64) #1

declare dso_local i32* @zval_get_tmp_string(i32*, i32**) #1

declare dso_local i8* @pemalloc(i32, i32) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_tmp_string_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
