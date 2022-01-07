; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm_hw.c_ccm_generic_auth_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm_hw.c_ccm_generic_auth_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccm_generic_auth_decrypt(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %6
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @CRYPTO_ccm128_decrypt_ccm64(i32* %21, i8* %22, i8* %23, i64 %24, i32* %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %13, align 4
  br label %40

31:                                               ; preds = %6
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @CRYPTO_ccm128_decrypt(i32* %33, i8* %34, i8* %35, i64 %36)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %31, %19
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @CRYPTO_ccm128_tag(i32* %45, i8* %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %52 = load i8*, i8** %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @CRYPTO_memcmp(i8* %51, i8* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %43
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %56, %50
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @OPENSSL_cleanse(i8* %62, i64 %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %13, align 4
  ret i32 %66
}

declare dso_local i64 @CRYPTO_ccm128_decrypt_ccm64(i32*, i8*, i8*, i64, i32*) #1

declare dso_local i64 @CRYPTO_ccm128_decrypt(i32*, i8*, i8*, i64) #1

declare dso_local i32 @CRYPTO_ccm128_tag(i32*, i8*, i64) #1

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
