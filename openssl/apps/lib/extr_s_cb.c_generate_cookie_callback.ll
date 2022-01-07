; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_generate_cookie_callback.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_generate_cookie_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cookie_initialized = common dso_local global i32 0, align 4
@cookie_secret = common dso_local global i32 0, align 4
@COOKIE_SECRET_LENGTH = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"error setting random cookie secret\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"memory full\0A\00", align 1
@ourpeer = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed getting peer address\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"cookie generate buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generate_cookie_callback(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %9, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* @cookie_initialized, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @cookie_secret, align 4
  %17 = load i32, i32* @COOKIE_SECRET_LENGTH, align 4
  %18 = call i64 @RAND_bytes(i32 %16, i32 %17)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @bio_err, align 4
  %22 = call i32 @BIO_printf(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %78

23:                                               ; preds = %15
  store i32 1, i32* @cookie_initialized, align 4
  br label %24

24:                                               ; preds = %23, %3
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @SSL_is_dtls(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = call i32* (...) @BIO_ADDR_new()
  store i32* %29, i32** %12, align 8
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @bio_err, align 4
  %34 = call i32 @BIO_printf(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %78

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @SSL_get_rbio(i32* %36)
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @BIO_dgram_get_peer(i32 %37, i32* %38)
  br label %42

40:                                               ; preds = %24
  %41 = load i32*, i32** @ourpeer, align 8
  store i32* %41, i32** %12, align 8
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @BIO_ADDR_rawaddress(i32* %43, i8* null, i64* %9)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @bio_err, align 4
  %48 = call i32 @BIO_printf(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %78

49:                                               ; preds = %42
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @OPENSSL_assert(i32 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = call zeroext i16 @BIO_ADDR_rawport(i32* %54)
  store i16 %55, i16* %10, align 2
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 2
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i8* @app_malloc(i64 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @memcpy(i8* %60, i16* %10, i32 2)
  %62 = load i32*, i32** %12, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = call i32 @BIO_ADDR_rawaddress(i32* %62, i8* %64, i64* null)
  %66 = call i32 (...) @EVP_sha1()
  %67 = load i32, i32* @cookie_secret, align 4
  %68 = load i32, i32* @COOKIE_SECRET_LENGTH, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @HMAC(i32 %66, i32 %67, i32 %68, i8* %69, i64 %70, i8* %71, i32* %72)
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @OPENSSL_free(i8* %74)
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @BIO_ADDR_free(i32* %76)
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %49, %46, %32, %20
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @RAND_bytes(i32, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i64 @SSL_is_dtls(i32*) #1

declare dso_local i32* @BIO_ADDR_new(...) #1

declare dso_local i32 @BIO_dgram_get_peer(i32, i32*) #1

declare dso_local i32 @SSL_get_rbio(i32*) #1

declare dso_local i32 @BIO_ADDR_rawaddress(i32*, i8*, i64*) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local zeroext i16 @BIO_ADDR_rawport(i32*) #1

declare dso_local i8* @app_malloc(i64, i8*) #1

declare dso_local i32 @memcpy(i8*, i16*, i32) #1

declare dso_local i32 @HMAC(i32, i32, i32, i8*, i64, i8*, i32*) #1

declare dso_local i32 @EVP_sha1(...) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIO_ADDR_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
