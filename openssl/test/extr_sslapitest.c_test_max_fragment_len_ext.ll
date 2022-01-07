; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_max_fragment_len_ext.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_max_fragment_len_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_fragment_len_test = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_max_fragment_len_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_max_fragment_len_ext(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = call i32 (...) @TLS_method()
  %10 = call i32* @SSL_CTX_new(i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @TEST_ptr(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %81

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** @max_fragment_len_test, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SSL_CTX_set_tlsext_max_fragment_length(i32* %16, i32 %21)
  %23 = call i32 @TEST_true(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %81

26:                                               ; preds = %15
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* @SSL_new(i32* %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @TEST_ptr(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %81

33:                                               ; preds = %26
  %34 = call i32 (...) @BIO_s_mem()
  %35 = call i32* @BIO_new(i32 %34)
  store i32* %35, i32** %7, align 8
  %36 = call i32 (...) @BIO_s_mem()
  %37 = call i32* @BIO_new(i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @TEST_ptr(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @TEST_ptr(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41, %33
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @BIO_free(i32* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @BIO_free(i32* %48)
  br label %81

50:                                               ; preds = %41
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @SSL_set_bio(i32* %51, i32* %52, i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @SSL_set_connect_state(i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @SSL_connect(i32* %57)
  %59 = call i32 @TEST_int_le(i32 %58, i32 0)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %81

62:                                               ; preds = %50
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @get_MFL_from_client_hello(i32* %63, i32* %6)
  %65 = call i32 @TEST_true(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %81

68:                                               ; preds = %62
  %69 = load i32*, i32** @max_fragment_len_test, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @TEST_true(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  br label %81

80:                                               ; preds = %68
  store i32 1, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %79, %67, %61, %45, %32, %25, %14
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @SSL_free(i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @SSL_CTX_free(i32* %84)
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_method(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @SSL_CTX_set_tlsext_max_fragment_length(i32*, i32) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i32 @TEST_int_le(i32, i32) #1

declare dso_local i32 @SSL_connect(i32*) #1

declare dso_local i32 @get_MFL_from_client_hello(i32*, i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
