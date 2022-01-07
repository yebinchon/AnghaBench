; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_ED25519_sign.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_ED25519_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ED25519_sign(i32* %0, i32* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %27 = call i32 @SHA512_Init(i32* %16)
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @SHA512_Update(i32* %16, i32* %28, i64 32)
  %30 = call i32 @SHA512_Final(i32* %20, i32* %16)
  %31 = getelementptr inbounds i32, i32* %20, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = and i32 %32, 248
  store i32 %33, i32* %31, align 16
  %34 = getelementptr inbounds i32, i32* %20, i64 31
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 63
  store i32 %36, i32* %34, align 4
  %37 = getelementptr inbounds i32, i32* %20, i64 31
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, 64
  store i32 %39, i32* %37, align 4
  %40 = call i32 @SHA512_Init(i32* %16)
  %41 = getelementptr inbounds i32, i32* %20, i64 32
  %42 = call i32 @SHA512_Update(i32* %16, i32* %41, i64 32)
  %43 = load i32*, i32** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @SHA512_Update(i32* %16, i32* %43, i64 %44)
  %46 = call i32 @SHA512_Final(i32* %23, i32* %16)
  %47 = call i32 @x25519_sc_reduce(i32* %23)
  %48 = call i32 @ge_scalarmult_base(i32* %14, i32* %23)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @ge_p3_tobytes(i32* %49, i32* %14)
  %51 = call i32 @SHA512_Init(i32* %16)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @SHA512_Update(i32* %16, i32* %52, i64 32)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @SHA512_Update(i32* %16, i32* %54, i64 32)
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @SHA512_Update(i32* %16, i32* %56, i64 %57)
  %59 = call i32 @SHA512_Final(i32* %26, i32* %16)
  %60 = call i32 @x25519_sc_reduce(i32* %26)
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 32
  %63 = call i32 @sc_muladd(i32* %62, i32* %26, i32* %20, i32* %23)
  %64 = call i32 @OPENSSL_cleanse(i32* %16, i32 4)
  %65 = mul nuw i64 4, %22
  %66 = trunc i64 %65 to i32
  %67 = call i32 @OPENSSL_cleanse(i32* %23, i32 %66)
  %68 = mul nuw i64 4, %18
  %69 = trunc i64 %68 to i32
  %70 = call i32 @OPENSSL_cleanse(i32* %20, i32 %69)
  %71 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %71)
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SHA512_Init(i32*) #2

declare dso_local i32 @SHA512_Update(i32*, i32*, i64) #2

declare dso_local i32 @SHA512_Final(i32*, i32*) #2

declare dso_local i32 @x25519_sc_reduce(i32*) #2

declare dso_local i32 @ge_scalarmult_base(i32*, i32*) #2

declare dso_local i32 @ge_p3_tobytes(i32*, i32*) #2

declare dso_local i32 @sc_muladd(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
