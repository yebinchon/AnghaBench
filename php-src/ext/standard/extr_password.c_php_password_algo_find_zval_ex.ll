; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_algo_find_zval_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_algo_find_zval_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@IS_LONG = common dso_local global i64 0, align 8
@php_password_algo_bcrypt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"argon2i\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"argon2id\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@php_password_algo_argon2i = common dso_local global i32 0, align 4
@php_password_algo_argon2id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @php_password_algo_find_zval_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_password_algo_find_zval_ex(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @Z_TYPE_P(i32* %13)
  %15 = load i64, i64* @IS_NULL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %2
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %3, align 8
  br label %55

19:                                               ; preds = %12
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @Z_TYPE_P(i32* %20)
  %22 = load i64, i64* @IS_LONG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @Z_LVAL_P(i32* %25)
  switch i32 %26, label %44 [
    i32 0, label %27
    i32 1, label %29
    i32 2, label %30
    i32 3, label %37
  ]

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  store i32* %28, i32** %3, align 8
  br label %55

29:                                               ; preds = %24
  store i32* @php_password_algo_bcrypt, i32** %3, align 8
  br label %55

30:                                               ; preds = %24
  %31 = call i32* @zend_string_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7, i32 0)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @php_password_algo_find(i32* %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @zend_string_release(i32* %34)
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %3, align 8
  br label %55

37:                                               ; preds = %24
  %38 = call i32* @zend_string_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8, i32 0)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @php_password_algo_find(i32* %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @zend_string_release(i32* %41)
  %43 = load i32*, i32** %9, align 8
  store i32* %43, i32** %3, align 8
  br label %55

44:                                               ; preds = %24
  store i32* null, i32** %3, align 8
  br label %55

45:                                               ; preds = %19
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @Z_TYPE_P(i32* %46)
  %48 = load i64, i64* @IS_STRING, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32* null, i32** %3, align 8
  br label %55

51:                                               ; preds = %45
  %52 = load i32*, i32** %4, align 8
  %53 = call i32* @Z_STR_P(i32* %52)
  %54 = call i32* @php_password_algo_find(i32* %53)
  store i32* %54, i32** %3, align 8
  br label %55

55:                                               ; preds = %51, %50, %44, %37, %30, %29, %27, %17
  %56 = load i32*, i32** %3, align 8
  ret i32* %56
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32* @php_password_algo_find(i32*) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i32* @Z_STR_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
