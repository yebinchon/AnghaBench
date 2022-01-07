; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_cmp.c_check_suite_b.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_cmp.c_check_suite_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_PKEY_EC = common dso_local global i64 0, align 8
@X509_V_ERR_SUITE_B_INVALID_ALGORITHM = common dso_local global i32 0, align 4
@NID_secp384r1 = common dso_local global i32 0, align 4
@NID_ecdsa_with_SHA384 = common dso_local global i32 0, align 4
@X509_V_ERR_SUITE_B_INVALID_SIGNATURE_ALGORITHM = common dso_local global i32 0, align 4
@X509_V_FLAG_SUITEB_192_LOS = common dso_local global i64 0, align 8
@X509_V_ERR_SUITE_B_LOS_NOT_ALLOWED = common dso_local global i32 0, align 4
@X509_V_FLAG_SUITEB_128_LOS_ONLY = common dso_local global i64 0, align 8
@NID_X9_62_prime256v1 = common dso_local global i32 0, align 4
@NID_ecdsa_with_SHA256 = common dso_local global i32 0, align 4
@X509_V_ERR_SUITE_B_INVALID_CURVE = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64*)* @check_suite_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_suite_b(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @EVP_PKEY_id(i32* %13)
  %15 = load i64, i64* @EVP_PKEY_EC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @EVP_PKEY_get0_EC_KEY(i32* %18)
  %20 = call i32* @EC_KEY_get0_group(i32 %19)
  store i32* %20, i32** %8, align 8
  br label %21

21:                                               ; preds = %17, %12, %3
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @X509_V_ERR_SUITE_B_INVALID_ALGORITHM, align 4
  store i32 %25, i32* %4, align 4
  br label %82

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @EC_GROUP_get_curve_name(i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @NID_secp384r1, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NID_ecdsa_with_SHA384, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @X509_V_ERR_SUITE_B_INVALID_SIGNATURE_ALGORITHM, align 4
  store i32 %40, i32* %4, align 4
  br label %82

41:                                               ; preds = %35, %32
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @X509_V_FLAG_SUITEB_192_LOS, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @X509_V_ERR_SUITE_B_LOS_NOT_ALLOWED, align 4
  store i32 %48, i32* %4, align 4
  br label %82

49:                                               ; preds = %41
  %50 = load i64, i64* @X509_V_FLAG_SUITEB_128_LOS_ONLY, align 8
  %51 = xor i64 %50, -1
  %52 = load i64*, i64** %7, align 8
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %53, %51
  store i64 %54, i64* %52, align 8
  br label %80

55:                                               ; preds = %26
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @NID_X9_62_prime256v1, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @NID_ecdsa_with_SHA256, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @X509_V_ERR_SUITE_B_INVALID_SIGNATURE_ALGORITHM, align 4
  store i32 %67, i32* %4, align 4
  br label %82

68:                                               ; preds = %62, %59
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @X509_V_FLAG_SUITEB_128_LOS_ONLY, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @X509_V_ERR_SUITE_B_LOS_NOT_ALLOWED, align 4
  store i32 %75, i32* %4, align 4
  br label %82

76:                                               ; preds = %68
  br label %79

77:                                               ; preds = %55
  %78 = load i32, i32* @X509_V_ERR_SUITE_B_INVALID_CURVE, align 4
  store i32 %78, i32* %4, align 4
  br label %82

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %49
  %81 = load i32, i32* @X509_V_OK, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %77, %74, %66, %47, %39, %24
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @EVP_PKEY_id(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32) #1

declare dso_local i32 @EVP_PKEY_get0_EC_KEY(i32*) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
