; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_pbkdf2.c_pbkdf2_derive.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_pbkdf2.c_pbkdf2_derive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@KDF_PBKDF2_MAX_KEY_LEN_DIGEST_RATIO = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_INVALID_KEY_LEN = common dso_local global i32 0, align 4
@KDF_PBKDF2_MIN_KEY_LEN_BITS = common dso_local global i64 0, align 8
@KDF_PBKDF2_MIN_SALT_LEN = common dso_local global i32 0, align 4
@PROV_R_INVALID_SALT_LENGTH = common dso_local global i32 0, align 4
@KDF_PBKDF2_MIN_ITERATIONS = common dso_local global i32 0, align 4
@PROV_R_INVALID_ITERATION_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i32, i32, i32*, i8*, i64, i32)* @pbkdf2_derive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbkdf2_derive(i8* %0, i64 %1, i8* %2, i32 %3, i32 %4, i32* %5, i8* %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca [4 x i8], align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %34 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %21, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %22, align 8
  store i64 1, i64* %30, align 8
  store i32* null, i32** %31, align 8
  store i32* null, i32** %32, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 @EVP_MD_size(i32* %38)
  store i32 %39, i32* %28, align 4
  %40 = load i32, i32* %28, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %224

43:                                               ; preds = %9
  %44 = load i64, i64* %18, align 8
  %45 = load i32, i32* %28, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %44, %46
  %48 = load i64, i64* @KDF_PBKDF2_MAX_KEY_LEN_DIGEST_RATIO, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @ERR_LIB_PROV, align 4
  %52 = load i32, i32* @PROV_R_INVALID_KEY_LEN, align 4
  %53 = call i32 @ERR_raise(i32 %51, i32 %52)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %224

54:                                               ; preds = %43
  %55 = load i32, i32* %19, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %54
  %58 = load i64, i64* %18, align 8
  %59 = mul i64 %58, 8
  %60 = load i64, i64* @KDF_PBKDF2_MIN_KEY_LEN_BITS, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @ERR_LIB_PROV, align 4
  %64 = load i32, i32* @PROV_R_INVALID_KEY_LEN, align 4
  %65 = call i32 @ERR_raise(i32 %63, i32 %64)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %224

66:                                               ; preds = %57
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @KDF_PBKDF2_MIN_SALT_LEN, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @ERR_LIB_PROV, align 4
  %72 = load i32, i32* @PROV_R_INVALID_SALT_LENGTH, align 4
  %73 = call i32 @ERR_raise(i32 %71, i32 %72)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %224

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @KDF_PBKDF2_MIN_ITERATIONS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @ERR_LIB_PROV, align 4
  %80 = load i32, i32* @PROV_R_INVALID_ITERATION_COUNT, align 4
  %81 = call i32 @ERR_raise(i32 %79, i32 %80)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %224

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %54
  %84 = call i32* (...) @HMAC_CTX_new()
  store i32* %84, i32** %31, align 8
  %85 = load i32*, i32** %31, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %224

88:                                               ; preds = %83
  %89 = load i8*, i8** %17, align 8
  store i8* %89, i8** %23, align 8
  %90 = load i64, i64* %18, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %27, align 4
  %92 = load i32*, i32** %31, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @HMAC_Init_ex(i32* %92, i8* %93, i64 %94, i32* %95, i32* null)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  br label %218

99:                                               ; preds = %88
  %100 = call i32* (...) @HMAC_CTX_new()
  store i32* %100, i32** %32, align 8
  %101 = load i32*, i32** %32, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %218

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %207, %104
  %106 = load i32, i32* %27, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %217

108:                                              ; preds = %105
  %109 = load i32, i32* %27, align 4
  %110 = load i32, i32* %28, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* %28, align 4
  store i32 %113, i32* %25, align 4
  br label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %27, align 4
  store i32 %115, i32* %25, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = load i64, i64* %30, align 8
  %118 = lshr i64 %117, 24
  %119 = and i64 %118, 255
  %120 = trunc i64 %119 to i8
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  store i8 %120, i8* %121, align 1
  %122 = load i64, i64* %30, align 8
  %123 = lshr i64 %122, 16
  %124 = and i64 %123, 255
  %125 = trunc i64 %124 to i8
  %126 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 1
  store i8 %125, i8* %126, align 1
  %127 = load i64, i64* %30, align 8
  %128 = lshr i64 %127, 8
  %129 = and i64 %128, 255
  %130 = trunc i64 %129 to i8
  %131 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 2
  store i8 %130, i8* %131, align 1
  %132 = load i64, i64* %30, align 8
  %133 = and i64 %132, 255
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 3
  store i8 %134, i8* %135, align 1
  %136 = load i32*, i32** %32, align 8
  %137 = load i32*, i32** %31, align 8
  %138 = call i32 @HMAC_CTX_copy(i32* %136, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %116
  br label %218

141:                                              ; preds = %116
  %142 = load i32*, i32** %32, align 8
  %143 = load i8*, i8** %13, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @HMAC_Update(i32* %142, i8* %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load i32*, i32** %32, align 8
  %149 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %150 = call i32 @HMAC_Update(i32* %148, i8* %149, i32 4)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32*, i32** %32, align 8
  %154 = call i32 @HMAC_Final(i32* %153, i8* %37, i32* null)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %152, %147, %141
  br label %218

157:                                              ; preds = %152
  %158 = load i8*, i8** %23, align 8
  %159 = load i32, i32* %25, align 4
  %160 = call i32 @memcpy(i8* %158, i8* %37, i32 %159)
  store i32 1, i32* %29, align 4
  br label %161

161:                                              ; preds = %204, %157
  %162 = load i32, i32* %29, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %207

165:                                              ; preds = %161
  %166 = load i32*, i32** %32, align 8
  %167 = load i32*, i32** %31, align 8
  %168 = call i32 @HMAC_CTX_copy(i32* %166, i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  br label %218

171:                                              ; preds = %165
  %172 = load i32*, i32** %32, align 8
  %173 = load i32, i32* %28, align 4
  %174 = call i32 @HMAC_Update(i32* %172, i8* %37, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32*, i32** %32, align 8
  %178 = call i32 @HMAC_Final(i32* %177, i8* %37, i32* null)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176, %171
  br label %218

181:                                              ; preds = %176
  store i32 0, i32* %26, align 4
  br label %182

182:                                              ; preds = %200, %181
  %183 = load i32, i32* %26, align 4
  %184 = load i32, i32* %25, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %182
  %187 = load i32, i32* %26, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %37, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = load i8*, i8** %23, align 8
  %193 = load i32, i32* %26, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = xor i32 %197, %191
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %195, align 1
  br label %200

200:                                              ; preds = %186
  %201 = load i32, i32* %26, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %26, align 4
  br label %182

203:                                              ; preds = %182
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %29, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %29, align 4
  br label %161

207:                                              ; preds = %161
  %208 = load i32, i32* %25, align 4
  %209 = load i32, i32* %27, align 4
  %210 = sub nsw i32 %209, %208
  store i32 %210, i32* %27, align 4
  %211 = load i64, i64* %30, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %30, align 8
  %213 = load i32, i32* %25, align 4
  %214 = load i8*, i8** %23, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %23, align 8
  br label %105

217:                                              ; preds = %105
  store i32 1, i32* %20, align 4
  br label %218

218:                                              ; preds = %217, %180, %170, %156, %140, %103, %98
  %219 = load i32*, i32** %32, align 8
  %220 = call i32 @HMAC_CTX_free(i32* %219)
  %221 = load i32*, i32** %31, align 8
  %222 = call i32 @HMAC_CTX_free(i32* %221)
  %223 = load i32, i32* %20, align 4
  store i32 %223, i32* %10, align 4
  store i32 1, i32* %33, align 4
  br label %224

224:                                              ; preds = %218, %87, %78, %70, %62, %50, %42
  %225 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %225)
  %226 = load i32, i32* %10, align 4
  ret i32 %226
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @ERR_raise(i32, i32) #2

declare dso_local i32* @HMAC_CTX_new(...) #2

declare dso_local i32 @HMAC_Init_ex(i32*, i8*, i64, i32*, i32*) #2

declare dso_local i32 @HMAC_CTX_copy(i32*, i32*) #2

declare dso_local i32 @HMAC_Update(i32*, i8*, i32) #2

declare dso_local i32 @HMAC_Final(i32*, i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @HMAC_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
