; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs7/extr_pk7_smime.c_PKCS7_final.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs7/extr_pk7_smime.c_PKCS7_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKCS7_F_PKCS7_FINAL = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@PKCS7_R_PKCS7_DATASIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS7_final(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @PKCS7_dataInit(i32* %10, i32* null)
  store i32* %11, i32** %8, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @PKCS7_F_PKCS7_FINAL, align 4
  %15 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %16 = call i32 @PKCS7err(i32 %14, i32 %15)
  store i32 0, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @SMIME_crlf_copy(i32* %18, i32* %19, i32 %20)
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @BIO_flush(i32* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @PKCS7_dataFinal(i32* %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @PKCS7_F_PKCS7_FINAL, align 4
  %30 = load i32, i32* @PKCS7_R_PKCS7_DATASIGN, align 4
  %31 = call i32 @PKCS7err(i32 %29, i32 %30)
  br label %33

32:                                               ; preds = %17
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @BIO_free_all(i32* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %13
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32* @PKCS7_dataInit(i32*, i32*) #1

declare dso_local i32 @PKCS7err(i32, i32) #1

declare dso_local i32 @SMIME_crlf_copy(i32*, i32*, i32) #1

declare dso_local i32 @BIO_flush(i32*) #1

declare dso_local i32 @PKCS7_dataFinal(i32*, i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
