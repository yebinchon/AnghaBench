; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_ameth_lib.c_EVP_PKEY_asn1_get0.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_ameth_lib.c_EVP_PKEY_asn1_get0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@standard_methods = common dso_local global i32** null, align 8
@app_methods = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EVP_PKEY_asn1_get0(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32**, i32*** @standard_methods, align 8
  %6 = call i32 @OSSL_NELEM(i32** %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32**, i32*** @standard_methods, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %2, align 8
  br label %27

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @app_methods, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32* @sk_EVP_PKEY_ASN1_METHOD_value(i32 %24, i32 %25)
  store i32* %26, i32** %2, align 8
  br label %27

27:                                               ; preds = %20, %14, %9
  %28 = load i32*, i32** %2, align 8
  ret i32* %28
}

declare dso_local i32 @OSSL_NELEM(i32**) #1

declare dso_local i32* @sk_EVP_PKEY_ASN1_METHOD_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
