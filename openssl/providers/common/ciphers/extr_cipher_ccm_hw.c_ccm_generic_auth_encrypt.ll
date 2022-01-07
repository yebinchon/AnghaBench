; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm_hw.c_ccm_generic_auth_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/ciphers/extr_cipher_ccm_hw.c_ccm_generic_auth_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccm_generic_auth_encrypt(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @CRYPTO_ccm128_encrypt_ccm64(i32* %20, i8* %21, i8* %22, i64 %23, i32* %26)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %13, align 4
  br label %39

30:                                               ; preds = %6
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @CRYPTO_ccm128_encrypt(i32* %32, i8* %33, i8* %34, i64 %35)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %30, %18
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i64 @CRYPTO_ccm128_tag(i32* %47, i8* %48, i64 %49)
  %51 = icmp sgt i64 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %45, %42, %39
  %54 = load i32, i32* %13, align 4
  ret i32 %54
}

declare dso_local i64 @CRYPTO_ccm128_encrypt_ccm64(i32*, i8*, i8*, i64, i32*) #1

declare dso_local i64 @CRYPTO_ccm128_encrypt(i32*, i8*, i8*, i64) #1

declare dso_local i64 @CRYPTO_ccm128_tag(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
