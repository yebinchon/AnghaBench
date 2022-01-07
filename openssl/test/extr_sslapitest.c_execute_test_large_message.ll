; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_execute_test_large_message.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_execute_test_large_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cert = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@privkey = common dso_local global i32 0, align 4
@NUM_EXTRA_CERTS = common dso_local global i32 0, align 4
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32)* @execute_test_large_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_test_large_message(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %20 = load i32, i32* @cert, align 4
  %21 = call i32* @BIO_new_file(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %17, align 8
  %22 = call i32 @TEST_ptr(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  br label %105

25:                                               ; preds = %5
  %26 = load i32*, i32** %17, align 8
  %27 = call i32* @PEM_read_bio_X509(i32* %26, i32* null, i32* null, i32* null)
  store i32* %27, i32** %18, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = call i32 @BIO_free(i32* %28)
  store i32* null, i32** %17, align 8
  %30 = load i32*, i32** %18, align 8
  %31 = call i32 @TEST_ptr(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %105

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @cert, align 4
  %40 = load i32, i32* @privkey, align 4
  %41 = call i32 @create_ssl_ctx_pair(i32* %35, i32* %36, i32 %37, i32 %38, i32** %12, i32** %11, i32 %39, i32 %40)
  %42 = call i32 @TEST_true(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %105

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @SSL_CTX_set_read_ahead(i32* %49, i32 1)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32*, i32** %18, align 8
  %53 = call i32 @i2d_X509(i32* %52, i32* null)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* @NUM_EXTRA_CERTS, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* @SSL3_RT_MAX_PLAIN_LENGTH, align 4
  %58 = mul nsw i32 %57, 4
  %59 = sdiv i32 %58, 3
  %60 = icmp sgt i32 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @OPENSSL_assert(i32 %61)
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %81, %51
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @NUM_EXTRA_CERTS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load i32*, i32** %18, align 8
  %69 = call i32 @X509_up_ref(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %105

72:                                               ; preds = %67
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %18, align 8
  %75 = call i32 @SSL_CTX_add_extra_chain_cert(i32* %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %18, align 8
  %79 = call i32 @X509_free(i32* %78)
  br label %105

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %63

84:                                               ; preds = %63
  %85 = load i32*, i32** %12, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @create_ssl_objects(i32* %85, i32* %86, i32** %14, i32** %13, i32* null, i32* null)
  %88 = call i32 @TEST_true(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i32*, i32** %14, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* @SSL_ERROR_NONE, align 4
  %94 = call i32 @create_ssl_connection(i32* %91, i32* %92, i32 %93)
  %95 = call i32 @TEST_true(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90, %84
  br label %105

98:                                               ; preds = %90
  %99 = load i32*, i32** %14, align 8
  %100 = call i32 @SSL_clear(i32* %99)
  %101 = call i32 @TEST_true(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %105

104:                                              ; preds = %98
  store i32 1, i32* %15, align 4
  br label %105

105:                                              ; preds = %104, %103, %97, %77, %71, %44, %33, %24
  %106 = load i32*, i32** %18, align 8
  %107 = call i32 @X509_free(i32* %106)
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @SSL_free(i32* %108)
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @SSL_free(i32* %110)
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @SSL_CTX_free(i32* %112)
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @SSL_CTX_free(i32* %114)
  %116 = load i32, i32* %15, align 4
  ret i32 %116
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BIO_new_file(i32, i8*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32*, i32*, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @SSL_CTX_set_read_ahead(i32*, i32) #1

declare dso_local i32 @i2d_X509(i32*, i32*) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @X509_up_ref(i32*) #1

declare dso_local i32 @SSL_CTX_add_extra_chain_cert(i32*, i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @SSL_clear(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
