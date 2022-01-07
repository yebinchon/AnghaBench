; ModuleID = '/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_CRMF_poposigningkey_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_CRMF_poposigningkey_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@CRMF_F_CRMF_POPOSIGNINGKEY_INIT = common dso_local global i32 0, align 4
@CRMF_R_NULL_ARGUMENT = common dso_local global i32 0, align 4
@ASN1_STRING_FLAG_BITS_LEFT = common dso_local global i32 0, align 4
@CRMF_R_ERROR = common dso_local global i32 0, align 4
@CRMF_R_UNSUPPORTED_ALG_FOR_POPSIGNINGKEY = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32)* @CRMF_poposigningkey_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRMF_poposigningkey_init(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %22, %4
  %29 = load i32, i32* @CRMF_F_CRMF_POPOSIGNINGKEY_INIT, align 4
  %30 = load i32, i32* @CRMF_R_NULL_ARGUMENT, align 4
  %31 = call i32 @CRMFerr(i32 %29, i32 %30)
  store i32 0, i32* %5, align 4
  br label %147

32:                                               ; preds = %25
  %33 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %34 = or i32 %33, 7
  %35 = xor i32 %34, -1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @i2d_OSSL_CRMF_CERTREQUEST(i32* %49, i8** %13)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %32
  %54 = load i8*, i8** %13, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53, %32
  %57 = load i32, i32* @CRMF_F_CRMF_POPOSIGNINGKEY_INIT, align 4
  %58 = load i32, i32* @CRMF_R_ERROR, align 4
  %59 = call i32 @CRMFerr(i32 %57, i32 %58)
  br label %139

60:                                               ; preds = %53
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %11, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @EVP_PKEY_id(i32* %64)
  %66 = call i32 @OBJ_find_sigid_by_algs(i32* %15, i32 %63, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @CRMF_F_CRMF_POPOSIGNINGKEY_INIT, align 4
  %70 = load i32, i32* @CRMF_R_UNSUPPORTED_ALG_FOR_POPSIGNINGKEY, align 4
  %71 = call i32 @CRMFerr(i32 %69, i32 %70)
  br label %139

72:                                               ; preds = %60
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @OBJ_find_sigid_algs(i32 %73, i32* %16, i32* null)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %16, align 4
  %78 = call i32* @EVP_get_digestbynid(i32 %77)
  store i32* %78, i32** %17, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %72
  %81 = load i32, i32* @CRMF_F_CRMF_POPOSIGNINGKEY_INIT, align 4
  %82 = load i32, i32* @CRMF_R_UNSUPPORTED_ALG_FOR_POPSIGNINGKEY, align 4
  %83 = call i32 @CRMFerr(i32 %81, i32 %82)
  br label %139

84:                                               ; preds = %76
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @OBJ_nid2obj(i32 %88)
  %90 = load i32, i32* @V_ASN1_NULL, align 4
  %91 = call i32 @X509_ALGOR_set0(i32 %87, i32 %89, i32 %90, i32* null)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %84
  %94 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %94, i32** %18, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %112, label %96

96:                                               ; preds = %93
  %97 = load i32*, i32** %18, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i64 @EVP_DigestSignInit(i32* %97, i32* null, i32* %98, i32* null, i32* %99)
  %101 = icmp sle i64 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %96
  %103 = load i32*, i32** %18, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i64 @EVP_DigestSignUpdate(i32* %103, i8* %104, i64 %105)
  %107 = icmp sle i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load i32*, i32** %18, align 8
  %110 = call i64 @EVP_DigestSignFinal(i32* %109, i8* null, i64* %12)
  %111 = icmp sle i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108, %102, %96, %93, %84
  %113 = load i32, i32* @CRMF_F_CRMF_POPOSIGNINGKEY_INIT, align 4
  %114 = load i32, i32* @CRMF_R_ERROR, align 4
  %115 = call i32 @CRMFerr(i32 %113, i32 %114)
  br label %139

116:                                              ; preds = %108
  %117 = load i64, i64* %12, align 8
  %118 = call i8* @OPENSSL_malloc(i64 %117)
  store i8* %118, i8** %14, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %139

121:                                              ; preds = %116
  %122 = load i32*, i32** %18, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = call i64 @EVP_DigestSignFinal(i32* %122, i8* %123, i64* %12)
  %125 = icmp sle i64 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %121
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @ASN1_BIT_STRING_set(%struct.TYPE_5__* %129, i8* %130, i64 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %126, %121
  %135 = load i32, i32* @CRMF_F_CRMF_POPOSIGNINGKEY_INIT, align 4
  %136 = load i32, i32* @CRMF_R_ERROR, align 4
  %137 = call i32 @CRMFerr(i32 %135, i32 %136)
  br label %139

138:                                              ; preds = %126
  store i32 1, i32* %19, align 4
  br label %139

139:                                              ; preds = %138, %134, %120, %112, %80, %68, %56
  %140 = load i8*, i8** %13, align 8
  %141 = call i32 @OPENSSL_free(i8* %140)
  %142 = load i32*, i32** %18, align 8
  %143 = call i32 @EVP_MD_CTX_free(i32* %142)
  %144 = load i8*, i8** %14, align 8
  %145 = call i32 @OPENSSL_free(i8* %144)
  %146 = load i32, i32* %19, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %139, %28
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @CRMFerr(i32, i32) #1

declare dso_local i32 @i2d_OSSL_CRMF_CERTREQUEST(i32*, i8**) #1

declare dso_local i32 @OBJ_find_sigid_by_algs(i32*, i32, i32) #1

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @OBJ_find_sigid_algs(i32, i32*, i32*) #1

declare dso_local i32* @EVP_get_digestbynid(i32) #1

declare dso_local i32 @X509_ALGOR_set0(i32, i32, i32, i32*) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i64 @EVP_DigestSignInit(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @EVP_DigestSignUpdate(i32*, i8*, i64) #1

declare dso_local i64 @EVP_DigestSignFinal(i32*, i8*, i64*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @ASN1_BIT_STRING_set(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
