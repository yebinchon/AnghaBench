; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_DerAndKeyInfoToStore.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_DerAndKeyInfoToStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@CERT_STORE_PROV_SYSTEM = common dso_local global i32 0, align 4
@CERT_STORE_OPEN_EXISTING_FLAG = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_STORE_ADD_ALWAYS = common dso_local global i32 0, align 4
@CERT_STORE_ADD_NEW = common dso_local global i32 0, align 4
@CERT_KEY_PROV_INFO_PROP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i32] [i32 67, i32 101, i32 114, i32 116, i32 83, i32 101, i32 116, i32 67, i32 101, i32 114, i32 116, i32 105, i32 102, i32 105, i32 99, i32 97, i32 116, i32 101, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 80, i32 114, i32 111, i32 112, i32 101, i32 114, i32 116, i32 121, i32 40, i32 67, i32 69, i32 82, i32 84, i32 95, i32 75, i32 69, i32 89, i32 95, i32 80, i32 82, i32 79, i32 86, i32 95, i32 73, i32 78, i32 70, i32 79, i32 95, i32 80, i32 82, i32 79, i32 80, i32 95, i32 73, i32 68, i32 41, i32 0], align 4
@.str.1 = private unnamed_addr constant [33 x i32] [i32 67, i32 101, i32 114, i32 116, i32 65, i32 100, i32 100, i32 69, i32 110, i32 99, i32 111, i32 100, i32 101, i32 100, i32 67, i32 101, i32 114, i32 116, i32 105, i32 102, i32 105, i32 99, i32 97, i32 116, i32 101, i32 84, i32 111, i32 83, i32 116, i32 111, i32 114, i32 101, i32 0], align 4
@CERT_CLOSE_STORE_FORCE_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_crypto_DerAndKeyInfoToStore(i64 %0, i32 %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %18 = load i32, i32* @CERT_STORE_OPEN_EXISTING_FLAG, align 4
  %19 = load i32, i32* %10, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @CertOpenStore(i32 %17, i32 0, i32 0, i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %6
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @X509_ASN_ENCODING, align 4
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @CERT_STORE_ADD_ALWAYS, align 4
  br label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @CERT_STORE_ADD_NEW, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i64 @CertAddEncodedCertificateToStore(i32 %25, i32 %26, i32 %28, i32 %29, i32 %37, i32* %15)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @CERT_KEY_PROV_INFO_PROP_ID, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @CertSetCertificateContextProperty(i32 %41, i32 %42, i32 0, i64 %43)
  store i64 %44, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([62 x i32]* @.str to i8*))
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @CertFreeCertificateContext(i32 %49)
  br label %53

51:                                               ; preds = %36
  %52 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([33 x i32]* @.str.1 to i8*))
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @CERT_CLOSE_STORE_FORCE_FLAG, align 4
  %56 = call i32 @CertCloseStore(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %6
  %58 = load i64, i64* %13, align 8
  ret i64 %58
}

declare dso_local i32 @CertOpenStore(i32, i32, i32, i32, i32) #1

declare dso_local i64 @CertAddEncodedCertificateToStore(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @CertSetCertificateContextProperty(i32, i32, i32, i64) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @CertFreeCertificateContext(i32) #1

declare dso_local i32 @CertCloseStore(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
