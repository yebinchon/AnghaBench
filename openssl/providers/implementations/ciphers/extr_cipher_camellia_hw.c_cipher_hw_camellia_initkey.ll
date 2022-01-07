; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_camellia_hw.c_cipher_hw_camellia_initkey.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_camellia_hw.c_cipher_hw_camellia_initkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i8*, i64, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ERR_LIB_PROV = common dso_local global i32 0, align 4
@EVP_R_ARIA_KEY_SETUP_FAILED = common dso_local global i32 0, align 4
@EVP_CIPH_ECB_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_CBC_MODE = common dso_local global i32 0, align 4
@Camellia_encrypt = common dso_local global i64 0, align 8
@Camellia_cbc_encrypt = common dso_local global i64 0, align 8
@Camellia_decrypt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64)* @cipher_hw_camellia_initkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_hw_camellia_initkey(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = bitcast %struct.TYPE_8__* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  store i32* %20, i32** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = mul i64 %24, 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @Camellia_set_key(i8* %23, i64 %25, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @ERR_LIB_PROV, align 4
  %32 = load i32, i32* @EVP_R_ARIA_KEY_SETUP_FAILED, align 4
  %33 = call i32 @ERR_raise(i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %82

34:                                               ; preds = %3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @EVP_CIPH_ECB_MODE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @EVP_CIPH_CBC_MODE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43, %34
  %48 = load i64, i64* @Camellia_encrypt, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @EVP_CIPH_CBC_MODE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i64, i64* @Camellia_cbc_encrypt, align 8
  %57 = inttoptr i64 %56 to i32*
  br label %59

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32* [ %57, %55 ], [ null, %58 ]
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32* %60, i32** %63, align 8
  br label %81

64:                                               ; preds = %43, %39
  %65 = load i64, i64* @Camellia_decrypt, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @EVP_CIPH_CBC_MODE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i64, i64* @Camellia_cbc_encrypt, align 8
  %74 = inttoptr i64 %73 to i32*
  br label %76

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi i32* [ %74, %72 ], [ null, %75 ]
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32* %77, i32** %80, align 8
  br label %81

81:                                               ; preds = %76, %59
  store i32 1, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @Camellia_set_key(i8*, i64, i32*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
