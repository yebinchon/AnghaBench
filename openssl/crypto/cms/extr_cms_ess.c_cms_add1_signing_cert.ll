; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_ess.c_cms_add1_signing_cert.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_ess.c_cms_add1_signing_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_id_smime_aa_signingCertificate = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@CMS_F_CMS_ADD1_SIGNING_CERT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cms_add1_signing_cert(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @i2d_ESS_SIGNING_CERT(i32* %10, i8** null)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i8* @OPENSSL_malloc(i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %42

16:                                               ; preds = %2
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @i2d_ESS_SIGNING_CERT(i32* %18, i8** %7)
  %20 = call i32* (...) @ASN1_STRING_new()
  store i32* %20, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ASN1_STRING_set(i32* %23, i8* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %16
  br label %42

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @OPENSSL_free(i8* %30)
  store i8* null, i8** %8, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @NID_id_smime_aa_signingCertificate, align 4
  %34 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @CMS_signed_add1_attr_by_NID(i32* %32, i32 %33, i32 %34, i32* %35, i32 -1)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %42

39:                                               ; preds = %29
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @ASN1_STRING_free(i32* %40)
  store i32 1, i32* %3, align 4
  br label %50

42:                                               ; preds = %38, %28, %15
  %43 = load i32, i32* @CMS_F_CMS_ADD1_SIGNING_CERT, align 4
  %44 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %45 = call i32 @CMSerr(i32 %43, i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @ASN1_STRING_free(i32* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @OPENSSL_free(i8* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %39
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @i2d_ESS_SIGNING_CERT(i32*, i8**) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32* @ASN1_STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_set(i32*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @CMS_signed_add1_attr_by_NID(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @ASN1_STRING_free(i32*) #1

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
