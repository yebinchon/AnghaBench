; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_xts.c_aes_xts_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_aes_xts.c_aes_xts_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__, i32 (i8*, i8*, i64, i32*, i32*, i32)* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32* }

@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@XTS_MAX_BLOCKS_PER_DATA_UNIT = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_XTS_DATA_UNIT_IS_TOO_LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64*, i64, i8*, i64)* @aes_xts_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_xts_cipher(i8* %0, i8* %1, i64* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %14, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %6
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i8*, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %12, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %37, %34, %28, %22, %6
  store i32 0, i32* %7, align 4
  br label %101

45:                                               ; preds = %40
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @XTS_MAX_BLOCKS_PER_DATA_UNIT, align 8
  %48 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %49 = mul i64 %47, %48
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @ERR_LIB_PROV, align 4
  %53 = load i32, i32* @PROV_R_XTS_DATA_UNIT_IS_TOO_LARGE, align 4
  %54 = call i32 @ERR_raise(i32 %52, i32 %53)
  store i32 0, i32* %7, align 4
  br label %101

55:                                               ; preds = %45
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32 (i8*, i8*, i64, i32*, i32*, i32)*, i32 (i8*, i8*, i64, i32*, i32*, i32)** %57, align 8
  %59 = icmp ne i32 (i8*, i8*, i64, i32*, i32*, i32)* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32 (i8*, i8*, i64, i32*, i32*, i32)*, i32 (i8*, i8*, i64, i32*, i32*, i32)** %62, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 %63(i8* %64, i8* %65, i64 %66, i32* %70, i32* %74, i32 %78)
  br label %98

80:                                               ; preds = %55
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %12, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @CRYPTO_xts128_encrypt(%struct.TYPE_6__* %82, i32 %86, i8* %87, i8* %88, i64 %89, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %101

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97, %60
  %99 = load i64, i64* %13, align 8
  %100 = load i64*, i64** %10, align 8
  store i64 %99, i64* %100, align 8
  store i32 1, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %96, %51, %44
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i64 @CRYPTO_xts128_encrypt(%struct.TYPE_6__*, i32, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
