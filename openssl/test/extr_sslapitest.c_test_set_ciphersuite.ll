; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_set_ciphersuite.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_set_ciphersuite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"TLS_AES_128_GCM_SHA256:TLS_AES_128_CCM_SHA256\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"AES256-GCM-SHA384\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"TLS_AES_128_GCM_SHA256\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"TLS_AES_128_CCM_SHA256\00", align 1
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_set_ciphersuite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_set_ciphersuite(i32 %0) #0 {
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
  %11 = load i32, i32* @cert, align 4
  %12 = load i32, i32* @privkey, align 4
  %13 = call i32 @create_ssl_ctx_pair(i32 %8, i32 %9, i32 %10, i32 0, i32** %4, i32** %3, i32 %11, i32 %12)
  %14 = call i32 @TEST_true(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @SSL_CTX_set_ciphersuites(i32* %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @TEST_true(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %124

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = icmp sge i32 %23, 4
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = icmp sle i32 %26, 7
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @SSL_CTX_set_cipher_list(i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @TEST_true(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %124

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %25, %22
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %48

41:                                               ; preds = %38, %35
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @SSL_CTX_set_ciphersuites(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @TEST_true(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %124

47:                                               ; preds = %41
  br label %62

48:                                               ; preds = %38
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %54, label %61

54:                                               ; preds = %51, %48
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @SSL_CTX_set_ciphersuites(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 @TEST_true(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %124

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @create_ssl_objects(i32* %63, i32* %64, i32** %6, i32** %5, i32* null, i32* null)
  %66 = call i32 @TEST_true(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %124

69:                                               ; preds = %62
  %70 = load i32, i32* %2, align 4
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %2, align 4
  %74 = icmp eq i32 %73, 9
  br i1 %74, label %75, label %82

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @SSL_set_cipher_list(i32* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 @TEST_true(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %124

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %72
  %83 = load i32, i32* %2, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %2, align 4
  %87 = icmp eq i32 %86, 6
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %2, align 4
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %91, label %98

91:                                               ; preds = %88, %85, %82
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @SSL_set_ciphersuites(i32* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %94 = call i32 @TEST_true(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %124

97:                                               ; preds = %91
  br label %115

98:                                               ; preds = %88
  %99 = load i32, i32* %2, align 4
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %2, align 4
  %103 = icmp eq i32 %102, 7
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %2, align 4
  %106 = icmp eq i32 %105, 9
  br i1 %106, label %107, label %114

107:                                              ; preds = %104, %101, %98
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @SSL_set_ciphersuites(i32* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %110 = call i32 @TEST_true(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %124

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %104
  br label %115

115:                                              ; preds = %114, %97
  %116 = load i32*, i32** %6, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* @SSL_ERROR_NONE, align 4
  %119 = call i32 @create_ssl_connection(i32* %116, i32* %117, i32 %118)
  %120 = call i32 @TEST_true(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  br label %124

123:                                              ; preds = %115
  store i32 1, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %122, %112, %96, %80, %68, %59, %46, %33, %21
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @SSL_free(i32* %125)
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @SSL_free(i32* %127)
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @SSL_CTX_free(i32* %129)
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @SSL_CTX_free(i32* %131)
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_ciphersuites(i32*, i8*) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @SSL_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @SSL_set_ciphersuites(i32*, i8*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
