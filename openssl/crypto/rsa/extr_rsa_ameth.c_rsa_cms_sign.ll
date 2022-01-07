; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_cms_sign.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_cms_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@NID_rsaEncryption = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i32 0, align 4
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@EVP_PKEY_RSA_PSS = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rsa_cms_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_cms_sign(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @CMS_SignerInfo_get0_pkey_ctx(i32* %9)
  store i32* %10, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @CMS_SignerInfo_get0_algs(i32* %11, i32* null, i32* null, i32* null, i32** %5)
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @EVP_PKEY_CTX_get_rsa_padding(i32* %16, i32* %4)
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %49

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @NID_rsaEncryption, align 4
  %28 = call i32 @OBJ_nid2obj(i32 %27)
  %29 = load i32, i32* @V_ASN1_NULL, align 4
  %30 = call i32 @X509_ALGOR_set0(i32* %26, i32 %28, i32 %29, i32* null)
  store i32 1, i32* %2, align 4
  br label %49

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %49

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @rsa_ctx_to_pss_string(i32* %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %49

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @EVP_PKEY_RSA_PSS, align 4
  %45 = call i32 @OBJ_nid2obj(i32 %44)
  %46 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @X509_ALGOR_set0(i32* %43, i32 %45, i32 %46, i32* %47)
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %41, %35, %25, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32* @CMS_SignerInfo_get0_pkey_ctx(i32*) #1

declare dso_local i32 @CMS_SignerInfo_get0_algs(i32*, i32*, i32*, i32*, i32**) #1

declare dso_local i64 @EVP_PKEY_CTX_get_rsa_padding(i32*, i32*) #1

declare dso_local i32 @X509_ALGOR_set0(i32*, i32, i32, i32*) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32* @rsa_ctx_to_pss_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
