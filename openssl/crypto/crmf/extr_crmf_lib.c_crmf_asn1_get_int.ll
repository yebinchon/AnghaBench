; ModuleID = '/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_crmf_asn1_get_int.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_crmf_asn1_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_R_INVALID_NUMBER = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i64 0, align 8
@ASN1_R_TOO_SMALL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@ASN1_R_TOO_LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @crmf_asn1_get_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crmf_asn1_get_int(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @ASN1_INTEGER_get_int64(i64* %4, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ASN1_R_INVALID_NUMBER, align 4
  %10 = call i32 @CRMFerr(i32 0, i32 %9)
  store i32 -1, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @INT_MIN, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @ASN1_R_TOO_SMALL, align 4
  %17 = call i32 @CRMFerr(i32 0, i32 %16)
  store i32 -1, i32* %2, align 4
  br label %28

18:                                               ; preds = %11
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @INT_MAX, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @ASN1_R_TOO_LARGE, align 4
  %24 = call i32 @CRMFerr(i32 0, i32 %23)
  store i32 -1, i32* %2, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %22, %15, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ASN1_INTEGER_get_int64(i64*, i32*) #1

declare dso_local i32 @CRMFerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
