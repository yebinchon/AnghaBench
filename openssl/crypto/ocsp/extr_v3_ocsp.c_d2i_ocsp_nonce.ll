; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_v3_ocsp.c_d2i_ocsp_nonce.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_v3_ocsp.c_d2i_ocsp_nonce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCSP_F_D2I_OCSP_NONCE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**, i64)* @d2i_ocsp_nonce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @d2i_ocsp_nonce(i8* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i8**
  store i8** %11, i8*** %9, align 8
  %12 = load i8**, i8*** %9, align 8
  %13 = icmp eq i8** %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i8**, i8*** %9, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %14, %3
  %19 = call i8* (...) @ASN1_OCTET_STRING_new()
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %47

23:                                               ; preds = %18
  br label %27

24:                                               ; preds = %14
  %25 = load i8**, i8*** %9, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %24, %23
  %28 = load i8*, i8** %8, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @ASN1_OCTET_STRING_set(i8* %28, i8* %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %47

35:                                               ; preds = %27
  %36 = load i64, i64* %7, align 8
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %36
  store i8* %39, i8** %37, align 8
  %40 = load i8**, i8*** %9, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %8, align 8
  %44 = load i8**, i8*** %9, align 8
  store i8* %43, i8** %44, align 8
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i8*, i8** %8, align 8
  store i8* %46, i8** %4, align 8
  br label %62

47:                                               ; preds = %34, %22
  %48 = load i8**, i8*** %9, align 8
  %49 = icmp eq i8** %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i8**, i8*** %9, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %47
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @ASN1_OCTET_STRING_free(i8* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* @OCSP_F_D2I_OCSP_NONCE, align 4
  %60 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %61 = call i32 @OCSPerr(i32 %59, i32 %60)
  store i8* null, i8** %4, align 8
  br label %62

62:                                               ; preds = %58, %45
  %63 = load i8*, i8** %4, align 8
  ret i8* %63
}

declare dso_local i8* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i8*, i8*, i64) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(i8*) #1

declare dso_local i32 @OCSPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
