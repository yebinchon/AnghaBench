; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509spki.c_NETSCAPE_SPKI_b64_decode.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509spki.c_NETSCAPE_SPKI_b64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_F_NETSCAPE_SPKI_B64_DECODE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@X509_R_BASE64_DECODE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NETSCAPE_SPKI_b64_decode(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i8* @OPENSSL_malloc(i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @X509_F_NETSCAPE_SPKI_B64_DECODE, align 4
  %22 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %23 = call i32 @X509err(i32 %21, i32 %22)
  store i32* null, i32** %3, align 8
  br label %44

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @EVP_DecodeBlock(i8* %25, i8* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @X509_F_NETSCAPE_SPKI_B64_DECODE, align 4
  %33 = load i32, i32* @X509_R_BASE64_DECODE_ERROR, align 4
  %34 = call i32 @X509err(i32 %32, i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @OPENSSL_free(i8* %35)
  store i32* null, i32** %3, align 8
  br label %44

37:                                               ; preds = %24
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32* @d2i_NETSCAPE_SPKI(i32* null, i8** %7, i32 %39)
  store i32* %40, i32** %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @OPENSSL_free(i8* %41)
  %43 = load i32*, i32** %9, align 8
  store i32* %43, i32** %3, align 8
  br label %44

44:                                               ; preds = %37, %31, %20
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @EVP_DecodeBlock(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32* @d2i_NETSCAPE_SPKI(i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
