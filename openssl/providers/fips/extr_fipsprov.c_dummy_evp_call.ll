; ModuleID = '/home/carl/AnghaBench/openssl/providers/fips/extr_fipsprov.c_dummy_evp_call.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/fips/extr_fipsprov.c_dummy_evp_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@OSSL_KDF_NAME_PBKDF2 = common dso_local global i32 0, align 4
@__const.dummy_evp_call.msg = private unnamed_addr constant [13 x i8] c"Hello World!\00", align 1
@__const.dummy_evp_call.exptd = private unnamed_addr constant [32 x i8] c"\7F\83\B1e\7F\F1\FCS\B9-\C1\81H\A1\D6]\FC-K\1F\A3\D6w(J\DD\D2\00\12m\90i", align 16
@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@BN_RAND_TOP_ANY = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@NID_X9_62_prime256v1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dummy_evp_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_evp_call(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [13 x i8], align 1
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [128 x i8], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i32* @PROV_LIBRARY_CONTEXT_OF(i8* %19)
  store i32* %20, i32** %3, align 8
  %21 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @EVP_MD_fetch(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @OSSL_KDF_NAME_PBKDF2, align 4
  %26 = call i32* @EVP_KDF_fetch(i32* %24, i32 %25, i32* null)
  store i32* %26, i32** %6, align 8
  %27 = bitcast [13 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.dummy_evp_call.msg, i32 0, i32 0), i64 13, i1 false)
  %28 = bitcast [32 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.dummy_evp_call.exptd, i32 0, i32 0), i64 32, i1 false)
  store i32 0, i32* %9, align 4
  %29 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %10, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32* @OPENSSL_CTX_get0_public_drbg(i32* %33)
  store i32* %34, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %1
  %38 = load i32*, i32** %5, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %17, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40, %37, %1
  br label %134

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @EVP_DigestInit_ex(i32* %48, i32* %49, i32* null)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %134

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %56 = call i32 @EVP_DigestUpdate(i32* %54, i8* %55, i32 12)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %134

59:                                               ; preds = %53
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @EVP_DigestFinal(i32* %60, i8* %32, i32* %9)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %134

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = icmp ne i64 %66, 32
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %70 = call i64 @memcmp(i8* %32, i8* %69, i32 32)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %64
  br label %134

73:                                               ; preds = %68
  %74 = load i32*, i32** %3, align 8
  %75 = call i32* @BN_CTX_new_ex(i32* %74)
  store i32* %75, i32** %13, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %134

79:                                               ; preds = %73
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @BN_CTX_start(i32* %80)
  %82 = load i32*, i32** %13, align 8
  %83 = call i32* @BN_CTX_get(i32* %82)
  store i32* %83, i32** %14, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32* @BN_CTX_get(i32* %84)
  store i32* %85, i32** %15, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %134

89:                                               ; preds = %79
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @BN_zero(i32* %90)
  %92 = load i32*, i32** %15, align 8
  %93 = call i32 @BN_one(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load i32*, i32** %14, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = call i32 @BN_add(i32* %96, i32* %97, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i32*, i32** %14, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = call i64 @BN_cmp(i32* %102, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101, %95, %89
  br label %134

107:                                              ; preds = %101
  %108 = load i32*, i32** %17, align 8
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %110 = call i64 @RAND_DRBG_bytes(i32* %108, i8* %109, i32 128)
  %111 = icmp sle i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %134

113:                                              ; preds = %107
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %116 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @BN_rand_ex(i32* %114, i32 256, i32 %115, i32 %116, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  br label %134

121:                                              ; preds = %113
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* @NID_X9_62_prime256v1, align 4
  %124 = call i32* @EC_KEY_new_by_curve_name_ex(i32* %122, i32 %123)
  store i32* %124, i32** %18, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %134

128:                                              ; preds = %121
  %129 = load i32*, i32** %18, align 8
  %130 = call i32 @EC_KEY_generate_key(i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  br label %134

133:                                              ; preds = %128
  store i32 1, i32* %12, align 4
  br label %134

134:                                              ; preds = %133, %132, %127, %120, %112, %106, %88, %78, %72, %63, %58, %52, %46
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @BN_CTX_end(i32* %135)
  %137 = load i32*, i32** %13, align 8
  %138 = call i32 @BN_CTX_free(i32* %137)
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @EVP_KDF_free(i32* %139)
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @EVP_MD_CTX_free(i32* %141)
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @EVP_MD_free(i32* %143)
  %145 = load i32*, i32** %18, align 8
  %146 = call i32 @EC_KEY_free(i32* %145)
  %147 = load i32, i32* %12, align 4
  %148 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %148)
  ret i32 %147
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i8*) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32* @EVP_MD_fetch(i32*, i8*, i32*) #1

declare dso_local i32* @EVP_KDF_fetch(i32*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32* @OPENSSL_CTX_get0_public_drbg(i32*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestFinal(i32*, i8*, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32* @BN_CTX_new_ex(i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @BN_one(i32*) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i64 @RAND_DRBG_bytes(i32*, i8*, i32) #1

declare dso_local i32 @BN_rand_ex(i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @EC_KEY_new_by_curve_name_ex(i32*, i32) #1

declare dso_local i32 @EC_KEY_generate_key(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EVP_KDF_free(i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @EVP_MD_free(i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
