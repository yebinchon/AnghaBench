; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_hw.c_cipher_hw_aes_initkey.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_hw.c_cipher_hw_aes_initkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i8*, i32, i32* }
%struct.TYPE_7__ = type { i8*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EVP_CIPH_ECB_MODE = common dso_local global i64 0, align 8
@EVP_CIPH_CBC_MODE = common dso_local global i64 0, align 8
@AES_decrypt = common dso_local global i64 0, align 8
@AES_cbc_encrypt = common dso_local global i64 0, align 8
@AES_encrypt = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_AES_KEY_SETUP_FAILED = common dso_local global i32 0, align 4
@AES_ctr32_encrypt = common dso_local global i64 0, align 8
@BSAES_CAPABLE = common dso_local global i64 0, align 8
@EVP_CIPH_CTR_MODE = common dso_local global i64 0, align 8
@HWAES_CAPABLE = common dso_local global i64 0, align 8
@HWAES_cbc_encrypt = common dso_local global i64 0, align 8
@HWAES_ctr32_encrypt_blocks = common dso_local global i64 0, align 8
@HWAES_decrypt = common dso_local global i64 0, align 8
@HWAES_encrypt = common dso_local global i64 0, align 8
@VPAES_CAPABLE = common dso_local global i64 0, align 8
@bsaes_cbc_encrypt = common dso_local global i64 0, align 8
@bsaes_ctr32_encrypt_blocks = common dso_local global i64 0, align 8
@vpaes_cbc_encrypt = common dso_local global i64 0, align 8
@vpaes_decrypt = common dso_local global i64 0, align 8
@vpaes_encrypt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64)* @cipher_hw_aes_initkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_hw_aes_initkey(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = bitcast %struct.TYPE_8__* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EVP_CIPH_ECB_MODE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24, %3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %59, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = mul i64 %37, 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @AES_set_decrypt_key(i8* %36, i64 %38, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* @AES_decrypt, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load i64, i64* @AES_cbc_encrypt, align 8
  %52 = inttoptr i64 %51 to i32*
  br label %54

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32* [ %52, %50 ], [ null, %53 ]
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32* %55, i32** %58, align 8
  br label %83

59:                                               ; preds = %30, %24
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = mul i64 %61, 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @AES_set_encrypt_key(i8* %60, i64 %62, i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i64, i64* @AES_encrypt, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %59
  %75 = load i64, i64* @AES_cbc_encrypt, align 8
  %76 = inttoptr i64 %75 to i32*
  br label %78

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32* [ %76, %74 ], [ null, %77 ]
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32* %79, i32** %82, align 8
  br label %83

83:                                               ; preds = %78, %54
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @ERR_LIB_PROV, align 4
  %88 = load i32, i32* @PROV_R_AES_KEY_SETUP_FAILED, align 4
  %89 = call i32 @ERR_raise(i32 %87, i32 %88)
  store i32 0, i32* %4, align 4
  br label %91

90:                                               ; preds = %83
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %86
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @AES_set_decrypt_key(i8*, i64, i32*) #1

declare dso_local i32 @AES_set_encrypt_key(i8*, i64, i32*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
