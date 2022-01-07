; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509type.c_X509_certificate_type.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509type.c_X509_certificate_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PK_RSA = common dso_local global i32 0, align 4
@EVP_PKT_SIGN = common dso_local global i32 0, align 4
@EVP_PKT_ENC = common dso_local global i32 0, align 4
@EVP_PK_DSA = common dso_local global i32 0, align 4
@EVP_PK_EC = common dso_local global i32 0, align 4
@EVP_PKT_EXCH = common dso_local global i32 0, align 4
@EVP_PK_DH = common dso_local global i32 0, align 4
@EVP_PKS_RSA = common dso_local global i32 0, align 4
@EVP_PKS_DSA = common dso_local global i32 0, align 4
@EVP_PKS_EC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_certificate_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @X509_get0_pubkey(i32* %16)
  store i32* %17, i32** %6, align 8
  br label %20

18:                                               ; preds = %12
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %6, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %86

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @EVP_PKEY_id(i32* %25)
  switch i32 %26, label %58 [
    i32 137, label %27
    i32 136, label %34
    i32 141, label %38
    i32 140, label %42
    i32 138, label %48
    i32 139, label %48
    i32 142, label %50
    i32 132, label %54
    i32 131, label %54
    i32 130, label %54
  ]

27:                                               ; preds = %24
  %28 = load i32, i32* @EVP_PK_RSA, align 4
  %29 = load i32, i32* @EVP_PKT_SIGN, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @EVP_PKT_ENC, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %59

34:                                               ; preds = %24
  %35 = load i32, i32* @EVP_PK_RSA, align 4
  %36 = load i32, i32* @EVP_PKT_SIGN, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %59

38:                                               ; preds = %24
  %39 = load i32, i32* @EVP_PK_DSA, align 4
  %40 = load i32, i32* @EVP_PKT_SIGN, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %7, align 4
  br label %59

42:                                               ; preds = %24
  %43 = load i32, i32* @EVP_PK_EC, align 4
  %44 = load i32, i32* @EVP_PKT_SIGN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @EVP_PKT_EXCH, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %7, align 4
  br label %59

48:                                               ; preds = %24, %24
  %49 = load i32, i32* @EVP_PKT_SIGN, align 4
  store i32 %49, i32* %7, align 4
  br label %59

50:                                               ; preds = %24
  %51 = load i32, i32* @EVP_PK_DH, align 4
  %52 = load i32, i32* @EVP_PKT_EXCH, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %7, align 4
  br label %59

54:                                               ; preds = %24, %24, %24
  %55 = load i32, i32* @EVP_PKT_EXCH, align 4
  %56 = load i32, i32* @EVP_PKT_SIGN, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %7, align 4
  br label %59

58:                                               ; preds = %24
  br label %59

59:                                               ; preds = %58, %54, %50, %48, %42, %38, %34, %27
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @X509_get_signature_nid(i32* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @OBJ_find_sigid_algs(i32 %65, i32* null, i32* %8)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  switch i32 %69, label %82 [
    i32 128, label %70
    i32 129, label %70
    i32 134, label %74
    i32 133, label %74
    i32 135, label %78
  ]

70:                                               ; preds = %68, %68
  %71 = load i32, i32* @EVP_PKS_RSA, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %83

74:                                               ; preds = %68, %68
  %75 = load i32, i32* @EVP_PKS_DSA, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %83

78:                                               ; preds = %68
  %79 = load i32, i32* @EVP_PKS_EC, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %83

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %78, %74, %70
  br label %84

84:                                               ; preds = %83, %64, %59
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %23, %11
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32* @X509_get0_pubkey(i32*) #1

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @X509_get_signature_nid(i32*) #1

declare dso_local i64 @OBJ_find_sigid_algs(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
