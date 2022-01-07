; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_enc.c_ssl3_generate_key_block.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_enc.c_ssl3_generate_key_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@OSSL_DIGEST_NAME_MD5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"-fips\00", align 1
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_GENERATE_KEY_BLOCK = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@MD5_DIGEST_LENGTH = common dso_local global i64 0, align 8
@os_toascii = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @ssl3_generate_key_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl3_generate_key_block(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  store i8 65, i8* %13, align 1
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @OSSL_DIGEST_NAME_MD5, align 4
  %23 = call i32* @EVP_MD_fetch(i32* null, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %7, align 8
  %24 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %24, i32** %8, align 8
  %25 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31, %28, %3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %37 = load i32, i32* @SSL_F_SSL3_GENERATE_KEY_BLOCK, align 4
  %38 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %39 = call i32 @SSLfatal(%struct.TYPE_8__* %35, i32 %36, i32 %37, i32 %38)
  br label %198

40:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %189, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %195

45:                                               ; preds = %41
  %46 = load i32, i32* %16, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = zext i32 %48 to i64
  %50 = icmp ugt i64 %49, 16
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %54 = load i32, i32* @SSL_F_SSL3_GENERATE_KEY_BLOCK, align 4
  %55 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %56 = call i32 @SSLfatal(%struct.TYPE_8__* %52, i32 %53, i32 %54, i32 %55)
  br label %198

57:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %67, %57
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i8, i8* %13, align 1
  %64 = load i32, i32* %15, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 %65
  store i8 %63, i8* %66, align 1
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %15, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %58

70:                                               ; preds = %58
  %71 = load i8, i8* %13, align 1
  %72 = add i8 %71, 1
  store i8 %72, i8* %13, align 1
  %73 = load i32*, i32** %9, align 8
  %74 = call i32* (...) @EVP_sha1()
  %75 = call i32 @EVP_DigestInit_ex(i32* %73, i32* %74, i32* null)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %143

77:                                               ; preds = %70
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @EVP_DigestUpdate(i32* %78, i8* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %143

83:                                               ; preds = %77
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @EVP_DigestUpdate(i32* %84, i8* %89, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %143

97:                                               ; preds = %83
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %104 = call i32 @EVP_DigestUpdate(i32* %98, i8* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %143

106:                                              ; preds = %97
  %107 = load i32*, i32** %9, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %113 = call i32 @EVP_DigestUpdate(i32* %107, i8* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %106
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @EVP_DigestFinal_ex(i32* %116, i8* %21, i32* null)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %115
  %120 = load i32*, i32** %8, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @EVP_DigestInit_ex(i32* %120, i32* %121, i32* null)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %119
  %125 = load i32*, i32** %8, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @EVP_DigestUpdate(i32* %125, i8* %130, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %124
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %141 = call i32 @EVP_DigestUpdate(i32* %139, i8* %21, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %138, %124, %119, %115, %106, %97, %83, %77, %70
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %145 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %146 = load i32, i32* @SSL_F_SSL3_GENERATE_KEY_BLOCK, align 4
  %147 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %148 = call i32 @SSLfatal(%struct.TYPE_8__* %144, i32 %145, i32 %146, i32 %147)
  br label %198

149:                                              ; preds = %138
  %150 = load i32, i32* %14, align 4
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* @MD5_DIGEST_LENGTH, align 8
  %153 = add nsw i64 %151, %152
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* %6, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %149
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 @EVP_DigestFinal_ex(i32* %158, i8* %21, i32* null)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %164 = load i32, i32* @SSL_F_SSL3_GENERATE_KEY_BLOCK, align 4
  %165 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %166 = call i32 @SSLfatal(%struct.TYPE_8__* %162, i32 %163, i32 %164, i32 %165)
  br label %198

167:                                              ; preds = %157
  %168 = load i8*, i8** %5, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %14, align 4
  %171 = sub i32 %169, %170
  %172 = call i32 @memcpy(i8* %168, i8* %21, i32 %171)
  br label %185

173:                                              ; preds = %149
  %174 = load i32*, i32** %8, align 8
  %175 = load i8*, i8** %5, align 8
  %176 = call i32 @EVP_DigestFinal_ex(i32* %174, i8* %175, i32* null)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %173
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %180 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %181 = load i32, i32* @SSL_F_SSL3_GENERATE_KEY_BLOCK, align 4
  %182 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %183 = call i32 @SSLfatal(%struct.TYPE_8__* %179, i32 %180, i32 %181, i32 %182)
  br label %198

184:                                              ; preds = %173
  br label %185

185:                                              ; preds = %184, %167
  %186 = load i64, i64* @MD5_DIGEST_LENGTH, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 %186
  store i8* %188, i8** %5, align 8
  br label %189

189:                                              ; preds = %185
  %190 = load i64, i64* @MD5_DIGEST_LENGTH, align 8
  %191 = load i32, i32* %14, align 4
  %192 = zext i32 %191 to i64
  %193 = add nsw i64 %192, %190
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %14, align 4
  br label %41

195:                                              ; preds = %41
  %196 = trunc i64 %19 to i32
  %197 = call i32 @OPENSSL_cleanse(i8* %21, i32 %196)
  store i32 1, i32* %17, align 4
  br label %198

198:                                              ; preds = %195, %178, %161, %143, %51, %34
  %199 = load i32*, i32** %8, align 8
  %200 = call i32 @EVP_MD_CTX_free(i32* %199)
  %201 = load i32*, i32** %9, align 8
  %202 = call i32 @EVP_MD_CTX_free(i32* %201)
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @EVP_MD_free(i32* %203)
  %205 = load i32, i32* %17, align 4
  %206 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %206)
  ret i32 %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_fetch(i32*, i32, i8*) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_8__*, i32, i32, i32) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #2

declare dso_local i32* @EVP_sha1(...) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i32 @EVP_MD_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
