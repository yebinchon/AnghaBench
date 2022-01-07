; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common_hw.c_cipher_hw_generic_cfb1.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_common_hw.c_cipher_hw_generic_cfb1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@EVP_CIPH_FLAG_LENGTH_BITS = common dso_local global i32 0, align 4
@MAXBITCHUNK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_hw_generic_cfb1(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EVP_CIPH_FLAG_LENGTH_BITS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CRYPTO_cfb128_1_encrypt(i8* %21, i8* %22, i64 %23, i32 %26, i32 %29, i32* %10, i32 %32, i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 1, i32* %5, align 4
  br label %97

40:                                               ; preds = %4
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @MAXBITCHUNK, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* @MAXBITCHUNK, align 8
  %49 = mul i64 %48, 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CRYPTO_cfb128_1_encrypt(i8* %46, i8* %47, i64 %49, i32 %52, i32 %55, i32* %10, i32 %58, i32 %61)
  %63 = load i64, i64* @MAXBITCHUNK, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* @MAXBITCHUNK, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %7, align 8
  %69 = load i64, i64* @MAXBITCHUNK, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %8, align 8
  br label %41

72:                                               ; preds = %41
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = mul i64 %78, 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @CRYPTO_cfb128_1_encrypt(i8* %76, i8* %77, i64 %79, i32 %82, i32 %85, i32* %10, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %75, %72
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  store i32 1, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %20
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @CRYPTO_cfb128_1_encrypt(i8*, i8*, i64, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
