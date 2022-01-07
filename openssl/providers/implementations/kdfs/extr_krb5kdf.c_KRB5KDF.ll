; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_krb5kdf.c_KRB5KDF.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_krb5kdf.c_KRB5KDF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_BLOCK_LENGTH = common dso_local global i32 0, align 4
@NID_des_ede3_cbc = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_WRONG_OUTPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@PROV_R_INVALID_CONSTANT_LENGTH = common dso_local global i32 0, align 4
@PROV_R_WRONG_FINAL_BLOCK_LENGTH = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_GENERATE_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64, i8*, i64, i8*, i64)* @KRB5KDF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KRB5KDF(i32* %0, i32* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32* null, i32** %18, align 8
  %30 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %31 = mul nsw i32 %30, 2
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %19, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %20, align 8
  store i32 0, i32* %26, align 4
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %17, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %8
  %39 = load i32*, i32** %10, align 8
  %40 = call i64 @EVP_CIPHER_nid(i32* %39)
  %41 = load i64, i64* @NID_des_ede3_cbc, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i64, i64* %13, align 8
  %45 = icmp eq i64 %44, 24
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* %17, align 8
  %48 = icmp eq i64 %47, 21
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %26, align 4
  br label %54

50:                                               ; preds = %46, %43, %38
  %51 = load i32, i32* @ERR_LIB_PROV, align 4
  %52 = load i32, i32* @PROV_R_WRONG_OUTPUT_BUFFER_SIZE, align 4
  %53 = call i32 @ERR_raise(i32 %51, i32 %52)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %197

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %8
  %56 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %56, i32** %18, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %197

60:                                               ; preds = %55
  %61 = load i32*, i32** %18, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @cipher_init(i32* %61, i32* %62, i32* %63, i8* %64, i64 %65)
  store i32 %66, i32* %27, align 4
  %67 = load i32, i32* %27, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %190

70:                                               ; preds = %60
  %71 = load i32*, i32** %18, align 8
  %72 = call i64 @EVP_CIPHER_CTX_block_size(i32* %71)
  store i64 %72, i64* %23, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %23, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @ERR_LIB_PROV, align 4
  %78 = load i32, i32* @PROV_R_INVALID_CONSTANT_LENGTH, align 4
  %79 = call i32 @ERR_raise(i32 %77, i32 %78)
  store i32 0, i32* %27, align 4
  br label %190

80:                                               ; preds = %70
  %81 = load i64, i64* %23, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @n_fold(i8* %34, i64 %81, i8* %82, i64 %83)
  store i8* %34, i8** %21, align 8
  %85 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %34, i64 %86
  store i8* %87, i8** %22, align 8
  store i64 0, i64* %25, align 8
  br label %88

88:                                               ; preds = %167, %80
  %89 = load i64, i64* %25, align 8
  %90 = load i64, i64* %17, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %171

92:                                               ; preds = %88
  %93 = load i32*, i32** %18, align 8
  %94 = load i8*, i8** %22, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = load i64, i64* %23, align 8
  %97 = call i32 @EVP_EncryptUpdate(i32* %93, i8* %94, i32* %29, i8* %95, i64 %96)
  store i32 %97, i32* %27, align 4
  %98 = load i32, i32* %27, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  br label %190

101:                                              ; preds = %92
  %102 = load i32, i32* %29, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %24, align 8
  %104 = load i32*, i32** %18, align 8
  %105 = load i8*, i8** %22, align 8
  %106 = call i32 @EVP_EncryptFinal_ex(i32* %104, i8* %105, i32* %29)
  store i32 %106, i32* %27, align 4
  %107 = load i32, i32* %27, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %190

110:                                              ; preds = %101
  %111 = load i32, i32* %29, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @ERR_LIB_PROV, align 4
  %115 = load i32, i32* @PROV_R_WRONG_FINAL_BLOCK_LENGTH, align 4
  %116 = call i32 @ERR_raise(i32 %114, i32 %115)
  store i32 0, i32* %27, align 4
  br label %190

117:                                              ; preds = %110
  %118 = load i64, i64* %24, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %25, align 8
  %121 = sub i64 %119, %120
  %122 = icmp ugt i64 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* %25, align 8
  %126 = sub i64 %124, %125
  store i64 %126, i64* %24, align 8
  br label %127

127:                                              ; preds = %123, %117
  %128 = load i8*, i8** %16, align 8
  %129 = load i64, i64* %25, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = load i8*, i8** %22, align 8
  %132 = load i64, i64* %24, align 8
  %133 = call i32 @memcpy(i8* %130, i8* %131, i64 %132)
  %134 = load i64, i64* %17, align 8
  %135 = load i64, i64* %25, align 8
  %136 = load i64, i64* %24, align 8
  %137 = add i64 %135, %136
  %138 = icmp ugt i64 %134, %137
  br i1 %138, label %139, label %166

139:                                              ; preds = %127
  %140 = load i32*, i32** %18, align 8
  %141 = call i32 @EVP_CIPHER_CTX_reset(i32* %140)
  store i32 %141, i32* %27, align 4
  %142 = load i32, i32* %27, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  br label %190

145:                                              ; preds = %139
  %146 = load i32*, i32** %18, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = load i64, i64* %13, align 8
  %151 = call i32 @cipher_init(i32* %146, i32* %147, i32* %148, i8* %149, i64 %150)
  store i32 %151, i32* %27, align 4
  %152 = load i32, i32* %27, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %145
  br label %190

155:                                              ; preds = %145
  %156 = load i8*, i8** %22, align 8
  store i8* %156, i8** %21, align 8
  %157 = load i8*, i8** %22, align 8
  %158 = icmp eq i8* %157, %34
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %161 = load i8*, i8** %22, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %22, align 8
  br label %165

164:                                              ; preds = %155
  store i8* %34, i8** %22, align 8
  br label %165

165:                                              ; preds = %164, %159
  br label %166

166:                                              ; preds = %165, %127
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %24, align 8
  %169 = load i64, i64* %25, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %25, align 8
  br label %88

171:                                              ; preds = %88
  %172 = load i32*, i32** %10, align 8
  %173 = call i64 @EVP_CIPHER_nid(i32* %172)
  %174 = load i64, i64* @NID_des_ede3_cbc, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %189

176:                                              ; preds = %171
  %177 = load i32, i32* %26, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %176
  %180 = load i8*, i8** %16, align 8
  %181 = call i32 @fixup_des3_key(i8* %180)
  store i32 %181, i32* %27, align 4
  %182 = load i32, i32* %27, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %179
  %185 = load i32, i32* @ERR_LIB_PROV, align 4
  %186 = load i32, i32* @PROV_R_FAILED_TO_GENERATE_KEY, align 4
  %187 = call i32 @ERR_raise(i32 %185, i32 %186)
  br label %190

188:                                              ; preds = %179
  br label %189

189:                                              ; preds = %188, %176, %171
  store i32 1, i32* %27, align 4
  br label %190

190:                                              ; preds = %189, %184, %154, %144, %113, %109, %100, %76, %69
  %191 = load i32*, i32** %18, align 8
  %192 = call i32 @EVP_CIPHER_CTX_free(i32* %191)
  %193 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %194 = mul nsw i32 %193, 2
  %195 = call i32 @OPENSSL_cleanse(i8* %34, i32 %194)
  %196 = load i32, i32* %27, align 4
  store i32 %196, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %197

197:                                              ; preds = %190, %59, %50
  %198 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %9, align 4
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @EVP_CIPHER_nid(i32*) #2

declare dso_local i32 @ERR_raise(i32, i32) #2

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #2

declare dso_local i32 @cipher_init(i32*, i32*, i32*, i8*, i64) #2

declare dso_local i64 @EVP_CIPHER_CTX_block_size(i32*) #2

declare dso_local i32 @n_fold(i8*, i64, i8*, i64) #2

declare dso_local i32 @EVP_EncryptUpdate(i32*, i8*, i32*, i8*, i64) #2

declare dso_local i32 @EVP_EncryptFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @EVP_CIPHER_CTX_reset(i32*) #2

declare dso_local i32 @fixup_des3_key(i8*) #2

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
