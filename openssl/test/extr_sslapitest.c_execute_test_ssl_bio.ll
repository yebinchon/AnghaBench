; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_execute_test_ssl_bio.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_execute_test_ssl_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_CLOSE = common dso_local global i32 0, align 4
@NO_BIO_CHANGE = common dso_local global i64 0, align 8
@CHANGE_RBIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @execute_test_ssl_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_test_ssl_bio(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @TLS_method()
  %12 = call i32* @SSL_CTX_new(i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = call i32 @TEST_ptr(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32*, i32** %8, align 8
  %17 = call i32* @SSL_new(i32* %16)
  store i32* %17, i32** %9, align 8
  %18 = call i32 @TEST_ptr(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = call i32 (...) @BIO_f_ssl()
  %22 = call i32* @BIO_new(i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = call i32 @TEST_ptr(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = call i32 (...) @BIO_s_mem()
  %27 = call i32* @BIO_new(i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = call i32 @TEST_ptr(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20, %15, %2
  br label %71

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @BIO_CLOSE, align 4
  %35 = call i32 @BIO_set_ssl(i32* %32, i32* %33, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @BIO_push(i32* %36, i32* %37)
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @NO_BIO_CHANGE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %31
  %43 = call i32 (...) @BIO_s_mem()
  %44 = call i32* @BIO_new(i32 %43)
  store i32* %44, i32** %7, align 8
  %45 = call i32 @TEST_ptr(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %71

48:                                               ; preds = %42
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @CHANGE_RBIO, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @SSL_set0_rbio(i32* %53, i32* %54)
  br label %60

56:                                               ; preds = %48
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @SSL_set0_wbio(i32* %57, i32* %58)
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %31
  store i32* null, i32** %9, align 8
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @BIO_pop(i32* %65)
  br label %70

67:                                               ; preds = %61
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @BIO_pop(i32* %68)
  br label %70

70:                                               ; preds = %67, %64
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %47, %30
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @BIO_free(i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @BIO_free(i32* %74)
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @SSL_free(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @SSL_CTX_free(i32* %78)
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_method(...) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_ssl(...) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @BIO_set_ssl(i32*, i32*, i32) #1

declare dso_local i32 @BIO_push(i32*, i32*) #1

declare dso_local i32 @SSL_set0_rbio(i32*, i32*) #1

declare dso_local i32 @SSL_set0_wbio(i32*, i32*) #1

declare dso_local i32 @BIO_pop(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
