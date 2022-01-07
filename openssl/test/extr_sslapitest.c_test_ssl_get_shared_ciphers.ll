; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ssl_get_shared_ciphers.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ssl_get_shared_ciphers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32, i32*, i32, i32 }

@TLS1_VERSION = common dso_local global i32 0, align 4
@shared_ciphers_data = common dso_local global %struct.TYPE_2__* null, align 8
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Shared ciphers are: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_ssl_get_shared_ciphers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ssl_get_shared_ciphers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @TLS_server_method()
  %10 = call i32 (...) @TLS_client_method()
  %11 = load i32, i32* @TLS1_VERSION, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ciphers_data, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @cert, align 4
  %19 = load i32, i32* @privkey, align 4
  %20 = call i32 @create_ssl_ctx_pair(i32 %9, i32 %10, i32 %11, i32 %17, i32** %4, i32** %3, i32 %18, i32 %19)
  %21 = call i32 @TEST_true(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %120

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ciphers_data, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @SSL_CTX_set_cipher_list(i32* %25, i32 %31)
  %33 = call i32 @TEST_true(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %24
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ciphers_data, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %35
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ciphers_data, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @SSL_CTX_set_ciphersuites(i32* %44, i32* %50)
  %52 = call i32 @TEST_true(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %43, %35
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ciphers_data, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @SSL_CTX_set_cipher_list(i32* %55, i32 %61)
  %63 = call i32 @TEST_true(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %54
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ciphers_data, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ciphers_data, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @SSL_CTX_set_ciphersuites(i32* %74, i32* %80)
  %82 = call i32 @TEST_true(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %73, %54, %43, %24
  br label %120

85:                                               ; preds = %73, %65
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @create_ssl_objects(i32* %86, i32* %87, i32** %6, i32** %5, i32* null, i32* null)
  %89 = call i32 @TEST_true(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load i32*, i32** %6, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @SSL_ERROR_NONE, align 4
  %95 = call i32 @create_ssl_connection(i32* %92, i32* %93, i32 %94)
  %96 = call i32 @TEST_true(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91, %85
  br label %120

99:                                               ; preds = %91
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %102 = call i32 @SSL_get_shared_ciphers(i32* %100, i8* %101, i32 1024)
  %103 = call i32 @TEST_ptr(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %99
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ciphers_data, align 8
  %108 = load i32, i32* %2, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @strcmp(i8* %106, i32 %112)
  %114 = call i32 @TEST_int_eq(i32 %113, i32 0)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %105, %99
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %118 = call i32 @TEST_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %117)
  br label %120

119:                                              ; preds = %105
  store i32 1, i32* %7, align 4
  br label %120

120:                                              ; preds = %119, %116, %98, %84, %23
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @SSL_free(i32* %121)
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @SSL_free(i32* %123)
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @SSL_CTX_free(i32* %125)
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @SSL_CTX_free(i32* %127)
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_ciphersuites(i32*, i32*) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @SSL_get_shared_ciphers(i32*, i8*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @TEST_info(i8*, i8*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
