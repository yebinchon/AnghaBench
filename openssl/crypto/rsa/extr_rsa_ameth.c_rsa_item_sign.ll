; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_item_sign.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_item_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@EVP_PKEY_RSA_PSS = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32*, i32*, i32*)* @rsa_item_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_item_sign(i32* %0, i32* %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @EVP_MD_CTX_pkey_ctx(i32* %18)
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = call i64 @EVP_PKEY_CTX_get_rsa_padding(i32* %20, i32* %14)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %65

24:                                               ; preds = %6
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 2, i32* %7, align 4
  br label %65

29:                                               ; preds = %24
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  store i32* null, i32** %16, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = call i32* @rsa_ctx_to_pss_string(i32* %34)
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %65

39:                                               ; preds = %33
  %40 = load i32*, i32** %12, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i32*, i32** %16, align 8
  %44 = call i32* @ASN1_STRING_dup(i32* %43)
  store i32* %44, i32** %17, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @ASN1_STRING_free(i32* %48)
  store i32 0, i32* %7, align 4
  br label %65

50:                                               ; preds = %42
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* @EVP_PKEY_RSA_PSS, align 4
  %53 = call i32 @OBJ_nid2obj(i32 %52)
  %54 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @X509_ALGOR_set0(i32* %51, i32 %53, i32 %54, i32* %55)
  br label %57

57:                                               ; preds = %50, %39
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* @EVP_PKEY_RSA_PSS, align 4
  %60 = call i32 @OBJ_nid2obj(i32 %59)
  %61 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @X509_ALGOR_set0(i32* %58, i32 %60, i32 %61, i32* %62)
  store i32 3, i32* %7, align 4
  br label %65

64:                                               ; preds = %29
  store i32 2, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %57, %47, %38, %28, %23
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32* @EVP_MD_CTX_pkey_ctx(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_get_rsa_padding(i32*, i32*) #1

declare dso_local i32* @rsa_ctx_to_pss_string(i32*) #1

declare dso_local i32* @ASN1_STRING_dup(i32*) #1

declare dso_local i32 @ASN1_STRING_free(i32*) #1

declare dso_local i32 @X509_ALGOR_set0(i32*, i32, i32, i32*) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
