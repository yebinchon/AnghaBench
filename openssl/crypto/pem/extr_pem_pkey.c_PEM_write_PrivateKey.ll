; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_pkey.c_PEM_write_PrivateKey.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_pkey.c_PEM_write_PrivateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_NOCLOSE = common dso_local global i32 0, align 4
@PEM_F_PEM_WRITE_PRIVATEKEY = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PEM_write_PrivateKey(i32* %0, i32* %1, i32* %2, i8* %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* @BIO_NOCLOSE, align 4
  %20 = call i32* @BIO_new_fp(i32* %18, i32 %19)
  store i32* %20, i32** %16, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load i32, i32* @PEM_F_PEM_WRITE_PRIVATEKEY, align 4
  %24 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %25 = call i32 @PEMerr(i32 %23, i32 %24)
  store i32 0, i32* %8, align 4
  br label %38

26:                                               ; preds = %7
  %27 = load i32*, i32** %16, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = call i32 @PEM_write_bio_PrivateKey(i32* %27, i32* %28, i32* %29, i8* %30, i32 %31, i32* %32, i8* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32*, i32** %16, align 8
  %36 = call i32 @BIO_free(i32* %35)
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %26, %22
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32* @BIO_new_fp(i32*, i32) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @PEM_write_bio_PrivateKey(i32*, i32*, i32*, i8*, i32, i32*, i8*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
