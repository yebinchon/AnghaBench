; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ssl_pending.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ssl_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_ssl_pending.msg = private unnamed_addr constant [15 x i8] c"A test message\00", align 1
@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@DTLS1_VERSION = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_ssl_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ssl_pending(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [15 x i8], align 1
  %9 = alloca [5 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = bitcast [15 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.test_ssl_pending.msg, i32 0, i32 0), i64 15, i1 false)
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = call i32 (...) @TLS_server_method()
  %17 = call i32 (...) @TLS_client_method()
  %18 = load i32, i32* @TLS1_VERSION, align 4
  %19 = load i32, i32* @cert, align 4
  %20 = load i32, i32* @privkey, align 4
  %21 = call i32 @create_ssl_ctx_pair(i32 %16, i32 %17, i32 %18, i32 0, i32** %4, i32** %3, i32 %19, i32 %20)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %107

25:                                               ; preds = %15
  br label %37

26:                                               ; preds = %1
  %27 = call i32 (...) @DTLS_server_method()
  %28 = call i32 (...) @DTLS_client_method()
  %29 = load i32, i32* @DTLS1_VERSION, align 4
  %30 = load i32, i32* @cert, align 4
  %31 = load i32, i32* @privkey, align 4
  %32 = call i32 @create_ssl_ctx_pair(i32 %27, i32 %28, i32 %29, i32 0, i32** %4, i32** %3, i32 %30, i32 %31)
  %33 = call i32 @TEST_true(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %107

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @create_ssl_objects(i32* %38, i32* %39, i32** %6, i32** %5, i32* null, i32* null)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @SSL_ERROR_NONE, align 4
  %47 = call i32 @create_ssl_connection(i32* %44, i32* %45, i32 %46)
  %48 = call i32 @TEST_true(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43, %37
  br label %107

51:                                               ; preds = %43
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @SSL_pending(i32* %52)
  %54 = call i32 @TEST_int_eq(i32 %53, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %105

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @SSL_has_pending(i32* %57)
  %59 = call i32 @TEST_false(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %105

61:                                               ; preds = %56
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @SSL_pending(i32* %62)
  %64 = call i32 @TEST_int_eq(i32 %63, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %105

66:                                               ; preds = %61
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @SSL_has_pending(i32* %67)
  %69 = call i32 @TEST_false(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %105

71:                                               ; preds = %66
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %74 = call i32 @SSL_write_ex(i32* %72, i8* %73, i32 15, i64* %10)
  %75 = call i32 @TEST_true(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %105

77:                                               ; preds = %71
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @TEST_size_t_eq(i64 %78, i32 15)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %77
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %84 = call i32 @SSL_read_ex(i32* %82, i8* %83, i32 5, i64* %11)
  %85 = call i32 @TEST_true(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %81
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @TEST_size_t_eq(i64 %88, i32 5)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @SSL_pending(i32* %92)
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %11, align 8
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @TEST_int_eq(i32 %93, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %91
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @SSL_has_pending(i32* %101)
  %103 = call i32 @TEST_true(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100, %91, %87, %81, %77, %71, %66, %61, %56, %51
  br label %107

106:                                              ; preds = %100
  store i32 1, i32* %7, align 4
  br label %107

107:                                              ; preds = %106, %105, %50, %35, %24
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @SSL_free(i32* %108)
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @SSL_free(i32* %110)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @SSL_CTX_free(i32* %112)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @SSL_CTX_free(i32* %114)
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #2

declare dso_local i32 @TLS_server_method(...) #2

declare dso_local i32 @TLS_client_method(...) #2

declare dso_local i32 @DTLS_server_method(...) #2

declare dso_local i32 @DTLS_client_method(...) #2

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #2

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #2

declare dso_local i32 @TEST_int_eq(i32, i32) #2

declare dso_local i32 @SSL_pending(i32*) #2

declare dso_local i32 @TEST_false(i32) #2

declare dso_local i32 @SSL_has_pending(i32*) #2

declare dso_local i32 @SSL_write_ex(i32*, i8*, i32, i64*) #2

declare dso_local i32 @TEST_size_t_eq(i64, i32) #2

declare dso_local i32 @SSL_read_ex(i32*, i8*, i32, i64*) #2

declare dso_local i32 @SSL_free(i32*) #2

declare dso_local i32 @SSL_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
