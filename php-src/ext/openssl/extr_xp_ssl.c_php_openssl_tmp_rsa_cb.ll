; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_tmp_rsa_cb.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_tmp_rsa_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@php_openssl_tmp_rsa_cb.rsa_tmp = internal global i32* null, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"allocation error generating RSA key\00", align 1
@RSA_F4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32)* @php_openssl_tmp_rsa_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_openssl_tmp_rsa_cb(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %8 = load i32*, i32** @php_openssl_tmp_rsa_cb.rsa_tmp, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = call i32* (...) @BN_new()
  store i32* %11, i32** %7, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @E_WARNING, align 4
  %15 = call i32 @php_error_docref(i32* null, i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %10, %3
  %17 = load i32*, i32** @php_openssl_tmp_rsa_cb.rsa_tmp, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @RSA_F4, align 4
  %25 = call i32 @BN_set_word(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = call i32* (...) @RSA_new()
  store i32* %28, i32** @php_openssl_tmp_rsa_cb.rsa_tmp, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** @php_openssl_tmp_rsa_cb.rsa_tmp, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @RSA_generate_key_ex(i32* %31, i32 %32, i32* %33, i32* null)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %30, %27, %22
  %37 = load i32*, i32** @php_openssl_tmp_rsa_cb.rsa_tmp, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** @php_openssl_tmp_rsa_cb.rsa_tmp, align 8
  %41 = call i32 @RSA_free(i32* %40)
  br label %42

42:                                               ; preds = %39, %36
  store i32* null, i32** @php_openssl_tmp_rsa_cb.rsa_tmp, align 8
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @BN_free(i32* %44)
  br label %46

46:                                               ; preds = %43, %19, %16
  %47 = load i32*, i32** @php_openssl_tmp_rsa_cb.rsa_tmp, align 8
  ret i32* %47
}

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32 @RSA_generate_key_ex(i32*, i32, i32*, i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
