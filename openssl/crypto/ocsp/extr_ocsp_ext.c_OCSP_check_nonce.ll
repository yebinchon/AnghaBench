; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ext.c_OCSP_check_nonce.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_ext.c_OCSP_check_nonce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_id_pkix_OCSP_Nonce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OCSP_check_nonce(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @NID_id_pkix_OCSP_Nonce, align 4
  %12 = call i32 @OCSP_REQUEST_get_ext_by_NID(i32* %10, i32 %11, i32 -1)
  store i32 %12, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @NID_id_pkix_OCSP_Nonce, align 4
  %15 = call i32 @OCSP_BASICRESP_get_ext_by_NID(i32* %13, i32 %14, i32 -1)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 2, i32* %3, align 4
  br label %51

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %51

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 3, i32* %3, align 4
  br label %51

36:                                               ; preds = %32, %29
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32* @OCSP_REQUEST_get_ext(i32* %37, i32 %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32* @OCSP_BASICRESP_get_ext(i32* %40, i32 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @X509_EXTENSION_get_data(i32* %43)
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @X509_EXTENSION_get_data(i32* %45)
  %47 = call i64 @ASN1_OCTET_STRING_cmp(i32 %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %51

50:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %35, %28, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @OCSP_REQUEST_get_ext_by_NID(i32*, i32, i32) #1

declare dso_local i32 @OCSP_BASICRESP_get_ext_by_NID(i32*, i32, i32) #1

declare dso_local i32* @OCSP_REQUEST_get_ext(i32*, i32) #1

declare dso_local i32* @OCSP_BASICRESP_get_ext(i32*, i32) #1

declare dso_local i64 @ASN1_OCTET_STRING_cmp(i32, i32) #1

declare dso_local i32 @X509_EXTENSION_get_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
