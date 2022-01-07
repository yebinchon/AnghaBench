; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_DecryptUpdate.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_enc.c_EVP_DecryptUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i8*, i32, %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_8__ = type { i32 (i32, i8*, i64*, i32, i8*, i64)*, i32, i32, i32 (%struct.TYPE_9__*, i8*, i8*, i32)*, i32* }

@EVP_F_EVP_DECRYPTUPDATE = common dso_local global i32 0, align 4
@EVP_R_INVALID_OPERATION = common dso_local global i32 0, align 4
@EVP_R_NO_CIPHER_SET = common dso_local global i32 0, align 4
@EVP_R_UPDATE_ERROR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@EVP_CIPH_FLAG_LENGTH_BITS = common dso_local global i32 0, align 4
@EVP_CIPH_FLAG_CUSTOM_CIPHER = common dso_local global i32 0, align 4
@EVP_R_PARTIALLY_OVERLAPPING = common dso_local global i32 0, align 4
@EVP_CIPH_NO_PADDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DecryptUpdate(%struct.TYPE_9__* %0, i8* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @EVP_F_EVP_DECRYPTUPDATE, align 4
  %25 = load i32, i32* @EVP_R_INVALID_OPERATION, align 4
  %26 = call i32 @EVPerr(i32 %24, i32 %25)
  store i32 0, i32* %6, align 4
  br label %260

27:                                               ; preds = %5
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp eq %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @EVP_F_EVP_DECRYPTUPDATE, align 4
  %34 = load i32, i32* @EVP_R_NO_CIPHER_SET, align 4
  %35 = call i32 @EVPerr(i32 %33, i32 %34)
  store i32 0, i32* %6, align 4
  br label %260

36:                                               ; preds = %27
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %99

44:                                               ; preds = %36
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = call i32 @EVP_CIPHER_CTX_block_size(%struct.TYPE_9__* %45)
  store i32 %46, i32* %17, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32 (i32, i8*, i64*, i32, i8*, i64)*, i32 (i32, i8*, i64*, i32, i8*, i64)** %50, align 8
  %52 = icmp eq i32 (i32, i8*, i64*, i32, i8*, i64)* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %53, %44
  %57 = load i32, i32* @EVP_F_EVP_DECRYPTUPDATE, align 4
  %58 = load i32, i32* @EVP_R_UPDATE_ERROR, align 4
  %59 = call i32 @EVPerr(i32 %57, i32 %58)
  store i32 0, i32* %6, align 4
  br label %260

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32 (i32, i8*, i64*, i32, i8*, i64)*, i32 (i32, i8*, i64*, i32, i8*, i64)** %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %76

74:                                               ; preds = %60
  %75 = load i32, i32* %17, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ 0, %73 ], [ %75, %74 ]
  %78 = add nsw i32 %70, %77
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = call i32 %65(i32 %68, i8* %69, i64* %16, i32 %78, i8* %79, i64 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %76
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* @INT_MAX, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @EVP_F_EVP_DECRYPTUPDATE, align 4
  %91 = load i32, i32* @EVP_R_UPDATE_ERROR, align 4
  %92 = call i32 @EVPerr(i32 %90, i32 %91)
  store i32 0, i32* %6, align 4
  br label %260

93:                                               ; preds = %85
  %94 = load i64, i64* %16, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %76
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %6, align 4
  br label %260

99:                                               ; preds = %43
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %15, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = load i32, i32* @EVP_CIPH_FLAG_LENGTH_BITS, align 4
  %107 = call i64 @EVP_CIPHER_CTX_test_flags(%struct.TYPE_9__* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 7
  %112 = sdiv i32 %111, 8
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %109, %99
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @EVP_CIPH_FLAG_CUSTOM_CIPHER, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %154

122:                                              ; preds = %113
  %123 = load i32, i32* %15, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i8*, i8** %8, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i64 @is_partially_overlapping(i8* %126, i8* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* @EVP_F_EVP_DECRYPTUPDATE, align 4
  %133 = load i32, i32* @EVP_R_PARTIALLY_OVERLAPPING, align 4
  %134 = call i32 @EVPerr(i32 %132, i32 %133)
  store i32 0, i32* %6, align 4
  br label %260

135:                                              ; preds = %125, %122
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 3
  %140 = load i32 (%struct.TYPE_9__*, i8*, i8*, i32)*, i32 (%struct.TYPE_9__*, i8*, i8*, i32)** %139, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 %140(%struct.TYPE_9__* %141, i8* %142, i8* %143, i32 %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %135
  %149 = load i32*, i32** %9, align 8
  store i32 0, i32* %149, align 4
  store i32 0, i32* %6, align 4
  br label %260

150:                                              ; preds = %135
  %151 = load i32, i32* %12, align 4
  %152 = load i32*, i32** %9, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %150
  store i32 1, i32* %6, align 4
  br label %260

154:                                              ; preds = %113
  %155 = load i32, i32* %11, align 4
  %156 = icmp sle i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i32*, i32** %9, align 8
  store i32 0, i32* %158, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp eq i32 %159, 0
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %6, align 4
  br label %260

162:                                              ; preds = %154
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @EVP_CIPH_NO_PADDING, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @evp_EncryptDecryptUpdate(%struct.TYPE_9__* %170, i8* %171, i32* %172, i8* %173, i32 %174)
  store i32 %175, i32* %6, align 4
  br label %260

176:                                              ; preds = %162
  %177 = load i32, i32* %15, align 4
  %178 = zext i32 %177 to i64
  %179 = icmp ule i64 %178, 8
  %180 = zext i1 %179 to i32
  %181 = call i32 @OPENSSL_assert(i32 %180)
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %213

186:                                              ; preds = %176
  %187 = load i8*, i8** %8, align 8
  %188 = ptrtoint i8* %187 to i64
  %189 = load i8*, i8** %10, align 8
  %190 = ptrtoint i8* %189 to i64
  %191 = icmp eq i64 %188, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %186
  %193 = load i8*, i8** %8, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i64 @is_partially_overlapping(i8* %193, i8* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %192, %186
  %199 = load i32, i32* @EVP_F_EVP_DECRYPTUPDATE, align 4
  %200 = load i32, i32* @EVP_R_PARTIALLY_OVERLAPPING, align 4
  %201 = call i32 @EVPerr(i32 %199, i32 %200)
  store i32 0, i32* %6, align 4
  br label %260

202:                                              ; preds = %192
  %203 = load i8*, i8** %8, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* %15, align 4
  %208 = call i32 @memcpy(i8* %203, i8* %206, i32 %207)
  %209 = load i32, i32* %15, align 4
  %210 = load i8*, i8** %8, align 8
  %211 = zext i32 %209 to i64
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8* %212, i8** %8, align 8
  store i32 1, i32* %12, align 4
  br label %214

213:                                              ; preds = %176
  store i32 0, i32* %12, align 4
  br label %214

214:                                              ; preds = %213, %202
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = load i32*, i32** %9, align 8
  %218 = load i8*, i8** %10, align 8
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @evp_EncryptDecryptUpdate(%struct.TYPE_9__* %215, i8* %216, i32* %217, i8* %218, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %214
  store i32 0, i32* %6, align 4
  br label %260

223:                                              ; preds = %214
  %224 = load i32, i32* %15, align 4
  %225 = icmp ugt i32 %224, 1
  br i1 %225, label %226, label %248

226:                                              ; preds = %223
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %248, label %231

231:                                              ; preds = %226
  %232 = load i32, i32* %15, align 4
  %233 = load i32*, i32** %9, align 8
  %234 = load i32, i32* %233, align 4
  %235 = sub i32 %234, %232
  store i32 %235, i32* %233, align 4
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  store i32 1, i32* %237, align 4
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = load i8*, i8** %8, align 8
  %242 = load i32*, i32** %9, align 8
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %241, i64 %244
  %246 = load i32, i32* %15, align 4
  %247 = call i32 @memcpy(i8* %240, i8* %245, i32 %246)
  br label %251

248:                                              ; preds = %226, %223
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  store i32 0, i32* %250, align 4
  br label %251

251:                                              ; preds = %248, %231
  %252 = load i32, i32* %12, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load i32, i32* %15, align 4
  %256 = load i32*, i32** %9, align 8
  %257 = load i32, i32* %256, align 4
  %258 = add i32 %257, %255
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %254, %251
  store i32 1, i32* %6, align 4
  br label %260

260:                                              ; preds = %259, %222, %198, %169, %157, %153, %148, %131, %97, %89, %56, %32, %23
  %261 = load i32, i32* %6, align 4
  ret i32 %261
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_block_size(%struct.TYPE_9__*) #1

declare dso_local i64 @EVP_CIPHER_CTX_test_flags(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @is_partially_overlapping(i8*, i8*, i32) #1

declare dso_local i32 @evp_EncryptDecryptUpdate(%struct.TYPE_9__*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
