; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_client.c_psk_use_session_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_client.c_psk_use_session_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@psksess = common dso_local global i32* null, align 8
@psk_key = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not convert PSK key '%s' to buffer\0A\00", align 1
@tls13_aes128gcmsha256_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error finding suitable ciphersuite\0A\00", align 1
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@psk_identity = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, i64*, i32**)* @psk_use_session_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psk_use_session_cb(i32* %0, i32* %1, i8** %2, i64* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %16 = load i32*, i32** @psksess, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32*, i32** @psksess, align 8
  %20 = call i32 @SSL_SESSION_up_ref(i32* %19)
  %21 = load i32*, i32** @psksess, align 8
  store i32* %21, i32** %12, align 8
  br label %68

22:                                               ; preds = %5
  %23 = load i32, i32* @psk_key, align 4
  %24 = call i8* @OPENSSL_hexstr2buf(i32 %23, i64* %14)
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @bio_err, align 4
  %29 = load i32, i32* @psk_key, align 4
  %30 = call i32 (i32, i8*, ...) @BIO_printf(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %6, align 4
  br label %101

31:                                               ; preds = %22
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @tls13_aes128gcmsha256_id, align 4
  %34 = call i32* @SSL_CIPHER_find(i32* %32, i32 %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* @bio_err, align 4
  %39 = call i32 (i32, i8*, ...) @BIO_printf(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i8*, i8** %15, align 8
  %41 = call i32 @OPENSSL_free(i8* %40)
  store i32 0, i32* %6, align 4
  br label %101

42:                                               ; preds = %31
  %43 = call i32* (...) @SSL_SESSION_new()
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %12, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @SSL_SESSION_set1_master_key(i32* %47, i8* %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @SSL_SESSION_set_cipher(i32* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* @TLS1_3_VERSION, align 4
  %60 = call i32 @SSL_SESSION_set_protocol_version(i32* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57, %52, %46, %42
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 @OPENSSL_free(i8* %63)
  br label %98

65:                                               ; preds = %57
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 @OPENSSL_free(i8* %66)
  br label %68

68:                                               ; preds = %65, %18
  %69 = load i32*, i32** %12, align 8
  %70 = call i32* @SSL_SESSION_get0_cipher(i32* %69)
  store i32* %70, i32** %13, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %98

74:                                               ; preds = %68
  %75 = load i32*, i32** %8, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i32*, i32** %13, align 8
  %79 = call i32* @SSL_CIPHER_get_handshake_digest(i32* %78)
  %80 = load i32*, i32** %8, align 8
  %81 = icmp ne i32* %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i8**, i8*** %9, align 8
  store i8* null, i8** %83, align 8
  %84 = load i64*, i64** %10, align 8
  store i64 0, i64* %84, align 8
  %85 = load i32**, i32*** %11, align 8
  store i32* null, i32** %85, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @SSL_SESSION_free(i32* %86)
  br label %97

88:                                               ; preds = %77, %74
  %89 = load i32*, i32** %12, align 8
  %90 = load i32**, i32*** %11, align 8
  store i32* %89, i32** %90, align 8
  %91 = load i64, i64* @psk_identity, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load i8**, i8*** %9, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i64, i64* @psk_identity, align 8
  %95 = call i64 @strlen(i64 %94)
  %96 = load i64*, i64** %10, align 8
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %88, %82
  store i32 1, i32* %6, align 4
  br label %101

98:                                               ; preds = %73, %62
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @SSL_SESSION_free(i32* %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %98, %97, %37, %27
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @SSL_SESSION_up_ref(i32*) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i32, i64*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32* @SSL_CIPHER_find(i32*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32* @SSL_SESSION_new(...) #1

declare dso_local i32 @SSL_SESSION_set1_master_key(i32*, i8*, i64) #1

declare dso_local i32 @SSL_SESSION_set_cipher(i32*, i32*) #1

declare dso_local i32 @SSL_SESSION_set_protocol_version(i32*, i32) #1

declare dso_local i32* @SSL_SESSION_get0_cipher(i32*) #1

declare dso_local i32* @SSL_CIPHER_get_handshake_digest(i32*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
