; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs7/extr_pk7_doit.c_PKCS7_SIGNER_INFO_sign.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs7/extr_pk7_doit.c_PKCS7_SIGNER_INFO_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@PKCS7_F_PKCS7_SIGNER_INFO_SIGN = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@PKCS7_ATTR_SIGN = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_PKCS7_SIGN = common dso_local global i32 0, align 4
@EVP_PKEY_OP_SIGN = common dso_local global i32 0, align 4
@PKCS7_R_CTRL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS7_SIGNER_INFO_sign(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @EVP_get_digestbyobj(i32 %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

19:                                               ; preds = %1
  %20 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @PKCS7_F_PKCS7_SIGNER_INFO_SIGN, align 4
  %25 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %26 = call i32 @PKCS7err(i32 %24, i32 %25)
  br label %82

27:                                               ; preds = %19
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @EVP_DigestSignInit(i32* %28, i32** %5, i32* %29, i32* null, i32 %32)
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %82

36:                                               ; preds = %27
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* @PKCS7_ATTR_SIGN, align 4
  %42 = call i32 @ASN1_ITEM_rptr(i32 %41)
  %43 = call i32 @ASN1_item_i2d(i32* %40, i8** %6, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %82

47:                                               ; preds = %36
  %48 = load i32*, i32** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @EVP_DigestSignUpdate(i32* %48, i8* %49, i32 %50)
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %82

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @OPENSSL_free(i8* %55)
  store i8* null, i8** %6, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @EVP_DigestSignFinal(i32* %57, i8* null, i64* %8)
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %82

61:                                               ; preds = %54
  %62 = load i64, i64* %8, align 8
  %63 = call i8* @OPENSSL_malloc(i64 %62)
  store i8* %63, i8** %6, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %82

67:                                               ; preds = %61
  %68 = load i32*, i32** %4, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i64 @EVP_DigestSignFinal(i32* %68, i8* %69, i64* %8)
  %71 = icmp sle i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %82

73:                                               ; preds = %67
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @EVP_MD_CTX_free(i32* %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @ASN1_STRING_set0(i32 %78, i8* %79, i64 %80)
  store i32 1, i32* %2, align 4
  br label %87

82:                                               ; preds = %72, %66, %60, %53, %46, %35, %23
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @OPENSSL_free(i8* %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @EVP_MD_CTX_free(i32* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %73, %18
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32* @EVP_get_digestbyobj(i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @PKCS7err(i32, i32) #1

declare dso_local i64 @EVP_DigestSignInit(i32*, i32**, i32*, i32*, i32) #1

declare dso_local i32 @ASN1_item_i2d(i32*, i8**, i32) #1

declare dso_local i32 @ASN1_ITEM_rptr(i32) #1

declare dso_local i64 @EVP_DigestSignUpdate(i32*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i64 @EVP_DigestSignFinal(i32*, i8*, i64*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @ASN1_STRING_set0(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
