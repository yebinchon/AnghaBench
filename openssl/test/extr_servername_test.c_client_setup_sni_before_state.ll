; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_servername_test.c_client_setup_sni_before_state.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_servername_test.c_client_setup_sni_before_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@host = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @client_setup_sni_before_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_setup_sni_before_state() #0 {
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
  br label %63

13:                                               ; preds = %0
  %14 = load i32*, i32** %1, align 8
  %15 = call i32* @SSL_new(i32* %14)
  store i32* %15, i32** %2, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @TEST_ptr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %63

20:                                               ; preds = %13
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @host, align 4
  %23 = call i32 @SSL_set_tlsext_host_name(i32* %21, i32 %22)
  %24 = call i32 (...) @BIO_s_mem()
  %25 = call i32* @BIO_new(i32 %24)
  store i32* %25, i32** %3, align 8
  %26 = call i32 (...) @BIO_s_mem()
  %27 = call i32* @BIO_new(i32 %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @TEST_ptr(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @TEST_ptr(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31, %20
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @BIO_free(i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @BIO_free(i32* %38)
  br label %63

40:                                               ; preds = %31
  %41 = load i32*, i32** %2, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @SSL_set_bio(i32* %41, i32* %42, i32* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @SSL_connect(i32* %45)
  %47 = call i32 @TEST_int_le(i32 %46, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %63

50:                                               ; preds = %40
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @get_sni_from_client_hello(i32* %51, i8** %5)
  %53 = call i32 @TEST_true(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %63

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* @host, align 4
  %59 = call i32 @TEST_str_eq(i8* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %63

62:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %61, %55, %49, %35, %19, %12
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @OPENSSL_free(i8* %64)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @SSL_free(i32* %66)
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @SSL_CTX_free(i32* %68)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_method(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32 @SSL_set_tlsext_host_name(i32*, i32) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

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
