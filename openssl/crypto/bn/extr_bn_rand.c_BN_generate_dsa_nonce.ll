; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rand.c_BN_generate_dsa_nonce.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rand.c_BN_generate_dsa_nonce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4
@BN_F_BN_GENERATE_DSA_NONCE = common dso_local global i32 0, align 4
@BN_R_PRIVATE_KEY_TOO_LARGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@BN_R_NO_SUITABLE_DIGEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_generate_dsa_nonce(i32* %0, i32* %1, i32* %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [96 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %25 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %25, i32** %13, align 8
  %26 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %15, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @BN_num_bytes(i32* %30)
  %32 = add nsw i32 %31, 8
  store i32 %32, i32* %19, align 4
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  store i32* null, i32** %23, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32* @bn_get_lib_ctx(i32* %33)
  store i32* %34, i32** %24, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  br label %138

38:                                               ; preds = %6
  %39 = load i32, i32* %19, align 4
  %40 = call i8* @OPENSSL_malloc(i32 %39)
  store i8* %40, i8** %21, align 8
  %41 = load i8*, i8** %21, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %138

44:                                               ; preds = %38
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds [96 x i8], [96 x i8]* %20, i64 0, i64 0
  %47 = call i64 @BN_bn2binpad(i32* %45, i8* %46, i32 96)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @BN_F_BN_GENERATE_DSA_NONCE, align 4
  %51 = load i32, i32* @BN_R_PRIVATE_KEY_TOO_LARGE, align 4
  %52 = call i32 @BNerr(i32 %50, i32 %51)
  br label %138

53:                                               ; preds = %44
  %54 = load i32*, i32** %24, align 8
  %55 = call i32* @EVP_MD_fetch(i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %55, i32** %23, align 8
  %56 = load i32*, i32** %23, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @BN_F_BN_GENERATE_DSA_NONCE, align 4
  %60 = load i32, i32* @BN_R_NO_SUITABLE_DIGEST, align 4
  %61 = call i32 @BNerr(i32 %59, i32 %60)
  br label %138

62:                                               ; preds = %53
  store i32 0, i32* %17, align 4
  br label %63

63:                                               ; preds = %112, %62
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %122

67:                                               ; preds = %63
  %68 = load i32*, i32** %24, align 8
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %70 = call i32 @rand_priv_bytes_ex(i32* %68, i8* %69, i32 64)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %138

73:                                               ; preds = %67
  %74 = load i32*, i32** %13, align 8
  %75 = load i32*, i32** %23, align 8
  %76 = call i32 @EVP_DigestInit_ex(i32* %74, i32* %75, i32* null)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %73
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %79, i32* %17, i64 4)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load i32*, i32** %13, align 8
  %84 = getelementptr inbounds [96 x i8], [96 x i8]* %20, i64 0, i64 0
  %85 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %83, i8* %84, i64 96)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load i32*, i32** %13, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %88, i8* %89, i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load i32*, i32** %13, align 8
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %96 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %94, i8* %95, i64 64)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @EVP_DigestFinal_ex(i32* %99, i8* %29, i32* null)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98, %93, %87, %82, %78, %73
  br label %138

103:                                              ; preds = %98
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %17, align 4
  %106 = sub i32 %104, %105
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %109 = icmp ugt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  store i32 %111, i32* %18, align 4
  br label %112

112:                                              ; preds = %110, %103
  %113 = load i8*, i8** %21, align 8
  %114 = load i32, i32* %17, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @memcpy(i8* %116, i8* %29, i32 %117)
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %17, align 4
  %121 = add i32 %120, %119
  store i32 %121, i32* %17, align 4
  br label %63

122:                                              ; preds = %63
  %123 = load i8*, i8** %21, align 8
  %124 = load i32, i32* %19, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @BN_bin2bn(i8* %123, i32 %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  br label %138

129:                                              ; preds = %122
  %130 = load i32*, i32** %7, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = call i32 @BN_mod(i32* %130, i32* %131, i32* %132, i32* %133)
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %138

137:                                              ; preds = %129
  store i32 1, i32* %22, align 4
  br label %138

138:                                              ; preds = %137, %136, %128, %102, %72, %58, %49, %43, %37
  %139 = load i32*, i32** %13, align 8
  %140 = call i32 @EVP_MD_CTX_free(i32* %139)
  %141 = load i32*, i32** %23, align 8
  %142 = call i32 @EVP_MD_free(i32* %141)
  %143 = load i8*, i8** %21, align 8
  %144 = call i32 @OPENSSL_free(i8* %143)
  %145 = getelementptr inbounds [96 x i8], [96 x i8]* %20, i64 0, i64 0
  %146 = call i32 @OPENSSL_cleanse(i8* %145, i32 96)
  %147 = load i32, i32* %22, align 4
  %148 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %148)
  ret i32 %147
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32* @bn_get_lib_ctx(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i64 @BN_bn2binpad(i32*, i8*, i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32* @EVP_MD_fetch(i32*, i8*, i32*) #1

declare dso_local i32 @rand_priv_bytes_ex(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, ...) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @EVP_MD_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
