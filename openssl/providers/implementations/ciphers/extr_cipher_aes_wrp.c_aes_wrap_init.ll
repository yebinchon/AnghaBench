; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_wrp.c_aes_wrap_init.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_wrp.c_aes_wrap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@AES_encrypt = common dso_local global i64 0, align 8
@AES_decrypt = common dso_local global i64 0, align 8
@CRYPTO_128_wrap_pad = common dso_local global i32 0, align 4
@CRYPTO_128_unwrap_pad = common dso_local global i32 0, align 4
@CRYPTO_128_wrap = common dso_local global i32 0, align 4
@CRYPTO_128_unwrap = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64, i32)* @aes_wrap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_wrap_init(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %14, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %15, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i64, i64* @AES_encrypt, align 8
  %27 = trunc i64 %26 to i32
  br label %31

28:                                               ; preds = %6
  %29 = load i64, i64* @AES_decrypt, align 8
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ %27, %25 ], [ %30, %28 ]
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @CRYPTO_128_wrap_pad, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @CRYPTO_128_unwrap_pad, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %61

50:                                               ; preds = %31
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @CRYPTO_128_wrap, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @CRYPTO_128_unwrap, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %46
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @cipher_generic_initiv(%struct.TYPE_6__* %65, i8* %66, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %108

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %107

75:                                               ; preds = %72
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @ERR_LIB_PROV, align 4
  %83 = load i32, i32* @PROV_R_INVALID_KEY_LENGTH, align 4
  %84 = call i32 @ERR_raise(i32 %82, i32 %83)
  store i32 0, i32* %7, align 4
  br label %108

85:                                               ; preds = %75
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = mul i64 %92, 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = call i32 @AES_set_encrypt_key(i8* %91, i64 %93, i32* %96)
  br label %106

98:                                               ; preds = %85
  %99 = load i8*, i8** %9, align 8
  %100 = load i64, i64* %10, align 8
  %101 = mul i64 %100, 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = call i32 @AES_set_decrypt_key(i8* %99, i64 %101, i32* %104)
  br label %106

106:                                              ; preds = %98, %90
  br label %107

107:                                              ; preds = %106, %72
  store i32 1, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %81, %70
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @cipher_generic_initiv(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @AES_set_encrypt_key(i8*, i64, i32*) #1

declare dso_local i32 @AES_set_decrypt_key(i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
