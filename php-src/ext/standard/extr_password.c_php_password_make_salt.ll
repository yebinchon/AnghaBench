; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_make_salt.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_make_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Length is too large to safely generate\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to generate salt\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Generated salt too short\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @php_password_make_salt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_password_make_salt(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* @INT_MAX, align 4
  %8 = sdiv i32 %7, 3
  %9 = sext i32 %8 to i64
  %10 = icmp ugt i64 %6, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @E_WARNING, align 4
  %13 = call i32 @php_error_docref(i32* null, i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %60

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = mul i64 %15, 3
  %17 = udiv i64 %16, 4
  %18 = add i64 %17, 1
  %19 = call i32* @zend_string_alloc(i64 %18, i32 0)
  store i32* %19, i32** %5, align 8
  %20 = load i64, i64* @FAILURE, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64* @ZSTR_VAL(i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ZSTR_LEN(i32* %23)
  %25 = call i64 @php_random_bytes_silent(i64* %22, i32 %24)
  %26 = icmp eq i64 %20, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load i32, i32* @E_WARNING, align 4
  %29 = call i32 @php_error_docref(i32* null, i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @zend_string_release_ex(i32* %30, i32 0)
  store i32* null, i32** %2, align 8
  br label %60

32:                                               ; preds = %14
  %33 = load i64, i64* %3, align 8
  %34 = call i32* @zend_string_alloc(i64 %33, i32 0)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64* @ZSTR_VAL(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @ZSTR_LEN(i32* %37)
  %39 = load i64, i64* %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i64* @ZSTR_VAL(i32* %40)
  %42 = call i64 @php_password_salt_to64(i64* %36, i32 %38, i64 %39, i64* %41)
  %43 = load i64, i64* @FAILURE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %32
  %46 = load i32, i32* @E_WARNING, align 4
  %47 = call i32 @php_error_docref(i32* null, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @zend_string_release_ex(i32* %48, i32 0)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @zend_string_release_ex(i32* %50, i32 0)
  store i32* null, i32** %2, align 8
  br label %60

52:                                               ; preds = %32
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @zend_string_release_ex(i32* %53, i32 0)
  %55 = load i32*, i32** %4, align 8
  %56 = call i64* @ZSTR_VAL(i32* %55)
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load i32*, i32** %4, align 8
  store i32* %59, i32** %2, align 8
  br label %60

60:                                               ; preds = %52, %45, %27, %11
  %61 = load i32*, i32** %2, align 8
  ret i32* %61
}

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32* @zend_string_alloc(i64, i32) #1

declare dso_local i64 @php_random_bytes_silent(i64*, i32) #1

declare dso_local i64* @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i64 @php_password_salt_to64(i64*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
