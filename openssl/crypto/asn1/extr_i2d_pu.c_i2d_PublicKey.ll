; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_i2d_pu.c_i2d_PublicKey.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_i2d_pu.c_i2d_PublicKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_I2D_PUBLICKEY = common dso_local global i32 0, align 4
@ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2d_PublicKey(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @EVP_PKEY_id(i32* %6)
  switch i32 %7, label %23 [
    i32 128, label %8
    i32 130, label %13
    i32 129, label %18
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @EVP_PKEY_get0_RSA(i32* %9)
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @i2d_RSAPublicKey(i32 %10, i8** %11)
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @EVP_PKEY_get0_DSA(i32* %14)
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @i2d_DSAPublicKey(i32 %15, i8** %16)
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @EVP_PKEY_get0_EC_KEY(i32* %19)
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @i2o_ECPublicKey(i32 %20, i8** %21)
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @ASN1_F_I2D_PUBLICKEY, align 4
  %25 = load i32, i32* @ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE, align 4
  %26 = call i32 @ASN1err(i32 %24, i32 %25)
  store i32 -1, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %18, %13, %8
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @i2d_RSAPublicKey(i32, i8**) #1

declare dso_local i32 @EVP_PKEY_get0_RSA(i32*) #1

declare dso_local i32 @i2d_DSAPublicKey(i32, i8**) #1

declare dso_local i32 @EVP_PKEY_get0_DSA(i32*) #1

declare dso_local i32 @i2o_ECPublicKey(i32, i8**) #1

declare dso_local i32 @EVP_PKEY_get0_EC_KEY(i32*) #1

declare dso_local i32 @ASN1err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
