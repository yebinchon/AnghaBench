; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_d2i_pr.c_d2i_AutoPrivateKey.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_d2i_pr.c_d2i_AutoPrivateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_TYPE = common dso_local global i32 0, align 4
@inkey = common dso_local global i32 0, align 4
@EVP_PKEY_DSA = common dso_local global i32 0, align 4
@EVP_PKEY_EC = common dso_local global i32 0, align 4
@ASN1_TYPE_free = common dso_local global i32 0, align 4
@ASN1_F_D2I_AUTOPRIVATEKEY = common dso_local global i32 0, align 4
@ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE = common dso_local global i32 0, align 4
@EVP_PKEY_RSA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @d2i_AutoPrivateKey(i32** %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @ASN1_TYPE, align 4
  %13 = call i32 @STACK_OF(i32 %12)
  %14 = load i32, i32* @inkey, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @d2i_ASN1_SEQUENCE_ANY(i32* null, i8** %8, i64 %18)
  store i32 %19, i32* @inkey, align 4
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i32, i32* @inkey, align 4
  %23 = call i32 @sk_ASN1_TYPE_num(i32 %22)
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @EVP_PKEY_DSA, align 4
  store i32 %26, i32* %9, align 4
  br label %71

27:                                               ; preds = %3
  %28 = load i32, i32* @inkey, align 4
  %29 = call i32 @sk_ASN1_TYPE_num(i32 %28)
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EVP_PKEY_EC, align 4
  store i32 %32, i32* %9, align 4
  br label %70

33:                                               ; preds = %27
  %34 = load i32, i32* @inkey, align 4
  %35 = call i32 @sk_ASN1_TYPE_num(i32 %34)
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = call i32* @d2i_PKCS8_PRIV_KEY_INFO(i32* null, i8** %8, i64 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32, i32* @inkey, align 4
  %41 = load i32, i32* @ASN1_TYPE_free, align 4
  %42 = call i32 @sk_ASN1_TYPE_pop_free(i32 %40, i32 %41)
  %43 = load i32*, i32** %10, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @ASN1_F_D2I_AUTOPRIVATEKEY, align 4
  %47 = load i32, i32* @ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE, align 4
  %48 = call i32 @ASN1err(i32 %46, i32 %47)
  store i32* null, i32** %4, align 8
  br label %80

49:                                               ; preds = %37
  %50 = load i32*, i32** %10, align 8
  %51 = call i32* @EVP_PKCS82PKEY(i32* %50)
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @PKCS8_PRIV_KEY_INFO_free(i32* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32* null, i32** %4, align 8
  br label %80

57:                                               ; preds = %49
  %58 = load i8*, i8** %8, align 8
  %59 = load i8**, i8*** %6, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i32**, i32*** %5, align 8
  %61 = icmp ne i32** %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32*, i32** %11, align 8
  %64 = load i32**, i32*** %5, align 8
  store i32* %63, i32** %64, align 8
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32*, i32** %11, align 8
  store i32* %66, i32** %4, align 8
  br label %80

67:                                               ; preds = %33
  %68 = load i32, i32* @EVP_PKEY_RSA, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %31
  br label %71

71:                                               ; preds = %70, %25
  %72 = load i32, i32* @inkey, align 4
  %73 = load i32, i32* @ASN1_TYPE_free, align 4
  %74 = call i32 @sk_ASN1_TYPE_pop_free(i32 %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32**, i32*** %5, align 8
  %77 = load i8**, i8*** %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32* @d2i_PrivateKey(i32 %75, i32** %76, i8** %77, i64 %78)
  store i32* %79, i32** %4, align 8
  br label %80

80:                                               ; preds = %71, %65, %56, %45
  %81 = load i32*, i32** %4, align 8
  ret i32* %81
}

declare dso_local i32 @STACK_OF(i32) #1

declare dso_local i32 @d2i_ASN1_SEQUENCE_ANY(i32*, i8**, i64) #1

declare dso_local i32 @sk_ASN1_TYPE_num(i32) #1

declare dso_local i32* @d2i_PKCS8_PRIV_KEY_INFO(i32*, i8**, i64) #1

declare dso_local i32 @sk_ASN1_TYPE_pop_free(i32, i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32* @EVP_PKCS82PKEY(i32*) #1

declare dso_local i32 @PKCS8_PRIV_KEY_INFO_free(i32*) #1

declare dso_local i32* @d2i_PrivateKey(i32, i32**, i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
