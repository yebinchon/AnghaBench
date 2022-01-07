; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_cipher_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_cipher_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipher_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@COP_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @cipher_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_ctrl(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cipher_ctx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cipher_ctx*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @EVP_CIPHER_CTX_get_cipher_data(i32* %13)
  %15 = inttoptr i64 %14 to %struct.cipher_ctx*
  store %struct.cipher_ctx* %15, %struct.cipher_ctx** %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %49 [
    i32 129, label %19
    i32 128, label %45
  ]

19:                                               ; preds = %4
  %20 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %21 = icmp eq %struct.cipher_ctx* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %51

23:                                               ; preds = %19
  %24 = load i32*, i32** %11, align 8
  %25 = call i64 @EVP_CIPHER_CTX_get_cipher_data(i32* %24)
  %26 = inttoptr i64 %25 to %struct.cipher_ctx*
  store %struct.cipher_ctx* %26, %struct.cipher_ctx** %12, align 8
  %27 = load %struct.cipher_ctx*, %struct.cipher_ctx** %12, align 8
  %28 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %27, i32 0, i32 0
  %29 = call i32 @memset(%struct.TYPE_2__* %28, i32 0, i32 8)
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @EVP_CIPHER_CTX_iv(i32* %36)
  %38 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @COP_ENCRYPT, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @cipher_init(i32* %30, i8* %35, i32 %37, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %51

45:                                               ; preds = %4
  %46 = load %struct.cipher_ctx*, %struct.cipher_ctx** %10, align 8
  %47 = getelementptr inbounds %struct.cipher_ctx, %struct.cipher_ctx* %46, i32 0, i32 0
  %48 = call i32 @memset(%struct.TYPE_2__* %47, i32 0, i32 8)
  store i32 1, i32* %5, align 4
  br label %51

49:                                               ; preds = %4
  br label %50

50:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %45, %23, %22
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @EVP_CIPHER_CTX_get_cipher_data(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @cipher_init(i32*, i8*, i32, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_iv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
