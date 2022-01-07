; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_sign.c_PEM_SignFinal.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_sign.c_PEM_SignFinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEM_F_PEM_SIGNFINAL = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PEM_SignFinal(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @EVP_PKEY_size(i32* %13)
  %15 = call i8* @OPENSSL_malloc(i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @PEM_F_PEM_SIGNFINAL, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @PEMerr(i32 %19, i32 %20)
  br label %36

22:                                               ; preds = %4
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @EVP_SignFinal(i32* %23, i8* %24, i32* %12, i32* %25)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %36

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @EVP_EncodeBlock(i8* %30, i8* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  store i32 1, i32* %11, align 4
  br label %36

36:                                               ; preds = %29, %28, %18
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @OPENSSL_free(i8* %37)
  %39 = load i32, i32* %11, align 4
  ret i32 %39
}

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @EVP_PKEY_size(i32*) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i64 @EVP_SignFinal(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @EVP_EncodeBlock(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
