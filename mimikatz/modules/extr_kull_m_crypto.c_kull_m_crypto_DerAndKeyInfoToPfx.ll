; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_DerAndKeyInfoToPfx.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_DerAndKeyInfoToPfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_STORE_ADD_NEW = common dso_local global i32 0, align 4
@CERT_KEY_PROV_INFO_PROP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i32] [i32 67, i32 101, i32 114, i32 116, i32 83, i32 101, i32 116, i32 67, i32 101, i32 114, i32 116, i32 105, i32 102, i32 105, i32 99, i32 97, i32 116, i32 101, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 80, i32 114, i32 111, i32 112, i32 101, i32 114, i32 116, i32 121, i32 40, i32 67, i32 69, i32 82, i32 84, i32 95, i32 75, i32 69, i32 89, i32 95, i32 80, i32 82, i32 79, i32 86, i32 95, i32 73, i32 78, i32 70, i32 79, i32 95, i32 80, i32 82, i32 79, i32 80, i32 95, i32 73, i32 68, i32 41, i32 0], align 4
@.str.1 = private unnamed_addr constant [33 x i32] [i32 67, i32 101, i32 114, i32 116, i32 65, i32 100, i32 100, i32 69, i32 110, i32 99, i32 111, i32 100, i32 101, i32 100, i32 67, i32 101, i32 114, i32 116, i32 105, i32 102, i32 105, i32 99, i32 97, i32 116, i32 101, i32 84, i32 111, i32 83, i32 116, i32 111, i32 114, i32 101, i32 0], align 4
@CERT_CLOSE_STORE_FORCE_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_crypto_DerAndKeyInfoToPfx(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %14 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %15 = call i32 @CertOpenStore(i32 %13, i32 0, i32 0, i32 %14, i32* null)
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @X509_ASN_ENCODING, align 4
  %20 = load i64, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @CERT_STORE_ADD_NEW, align 4
  %24 = call i64 @CertAddEncodedCertificateToStore(i32 %18, i32 %19, i32 %21, i32 %22, i32 %23, i32* %11)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %17
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @CERT_KEY_PROV_INFO_PROP_ID, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @CertSetCertificateContextProperty(i32 %27, i32 %28, i32 0, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @kull_m_crypto_exportPfx(i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %38

36:                                               ; preds = %26
  %37 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([62 x i32]* @.str to i8*))
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @CertFreeCertificateContext(i32 %39)
  br label %43

41:                                               ; preds = %17
  %42 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([33 x i32]* @.str.1 to i8*))
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @CERT_CLOSE_STORE_FORCE_FLAG, align 4
  %46 = call i32 @CertCloseStore(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %4
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @CertOpenStore(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @CertAddEncodedCertificateToStore(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @CertSetCertificateContextProperty(i32, i32, i32, i64) #1

declare dso_local i32 @kull_m_crypto_exportPfx(i32, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @CertFreeCertificateContext(i32) #1

declare dso_local i32 @CertCloseStore(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
