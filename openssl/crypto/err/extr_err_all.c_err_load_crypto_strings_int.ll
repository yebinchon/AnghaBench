; ModuleID = '/home/carl/AnghaBench/openssl/crypto/err/extr_err_all.c_err_load_crypto_strings_int.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/err/extr_err_all.c_err_load_crypto_strings_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @err_load_crypto_strings_int() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @ERR_load_ERR_strings()
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %103, label %4

4:                                                ; preds = %0
  %5 = call i64 (...) @ERR_load_BN_strings()
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %103, label %7

7:                                                ; preds = %4
  %8 = call i64 (...) @ERR_load_RSA_strings()
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %103, label %10

10:                                               ; preds = %7
  %11 = call i64 (...) @ERR_load_DH_strings()
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %103, label %13

13:                                               ; preds = %10
  %14 = call i64 (...) @ERR_load_EVP_strings()
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %103, label %16

16:                                               ; preds = %13
  %17 = call i64 (...) @ERR_load_BUF_strings()
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %103, label %19

19:                                               ; preds = %16
  %20 = call i64 (...) @ERR_load_OBJ_strings()
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %103, label %22

22:                                               ; preds = %19
  %23 = call i64 (...) @ERR_load_PEM_strings()
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %103, label %25

25:                                               ; preds = %22
  %26 = call i64 (...) @ERR_load_DSA_strings()
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %103, label %28

28:                                               ; preds = %25
  %29 = call i64 (...) @ERR_load_X509_strings()
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %103, label %31

31:                                               ; preds = %28
  %32 = call i64 (...) @ERR_load_ASN1_strings()
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %103, label %34

34:                                               ; preds = %31
  %35 = call i64 (...) @ERR_load_CONF_strings()
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %103, label %37

37:                                               ; preds = %34
  %38 = call i64 (...) @ERR_load_CRYPTO_strings()
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %103, label %40

40:                                               ; preds = %37
  %41 = call i64 (...) @ERR_load_COMP_strings()
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %103, label %43

43:                                               ; preds = %40
  %44 = call i64 (...) @ERR_load_EC_strings()
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %103, label %46

46:                                               ; preds = %43
  %47 = call i64 (...) @ERR_load_BIO_strings()
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %103, label %49

49:                                               ; preds = %46
  %50 = call i64 (...) @ERR_load_PKCS7_strings()
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %103, label %52

52:                                               ; preds = %49
  %53 = call i64 (...) @ERR_load_X509V3_strings()
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %103, label %55

55:                                               ; preds = %52
  %56 = call i64 (...) @ERR_load_PKCS12_strings()
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %103, label %58

58:                                               ; preds = %55
  %59 = call i64 (...) @ERR_load_RAND_strings()
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %103, label %61

61:                                               ; preds = %58
  %62 = call i64 (...) @ERR_load_DSO_strings()
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %103, label %64

64:                                               ; preds = %61
  %65 = call i64 (...) @ERR_load_TS_strings()
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %103, label %67

67:                                               ; preds = %64
  %68 = call i64 (...) @ERR_load_ENGINE_strings()
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %103, label %70

70:                                               ; preds = %67
  %71 = call i64 (...) @ERR_load_OCSP_strings()
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %103, label %73

73:                                               ; preds = %70
  %74 = call i64 (...) @ERR_load_UI_strings()
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %103, label %76

76:                                               ; preds = %73
  %77 = call i64 (...) @ERR_load_CMS_strings()
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %103, label %79

79:                                               ; preds = %76
  %80 = call i64 (...) @ERR_load_CRMF_strings()
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %103, label %82

82:                                               ; preds = %79
  %83 = call i64 (...) @ERR_load_CMP_strings()
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %103, label %85

85:                                               ; preds = %82
  %86 = call i64 (...) @ERR_load_CT_strings()
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %85
  %89 = call i64 (...) @ERR_load_ESS_strings()
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %88
  %92 = call i64 (...) @ERR_load_ASYNC_strings()
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = call i64 (...) @ERR_load_OSSL_STORE_strings()
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = call i64 (...) @ERR_load_PROP_strings()
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = call i64 (...) @ERR_load_PROV_strings()
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %0
  store i32 0, i32* %1, align 4
  br label %105

104:                                              ; preds = %100
  store i32 1, i32* %1, align 4
  br label %105

105:                                              ; preds = %104, %103
  %106 = load i32, i32* %1, align 4
  ret i32 %106
}

declare dso_local i64 @ERR_load_ERR_strings(...) #1

declare dso_local i64 @ERR_load_BN_strings(...) #1

declare dso_local i64 @ERR_load_RSA_strings(...) #1

declare dso_local i64 @ERR_load_DH_strings(...) #1

declare dso_local i64 @ERR_load_EVP_strings(...) #1

declare dso_local i64 @ERR_load_BUF_strings(...) #1

declare dso_local i64 @ERR_load_OBJ_strings(...) #1

declare dso_local i64 @ERR_load_PEM_strings(...) #1

declare dso_local i64 @ERR_load_DSA_strings(...) #1

declare dso_local i64 @ERR_load_X509_strings(...) #1

declare dso_local i64 @ERR_load_ASN1_strings(...) #1

declare dso_local i64 @ERR_load_CONF_strings(...) #1

declare dso_local i64 @ERR_load_CRYPTO_strings(...) #1

declare dso_local i64 @ERR_load_COMP_strings(...) #1

declare dso_local i64 @ERR_load_EC_strings(...) #1

declare dso_local i64 @ERR_load_BIO_strings(...) #1

declare dso_local i64 @ERR_load_PKCS7_strings(...) #1

declare dso_local i64 @ERR_load_X509V3_strings(...) #1

declare dso_local i64 @ERR_load_PKCS12_strings(...) #1

declare dso_local i64 @ERR_load_RAND_strings(...) #1

declare dso_local i64 @ERR_load_DSO_strings(...) #1

declare dso_local i64 @ERR_load_TS_strings(...) #1

declare dso_local i64 @ERR_load_ENGINE_strings(...) #1

declare dso_local i64 @ERR_load_OCSP_strings(...) #1

declare dso_local i64 @ERR_load_UI_strings(...) #1

declare dso_local i64 @ERR_load_CMS_strings(...) #1

declare dso_local i64 @ERR_load_CRMF_strings(...) #1

declare dso_local i64 @ERR_load_CMP_strings(...) #1

declare dso_local i64 @ERR_load_CT_strings(...) #1

declare dso_local i64 @ERR_load_ESS_strings(...) #1

declare dso_local i64 @ERR_load_ASYNC_strings(...) #1

declare dso_local i64 @ERR_load_OSSL_STORE_strings(...) #1

declare dso_local i64 @ERR_load_PROP_strings(...) #1

declare dso_local i64 @ERR_load_PROV_strings(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
