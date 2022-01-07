; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_gosttest.c_test_tls13.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_gosttest.c_test_tls13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@TLS1_VERSION = common dso_local global i32 0, align 4
@ciphers = common dso_local global %struct.TYPE_2__* null, align 8
@cert1 = common dso_local global i32 0, align 4
@cert2 = common dso_local global i32 0, align 4
@privkey1 = common dso_local global i32 0, align 4
@privkey2 = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_tls13 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_tls13(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @TLS_server_method()
  %9 = call i32 (...) @TLS_client_method()
  %10 = load i32, i32* @TLS1_VERSION, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ciphers, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @cert1, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @cert2, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ciphers, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @privkey1, align 4
  br label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @privkey2, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = call i32 @create_ssl_ctx_pair(i32 %8, i32 %9, i32 %10, i32 0, i32** %4, i32** %3, i32 %23, i32 %36)
  %38 = call i32 @TEST_true(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %108

41:                                               ; preds = %35
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ciphers, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @SSL_CTX_set_cipher_list(i32* %42, i32 %48)
  %50 = call i32 @TEST_true(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %41
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ciphers, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @SSL_CTX_set_cipher_list(i32* %53, i32 %59)
  %61 = call i32 @TEST_true(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @create_ssl_objects(i32* %64, i32* %65, i32** %6, i32** %5, i32* null, i32* null)
  %67 = call i32 @TEST_true(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63, %52, %41
  br label %108

70:                                               ; preds = %63
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ciphers, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @SSL_ERROR_NONE, align 4
  %82 = call i32 @create_ssl_connection(i32* %79, i32* %80, i32 %81)
  %83 = call i32 @TEST_false(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  br label %108

86:                                               ; preds = %78
  br label %107

87:                                               ; preds = %70
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* @SSL_ERROR_NONE, align 4
  %91 = call i32 @create_ssl_connection(i32* %88, i32* %89, i32 %90)
  %92 = call i32 @TEST_true(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %87
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @SSL_version(i32* %95)
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ciphers, align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @TEST_int_eq(i32 %96, i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %94, %87
  br label %108

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %86
  store i32 1, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %105, %85, %69, %40
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @SSL_free(i32* %109)
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @SSL_free(i32* %111)
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @SSL_CTX_free(i32* %113)
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @SSL_CTX_free(i32* %115)
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i64) #1

declare dso_local i32 @SSL_version(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
