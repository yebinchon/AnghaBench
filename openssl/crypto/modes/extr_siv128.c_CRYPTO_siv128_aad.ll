; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_siv128.c_CRYPTO_siv128_aad.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_siv128.c_CRYPTO_siv128_aad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SIV_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_siv128_aad(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* @SIV_LEN, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i32 @siv128_dbl(i32* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @EVP_MAC_CTX_dup(i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %3
  %21 = load i32*, i32** %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @EVP_MAC_update(i32* %21, i8* %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @EVP_MAC_final(i32* %27, i32 %29, i64* %9, i32 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @SIV_LEN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %26, %20, %3
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @EVP_MAC_CTX_free(i32* %37)
  store i32 0, i32* %4, align 4
  br label %45

39:                                               ; preds = %32
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @EVP_MAC_CTX_free(i32* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @siv128_xorblock(i32* %43, %struct.TYPE_5__* %8)
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @siv128_dbl(i32*) #1

declare dso_local i32* @EVP_MAC_CTX_dup(i32) #1

declare dso_local i32 @EVP_MAC_update(i32*, i8*, i64) #1

declare dso_local i32 @EVP_MAC_final(i32*, i32, i64*, i32) #1

declare dso_local i32 @EVP_MAC_CTX_free(i32*) #1

declare dso_local i32 @siv128_xorblock(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
