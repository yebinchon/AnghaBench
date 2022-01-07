; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_crl_extension_match.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_crl_extension_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @crl_extension_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crl_extension_match(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @X509_CRL_get_ext_by_NID(i32* %11, i32 %12, i32 -1)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @X509_CRL_get_ext_by_NID(i32* %17, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %69

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @X509_CRL_get_ext(i32* %24, i32 %25)
  %27 = call i32* @X509_EXTENSION_get_data(i32 %26)
  store i32* %27, i32** %8, align 8
  br label %29

28:                                               ; preds = %3
  store i32* null, i32** %8, align 8
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @X509_CRL_get_ext_by_NID(i32* %30, i32 %31, i32 -1)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @X509_CRL_get_ext_by_NID(i32* %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %69

42:                                               ; preds = %35
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @X509_CRL_get_ext(i32* %43, i32 %44)
  %46 = call i32* @X509_EXTENSION_get_data(i32 %45)
  store i32* %46, i32** %9, align 8
  br label %48

47:                                               ; preds = %29
  store i32* null, i32** %9, align 8
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %69

55:                                               ; preds = %51, %48
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %55
  store i32 0, i32* %4, align 4
  br label %69

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @ASN1_OCTET_STRING_cmp(i32* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %69

68:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %67, %61, %54, %41, %22
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @X509_CRL_get_ext_by_NID(i32*, i32, i32) #1

declare dso_local i32* @X509_EXTENSION_get_data(i32) #1

declare dso_local i32 @X509_CRL_get_ext(i32*, i32) #1

declare dso_local i64 @ASN1_OCTET_STRING_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
