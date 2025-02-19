; ModuleID = '/home/carl/AnghaBench/openssl/crypto/sm2/extr_sm2_crypt.c_sm2_ciphertext_size.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/sm2/extr_sm2_crypt.c_sm2_ciphertext_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_ASN1_INTEGER = common dso_local global i32 0, align 4
@V_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm2_ciphertext_size(i32* %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @EC_KEY_get0_group(i32* %13)
  %15 = call i64 @ec_field_size(i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @EVP_MD_size(i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %4
  store i32 0, i32* %5, align 4
  br label %45

24:                                               ; preds = %20
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %25, 1
  %27 = load i32, i32* @V_ASN1_INTEGER, align 4
  %28 = call i32 @ASN1_object_size(i32 0, i64 %26, i32 %27)
  %29 = mul nsw i32 2, %28
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %33 = call i32 @ASN1_object_size(i32 0, i64 %31, i32 %32)
  %34 = add nsw i32 %29, %33
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %37 = call i32 @ASN1_object_size(i32 0, i64 %35, i32 %36)
  %38 = add nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %42 = call i32 @ASN1_object_size(i32 1, i64 %40, i32 %41)
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %24, %23
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @ec_field_size(i32) #1

declare dso_local i32 @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @ASN1_object_size(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
