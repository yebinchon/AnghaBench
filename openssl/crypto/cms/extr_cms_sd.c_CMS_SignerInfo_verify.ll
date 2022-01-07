; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_sd.c_CMS_SignerInfo_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_sd.c_CMS_SignerInfo_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64, i32, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@CMS_F_CMS_SIGNERINFO_VERIFY = common dso_local global i32 0, align 4
@CMS_R_NO_PUBLIC_KEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CMS_Attributes_Verify = common dso_local global i32 0, align 4
@CMS_R_VERIFICATION_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_SignerInfo_verify(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* null, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @CMS_F_CMS_SIGNERINFO_VERIFY, align 4
  %15 = load i32, i32* @CMS_R_NO_PUBLIC_KEY, align 4
  %16 = call i32 @CMSerr(i32 %14, i32 %15)
  store i32 -1, i32* %2, align 4
  br label %110

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @CMS_si_check_attributes(%struct.TYPE_9__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %110

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @EVP_get_digestbyobj(i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %110

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = call i32* (...) @EVP_MD_CTX_new()
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  store i32* %38, i32** %40, align 8
  %41 = icmp eq i32* %38, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @CMS_F_CMS_SIGNERINFO_VERIFY, align 4
  %44 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %45 = call i32 @CMSerr(i32 %43, i32 %44)
  store i32 -1, i32* %2, align 4
  br label %110

46:                                               ; preds = %37, %32
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %4, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @EVP_DigestVerifyInit(i32* %50, i32* %52, i32* %53, i32* null, i32 %56)
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %106

60:                                               ; preds = %46
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = call i32 @cms_sd_asn1_ctrl(%struct.TYPE_9__* %61, i32 1)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %106

65:                                               ; preds = %60
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* @CMS_Attributes_Verify, align 4
  %71 = call i32 @ASN1_ITEM_rptr(i32 %70)
  %72 = call i32 @ASN1_item_i2d(i32* %69, i8** %5, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %106

76:                                               ; preds = %65
  %77 = load i32*, i32** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @EVP_DigestVerifyUpdate(i32* %77, i8* %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @OPENSSL_free(i8* %81)
  %83 = load i32, i32* %7, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 -1, i32* %7, align 4
  br label %106

86:                                               ; preds = %76
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @EVP_DigestVerifyFinal(i32* %87, i32 %92, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %86
  %102 = load i32, i32* @CMS_F_CMS_SIGNERINFO_VERIFY, align 4
  %103 = load i32, i32* @CMS_R_VERIFICATION_FAILURE, align 4
  %104 = call i32 @CMSerr(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %86
  br label %106

106:                                              ; preds = %105, %85, %75, %64, %59
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @EVP_MD_CTX_reset(i32* %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %42, %31, %21, %13
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @CMSerr(i32, i32) #1

declare dso_local i32 @CMS_si_check_attributes(%struct.TYPE_9__*) #1

declare dso_local i32* @EVP_get_digestbyobj(i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i64 @EVP_DigestVerifyInit(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @cms_sd_asn1_ctrl(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ASN1_item_i2d(i32*, i8**, i32) #1

declare dso_local i32 @ASN1_ITEM_rptr(i32) #1

declare dso_local i32 @EVP_DigestVerifyUpdate(i32*, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_DigestVerifyFinal(i32*, i32, i32) #1

declare dso_local i32 @EVP_MD_CTX_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
