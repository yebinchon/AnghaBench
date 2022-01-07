; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_lib.c_PEM_ASN1_write.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_lib.c_PEM_ASN1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEM_F_PEM_ASN1_WRITE = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PEM_ASN1_write(i32* %0, i8* %1, i32* %2, i8* %3, i32* %4, i8* %5, i32 %6, i32* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32* %4, i32** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i8* %8, i8** %19, align 8
  %22 = call i32 (...) @BIO_s_file()
  %23 = call i32* @BIO_new(i32 %22)
  store i32* %23, i32** %20, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %9
  %26 = load i32, i32* @PEM_F_PEM_ASN1_WRITE, align 4
  %27 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %28 = call i32 @PEMerr(i32 %26, i32 %27)
  store i32 0, i32* %10, align 4
  br label %47

29:                                               ; preds = %9
  %30 = load i32*, i32** %20, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* @BIO_NOCLOSE, align 4
  %33 = call i32 @BIO_set_fp(i32* %30, i32* %31, i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load i32, i32* %17, align 4
  %41 = load i32*, i32** %18, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = call i32 @PEM_ASN1_write_bio(i32* %34, i8* %35, i32* %36, i8* %37, i32* %38, i8* %39, i32 %40, i32* %41, i8* %42)
  store i32 %43, i32* %21, align 4
  %44 = load i32*, i32** %20, align 8
  %45 = call i32 @BIO_free(i32* %44)
  %46 = load i32, i32* %21, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %29, %25
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_file(...) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @BIO_set_fp(i32*, i32*, i32) #1

declare dso_local i32 @PEM_ASN1_write_bio(i32*, i8*, i32*, i8*, i32*, i8*, i32, i32*, i8*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
