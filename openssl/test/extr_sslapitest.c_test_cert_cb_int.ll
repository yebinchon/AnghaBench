; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_cert_cb_int.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_cert_cb_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@cert_cb_cnt = common dso_local global i32 0, align 4
@cert_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ecdsa_secp256r1_sha256\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"rsa_pss_rsae_sha256:rsa_pkcs1_sha256\00", align 1
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @test_cert_cb_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cert_cb_int(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 (...) @TLS_server_method()
  %13 = call i32 (...) @TLS_client_method()
  %14 = load i32, i32* @TLS1_VERSION, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @create_ssl_ctx_pair(i32 %12, i32 %13, i32 %14, i32 %15, i32** %6, i32** %5, i32* null, i32* null)
  %17 = call i32 @TEST_true(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %105

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -1, i32* @cert_cb_cnt, align 4
  br label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 3, i32* @cert_cb_cnt, align 4
  br label %29

28:                                               ; preds = %24
  store i32 0, i32* @cert_cb_cnt, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = call i32 (...) @TLS_server_method()
  %35 = call i32* @SSL_CTX_new(i32 %34)
  store i32* %35, i32** %7, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @cert_cb, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @SSL_CTX_set_cert_cb(i32* %37, i32 %38, i32* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @create_ssl_objects(i32* %41, i32* %42, i32** %9, i32** %8, i32* null, i32* null)
  %44 = call i32 @TEST_true(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %105

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @SSL_set1_sigalgs_list(i32* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @TEST_true(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %105

56:                                               ; preds = %50
  br label %68

57:                                               ; preds = %47
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @SSL_set1_sigalgs_list(i32* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @TEST_true(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %105

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32*, i32** %9, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @SSL_ERROR_NONE, align 4
  %72 = call i32 @create_ssl_connection(i32* %69, i32* %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %81, label %86

81:                                               ; preds = %78, %75, %68
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  br label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %11, align 4
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi i32 [ %85, %81 ], [ %87, %86 ]
  %90 = call i32 @TEST_true(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i32, i32* %4, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32, i32* @cert_cb_cnt, align 4
  %97 = sub nsw i32 %96, 2
  %98 = load i32, i32* @cert_cb_cnt, align 4
  %99 = sub nsw i32 %98, 3
  %100 = mul nsw i32 %97, %99
  %101 = call i32 @TEST_int_eq(i32 %100, i32 0)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95, %88
  br label %105

104:                                              ; preds = %95, %92
  store i32 1, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %103, %65, %55, %46, %19
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @SSL_free(i32* %106)
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @SSL_free(i32* %108)
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @SSL_CTX_free(i32* %110)
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @SSL_CTX_free(i32* %112)
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @SSL_CTX_free(i32* %114)
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @SSL_CTX_set_cert_cb(i32*, i32, i32*) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @SSL_set1_sigalgs_list(i32*, i8*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
