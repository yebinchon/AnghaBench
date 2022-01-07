; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_dec.c_asn1_find_end.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_dec.c_asn1_find_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_ASN1_FIND_END = common dso_local global i32 0, align 4
@ERR_R_NESTED_ASN1_ERROR = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@ASN1_R_MISSING_EOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, i8)* @asn1_find_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_find_end(i8** %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8, i8* %7, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 %18
  store i8* %21, i8** %19, align 8
  store i32 1, i32* %4, align 4
  br label %84

22:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %66, %36, %22
  %24 = load i64, i64* %6, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @asn1_check_eoc(i8** %10, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %74

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = sub nsw i64 %37, 2
  store i64 %38, i64* %6, align 8
  br label %23

39:                                               ; preds = %26
  %40 = load i8*, i8** %10, align 8
  store i8* %40, i8** %11, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @asn1_check_tlen(i64* %9, i32* null, i32* null, i8* %7, i32* null, i8** %10, i64 %41, i32 -1, i32 0, i32 0, i32* null)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ASN1_F_ASN1_FIND_END, align 4
  %46 = load i32, i32* @ERR_R_NESTED_ASN1_ERROR, align 4
  %47 = call i32 @ASN1err(i32 %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %84

48:                                               ; preds = %39
  %49 = load i8, i8* %7, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @UINT32_MAX, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @ASN1_F_ASN1_FIND_END, align 4
  %57 = load i32, i32* @ERR_R_NESTED_ASN1_ERROR, align 4
  %58 = call i32 @ASN1err(i32 %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %84

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %66

62:                                               ; preds = %48
  %63 = load i64, i64* %9, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = load i64, i64* %6, align 8
  %73 = sub nsw i64 %72, %71
  store i64 %73, i64* %6, align 8
  br label %23

74:                                               ; preds = %35, %23
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @ASN1_F_ASN1_FIND_END, align 4
  %79 = load i32, i32* @ASN1_R_MISSING_EOC, align 4
  %80 = call i32 @ASN1err(i32 %78, i32 %79)
  store i32 0, i32* %4, align 4
  br label %84

81:                                               ; preds = %74
  %82 = load i8*, i8** %10, align 8
  %83 = load i8**, i8*** %5, align 8
  store i8* %82, i8** %83, align 8
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %77, %55, %44, %17
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @asn1_check_eoc(i8**, i64) #1

declare dso_local i32 @asn1_check_tlen(i64*, i32*, i32*, i8*, i32*, i8**, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @ASN1err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
