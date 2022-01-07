; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_cl.c_OCSP_check_validity.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_cl.c_OCSP_check_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCSP_F_OCSP_CHECK_VALIDITY = common dso_local global i32 0, align 4
@OCSP_R_ERROR_IN_THISUPDATE_FIELD = common dso_local global i32 0, align 4
@OCSP_R_STATUS_NOT_YET_VALID = common dso_local global i32 0, align 4
@OCSP_R_STATUS_TOO_OLD = common dso_local global i32 0, align 4
@OCSP_R_ERROR_IN_NEXTUPDATE_FIELD = common dso_local global i32 0, align 4
@OCSP_R_STATUS_EXPIRED = common dso_local global i32 0, align 4
@OCSP_R_NEXTUPDATE_BEFORE_THISUPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OCSP_check_validity(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 1, i32* %10, align 4
  %13 = call i32 @time(i64* %11)
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @ASN1_GENERALIZEDTIME_check(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @OCSP_F_OCSP_CHECK_VALIDITY, align 4
  %19 = load i32, i32* @OCSP_R_ERROR_IN_THISUPDATE_FIELD, align 4
  %20 = call i32 @OCSPerr(i32 %18, i32 %19)
  store i32 0, i32* %10, align 4
  br label %48

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %12, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @X509_cmp_time(i32* %25, i64* %12)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @OCSP_F_OCSP_CHECK_VALIDITY, align 4
  %30 = load i32, i32* @OCSP_R_STATUS_NOT_YET_VALID, align 4
  %31 = call i32 @OCSPerr(i32 %29, i32 %30)
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i64, i64* %9, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %9, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %12, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @X509_cmp_time(i32* %39, i64* %12)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @OCSP_F_OCSP_CHECK_VALIDITY, align 4
  %44 = load i32, i32* @OCSP_R_STATUS_TOO_OLD, align 4
  %45 = call i32 @OCSPerr(i32 %43, i32 %44)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %35
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %17
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %84

53:                                               ; preds = %48
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @ASN1_GENERALIZEDTIME_check(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @OCSP_F_OCSP_CHECK_VALIDITY, align 4
  %59 = load i32, i32* @OCSP_R_ERROR_IN_NEXTUPDATE_FIELD, align 4
  %60 = call i32 @OCSPerr(i32 %58, i32 %59)
  store i32 0, i32* %10, align 4
  br label %73

61:                                               ; preds = %53
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub nsw i64 %62, %63
  store i64 %64, i64* %12, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i64 @X509_cmp_time(i32* %65, i64* %12)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @OCSP_F_OCSP_CHECK_VALIDITY, align 4
  %70 = load i32, i32* @OCSP_R_STATUS_EXPIRED, align 4
  %71 = call i32 @OCSPerr(i32 %69, i32 %70)
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %61
  br label %73

73:                                               ; preds = %72, %57
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @ASN1_STRING_cmp(i32* %74, i32* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @OCSP_F_OCSP_CHECK_VALIDITY, align 4
  %80 = load i32, i32* @OCSP_R_NEXTUPDATE_BEFORE_THISUPDATE, align 4
  %81 = call i32 @OCSPerr(i32 %79, i32 %80)
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %51
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_check(i32*) #1

declare dso_local i32 @OCSPerr(i32, i32) #1

declare dso_local i64 @X509_cmp_time(i32*, i64*) #1

declare dso_local i64 @ASN1_STRING_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
