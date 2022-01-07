; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_scrypt.c_scrypt_alg.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_scrypt.c_scrypt_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCRYPT_PR_MAX = common dso_local global i32 0, align 4
@EVP_F_SCRYPT_ALG = common dso_local global i32 0, align 4
@EVP_R_MEMORY_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@LOG2_UINT64_MAX = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_R_PBKDF2_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32, i32, i32, i32, i8*, i64, i32*)* @scrypt_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrypt_alg(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i64 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i64 %1, i64* %14, align 8
  store i8* %2, i8** %15, align 8
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store i64 %9, i64* %22, align 8
  store i32* %10, i32** %23, align 8
  store i32 0, i32* %24, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %11
  %35 = load i32, i32* %19, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %17, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %37, %34, %11
  store i32 0, i32* %12, align 4
  br label %227

47:                                               ; preds = %40
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* @SCRYPT_PR_MAX, align 4
  %50 = load i32, i32* %18, align 4
  %51 = sdiv i32 %49, %50
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @EVP_F_SCRYPT_ALG, align 4
  %55 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %56 = call i32 @EVPerr(i32 %54, i32 %55)
  store i32 0, i32* %12, align 4
  br label %227

57:                                               ; preds = %47
  %58 = load i32, i32* %18, align 4
  %59 = mul nsw i32 16, %58
  %60 = load i32, i32* @LOG2_UINT64_MAX, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %18, align 4
  %65 = mul nsw i32 16, %64
  %66 = shl i32 1, %65
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @EVP_F_SCRYPT_ALG, align 4
  %70 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %71 = call i32 @EVPerr(i32 %69, i32 %70)
  store i32 0, i32* %12, align 4
  br label %227

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %57
  %74 = load i32, i32* %19, align 4
  %75 = mul nsw i32 %74, 128
  %76 = load i32, i32* %18, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %30, align 4
  %78 = load i32, i32* %30, align 4
  %79 = load i32, i32* @INT_MAX, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i32, i32* @EVP_F_SCRYPT_ALG, align 4
  %83 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %84 = call i32 @EVPerr(i32 %82, i32 %83)
  store i32 0, i32* %12, align 4
  br label %227

85:                                               ; preds = %73
  %86 = load i32, i32* @UINT64_MAX, align 4
  %87 = sext i32 %86 to i64
  %88 = udiv i64 %87, 128
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %29, align 4
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 2
  %92 = load i32, i32* %29, align 4
  %93 = load i32, i32* %18, align 4
  %94 = sdiv i32 %92, %93
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load i32, i32* @EVP_F_SCRYPT_ALG, align 4
  %98 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %99 = call i32 @EVPerr(i32 %97, i32 %98)
  store i32 0, i32* %12, align 4
  br label %227

100:                                              ; preds = %85
  %101 = load i32, i32* %18, align 4
  %102 = mul nsw i32 32, %101
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, 2
  %105 = mul nsw i32 %102, %104
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %31, align 4
  %109 = load i32, i32* %30, align 4
  %110 = load i32, i32* @UINT64_MAX, align 4
  %111 = load i32, i32* %31, align 4
  %112 = sub nsw i32 %110, %111
  %113 = icmp sgt i32 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %100
  %115 = load i32, i32* @EVP_F_SCRYPT_ALG, align 4
  %116 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %117 = call i32 @EVPerr(i32 %115, i32 %116)
  store i32 0, i32* %12, align 4
  br label %227

118:                                              ; preds = %100
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @SIZE_MAX, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @SIZE_MAX, align 4
  store i32 %123, i32* %20, align 4
  br label %124

124:                                              ; preds = %122, %118
  %125 = load i32, i32* %30, align 4
  %126 = load i32, i32* %31, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %20, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* @EVP_F_SCRYPT_ALG, align 4
  %132 = load i32, i32* @EVP_R_MEMORY_LIMIT_EXCEEDED, align 4
  %133 = call i32 @EVPerr(i32 %131, i32 %132)
  store i32 0, i32* %12, align 4
  br label %227

134:                                              ; preds = %124
  %135 = load i8*, i8** %21, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 1, i32* %12, align 4
  br label %227

138:                                              ; preds = %134
  %139 = load i32, i32* %30, align 4
  %140 = load i32, i32* %31, align 4
  %141 = add nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = call i8* @OPENSSL_malloc(i64 %142)
  store i8* %143, i8** %25, align 8
  %144 = load i8*, i8** %25, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @EVP_F_SCRYPT_ALG, align 4
  %148 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %149 = call i32 @EVPerr(i32 %147, i32 %148)
  store i32 0, i32* %12, align 4
  br label %227

150:                                              ; preds = %138
  %151 = load i8*, i8** %25, align 8
  %152 = load i32, i32* %30, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = bitcast i8* %154 to i32*
  store i32* %155, i32** %26, align 8
  %156 = load i32*, i32** %26, align 8
  %157 = load i32, i32* %18, align 4
  %158 = mul nsw i32 32, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32* %160, i32** %28, align 8
  %161 = load i32*, i32** %28, align 8
  %162 = load i32, i32* %18, align 4
  %163 = mul nsw i32 32, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32* %165, i32** %27, align 8
  %166 = load i8*, i8** %13, align 8
  %167 = load i64, i64* %14, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = load i64, i64* %16, align 8
  %170 = trunc i64 %169 to i32
  %171 = load i32*, i32** %23, align 8
  %172 = load i32, i32* %30, align 4
  %173 = sext i32 %172 to i64
  %174 = load i8*, i8** %25, align 8
  %175 = call i64 @PKCS5_PBKDF2_HMAC(i8* %166, i64 %167, i8* %168, i32 %170, i32 1, i32* %171, i64 %173, i8* %174)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %150
  br label %212

178:                                              ; preds = %150
  store i32 0, i32* %29, align 4
  br label %179

179:                                              ; preds = %197, %178
  %180 = load i32, i32* %29, align 4
  %181 = load i32, i32* %19, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %179
  %184 = load i8*, i8** %25, align 8
  %185 = load i32, i32* %18, align 4
  %186 = mul nsw i32 128, %185
  %187 = load i32, i32* %29, align 4
  %188 = mul nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %184, i64 %189
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* %17, align 4
  %193 = load i32*, i32** %26, align 8
  %194 = load i32*, i32** %28, align 8
  %195 = load i32*, i32** %27, align 8
  %196 = call i32 @scryptROMix(i8* %190, i32 %191, i32 %192, i32* %193, i32* %194, i32* %195)
  br label %197

197:                                              ; preds = %183
  %198 = load i32, i32* %29, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %29, align 4
  br label %179

200:                                              ; preds = %179
  %201 = load i8*, i8** %13, align 8
  %202 = load i64, i64* %14, align 8
  %203 = load i8*, i8** %25, align 8
  %204 = load i32, i32* %30, align 4
  %205 = load i32*, i32** %23, align 8
  %206 = load i64, i64* %22, align 8
  %207 = load i8*, i8** %21, align 8
  %208 = call i64 @PKCS5_PBKDF2_HMAC(i8* %201, i64 %202, i8* %203, i32 %204, i32 1, i32* %205, i64 %206, i8* %207)
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %200
  br label %212

211:                                              ; preds = %200
  store i32 1, i32* %24, align 4
  br label %212

212:                                              ; preds = %211, %210, %177
  %213 = load i32, i32* %24, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32, i32* @EVP_F_SCRYPT_ALG, align 4
  %217 = load i32, i32* @EVP_R_PBKDF2_ERROR, align 4
  %218 = call i32 @EVPerr(i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %212
  %220 = load i8*, i8** %25, align 8
  %221 = load i32, i32* %30, align 4
  %222 = load i32, i32* %31, align 4
  %223 = add nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = call i32 @OPENSSL_clear_free(i8* %220, i64 %224)
  %226 = load i32, i32* %24, align 4
  store i32 %226, i32* %12, align 4
  br label %227

227:                                              ; preds = %219, %146, %137, %130, %114, %96, %81, %68, %53, %46
  %228 = load i32, i32* %12, align 4
  ret i32 %228
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i64 @PKCS5_PBKDF2_HMAC(i8*, i64, i8*, i32, i32, i32*, i64, i8*) #1

declare dso_local i32 @scryptROMix(i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
