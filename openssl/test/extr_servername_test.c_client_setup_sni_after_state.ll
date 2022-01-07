; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_servername_test.c_client_setup_sni_after_state.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_servername_test.c_client_setup_sni_after_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@host = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @client_setup_sni_after_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_setup_sni_after_state() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @TLS_method()
  %8 = call i32* @SSL_CTX_new(i32 %7)
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @TEST_ptr(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %65

13:                                               ; preds = %0
  %14 = load i32*, i32** %1, align 8
  %15 = call i32* @SSL_new(i32* %14)
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @TEST_ptr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %65

20:                                               ; preds = %13
  %21 = call i32 (...) @BIO_s_mem()
  %22 = call i32* @BIO_new(i32 %21)
  store i32* %22, i32** %3, align 8
  %23 = call i32 (...) @BIO_s_mem()
  %24 = call i32* @BIO_new(i32 %23)
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @TEST_ptr(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @TEST_ptr(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %20
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @BIO_free(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @BIO_free(i32* %35)
  br label %65

37:                                               ; preds = %28
  %38 = load i32*, i32** %2, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @SSL_set_bio(i32* %38, i32* %39, i32* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @SSL_set_connect_state(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @host, align 4
  %46 = call i32 @SSL_set_tlsext_host_name(i32* %44, i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @SSL_connect(i32* %47)
  %49 = call i32 @TEST_int_le(i32 %48, i32 0)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %37
  br label %65

52:                                               ; preds = %37
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @get_sni_from_client_hello(i32* %53, i8** %5)
  %55 = call i32 @TEST_true(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %65

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @host, align 4
  %61 = call i32 @TEST_str_eq(i8* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %65

64:                                               ; preds = %58
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %63, %57, %51, %32, %19, %12
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @OPENSSL_free(i8* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @SSL_free(i32* %68)
  %70 = load i32*, i32** %1, align 8
  %71 = call i32 @SSL_CTX_free(i32* %70)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_method(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i32 @SSL_set_tlsext_host_name(i32*, i32) #1

declare dso_local i32 @TEST_int_le(i32, i32) #1

declare dso_local i32 @SSL_connect(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @get_sni_from_client_hello(i32*, i8**) #1

declare dso_local i32 @TEST_str_eq(i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
