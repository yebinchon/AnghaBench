; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_fatalerrtest.c_test_fatalerr.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_fatalerrtest.c_test_fatalerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Dummy\00", align 1
@__const.test_fatalerr.dummyrec = private unnamed_addr constant [10 x i8] c"\17\03\03\00\05Dummy", align 1
@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"AES128-SHA\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"AES256-SHA\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"TLS_AES_128_GCM_SHA256\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"TLS_AES_256_GCM_SHA384\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unexpected NULL bio received\0A\00", align 1
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Unexpected success reading data: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_fatalerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_fatalerr() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  %10 = alloca [10 x i8], align 1
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = bitcast [10 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_fatalerr.dummyrec, i32 0, i32 0), i64 10, i1 false)
  %12 = call i32 (...) @TLS_method()
  %13 = call i32 (...) @TLS_method()
  %14 = load i32, i32* @TLS1_VERSION, align 4
  %15 = load i32, i32* @cert, align 4
  %16 = load i32, i32* @privkey, align 4
  %17 = call i32 @create_ssl_ctx_pair(i32 %12, i32 %13, i32 %14, i32 0, i32** %1, i32** %2, i32 %15, i32 %16)
  %18 = call i32 @TEST_true(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  br label %94

21:                                               ; preds = %0
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @SSL_CTX_set_cipher_list(i32* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @TEST_true(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @SSL_CTX_set_cipher_list(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @TEST_true(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @SSL_CTX_set_ciphersuites(i32* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @TEST_true(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @SSL_CTX_set_ciphersuites(i32* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %39 = call i32 @TEST_true(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32*, i32** %1, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @create_ssl_objects(i32* %42, i32* %43, i32** %3, i32** %4, i32* null, i32* null)
  %45 = call i32 @TEST_true(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41, %36, %31, %26, %21
  br label %94

48:                                               ; preds = %41
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @SSL_get_wbio(i32* %49)
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @TEST_ptr(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %94

56:                                               ; preds = %48
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @SSL_ERROR_NONE, align 4
  %60 = call i32 @create_ssl_connection(i32* %57, i32* %58, i32 %59)
  %61 = call i32 @TEST_false(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %94

64:                                               ; preds = %56
  %65 = call i32 (...) @ERR_clear_error()
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %68 = call i32 @BIO_write(i32* %66, i8* %67, i32 10)
  %69 = call i32 @TEST_int_gt(i32 %68, i32 0)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %94

72:                                               ; preds = %64
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %75 = call i32 @SSL_read(i32* %73, i8* %74, i32 79)
  store i32 %75, i32* %8, align 4
  %76 = call i32 @TEST_int_le(i32 %75, i32 0)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 %80
  store i8 0, i8* %81, align 1
  %82 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %83 = call i32 @TEST_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %82)
  br label %94

84:                                               ; preds = %72
  %85 = load i32*, i32** %3, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = call i32 @SSL_write(i32* %85, i8* %86, i32 %88)
  %90 = call i32 @TEST_int_le(i32 %89, i32 0)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  br label %94

93:                                               ; preds = %84
  store i32 1, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %92, %78, %71, %63, %54, %47, %20
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @SSL_free(i32* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @SSL_free(i32* %97)
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @SSL_CTX_free(i32* %99)
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @SSL_CTX_free(i32* %101)
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #2

declare dso_local i32 @TLS_method(...) #2

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i8*) #2

declare dso_local i32 @SSL_CTX_set_ciphersuites(i32*, i8*) #2

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #2

declare dso_local i32* @SSL_get_wbio(i32*) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @TEST_false(i32) #2

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #2

declare dso_local i32 @ERR_clear_error(...) #2

declare dso_local i32 @TEST_int_gt(i32, i32) #2

declare dso_local i32 @BIO_write(i32*, i8*, i32) #2

declare dso_local i32 @TEST_int_le(i32, i32) #2

declare dso_local i32 @SSL_read(i32*, i8*, i32) #2

declare dso_local i32 @TEST_error(i8*, i8*) #2

declare dso_local i32 @SSL_write(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @SSL_free(i32*) #2

declare dso_local i32 @SSL_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
