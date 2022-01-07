; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_obj2txt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_obj2txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@NID_undef = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c".%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_obj2txt(i8* %0, i32 %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8, align 1
  %24 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = call i64 @DECIMAL_SIZE(i64 %26)
  %28 = load i64, i64* %17, align 8
  %29 = call i64 @DECIMAL_SIZE(i64 %28)
  %30 = add nsw i64 %27, %29
  %31 = add nsw i64 %30, 2
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %19, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %39, %36, %4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = icmp eq %struct.TYPE_4__* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %42
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %312

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = call i32 @OBJ_obj2nid(%struct.TYPE_4__* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* @NID_undef, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  %61 = call i8* @OBJ_nid2ln(i32 %60)
  store i8* %61, i8** %22, align 8
  %62 = load i8*, i8** %22, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  %66 = call i8* @OBJ_nid2sn(i32 %65)
  store i8* %66, i8** %22, align 8
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i8*, i8** %22, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %22, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @OPENSSL_strlcpy(i8* %74, i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %70
  %79 = load i8*, i8** %22, align 8
  %80 = call i32 @strlen(i8* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %312

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %54, %51
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %12, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %18, align 8
  store i32 1, i32* %14, align 4
  store i32* null, i32** %16, align 8
  br label %90

90:                                               ; preds = %304, %83
  %91 = load i32, i32* %12, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %305

93:                                               ; preds = %90
  store i64 0, i64* %17, align 8
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %169, %93
  %95 = load i8*, i8** %18, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %18, align 8
  %97 = load i8, i8* %95, align 1
  store i8 %97, i8* %23, align 1
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load i8, i8* %23, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 128
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %309

108:                                              ; preds = %102, %94
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load i32*, i32** %16, align 8
  %113 = load i8, i8* %23, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 127
  %116 = trunc i32 %115 to i8
  %117 = call i32 @BN_add_word(i32* %112, i8 zeroext %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %111
  br label %309

120:                                              ; preds = %111
  br label %128

121:                                              ; preds = %108
  %122 = load i8, i8* %23, align 1
  %123 = zext i8 %122 to i32
  %124 = and i32 %123, 127
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %17, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %17, align 8
  br label %128

128:                                              ; preds = %121, %120
  %129 = load i8, i8* %23, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, 128
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  br label %170

134:                                              ; preds = %128
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %156, label %137

137:                                              ; preds = %134
  %138 = load i64, i64* %17, align 8
  %139 = load i64, i64* @ULONG_MAX, align 8
  %140 = ashr i64 %139, 7
  %141 = icmp ugt i64 %138, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %137
  %143 = load i32*, i32** %16, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = call i32* (...) @BN_new()
  store i32* %146, i32** %16, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %309

149:                                              ; preds = %145, %142
  %150 = load i32*, i32** %16, align 8
  %151 = load i64, i64* %17, align 8
  %152 = call i32 @BN_set_word(i32* %150, i64 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  br label %309

155:                                              ; preds = %149
  store i32 1, i32* %15, align 4
  br label %156

156:                                              ; preds = %155, %137, %134
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i32*, i32** %16, align 8
  %161 = load i32*, i32** %16, align 8
  %162 = call i32 @BN_lshift(i32* %160, i32* %161, i32 7)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  br label %309

165:                                              ; preds = %159
  br label %169

166:                                              ; preds = %156
  %167 = load i64, i64* %17, align 8
  %168 = shl i64 %167, 7
  store i64 %168, i64* %17, align 8
  br label %169

169:                                              ; preds = %166, %165
  br label %94

170:                                              ; preds = %133
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %216

173:                                              ; preds = %170
  store i32 0, i32* %14, align 4
  %174 = load i64, i64* %17, align 8
  %175 = icmp uge i64 %174, 80
  br i1 %175, label %176, label %189

176:                                              ; preds = %173
  store i32 2, i32* %10, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i32*, i32** %16, align 8
  %181 = call i32 @BN_sub_word(i32* %180, i32 80)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  br label %309

184:                                              ; preds = %179
  br label %188

185:                                              ; preds = %176
  %186 = load i64, i64* %17, align 8
  %187 = sub i64 %186, 80
  store i64 %187, i64* %17, align 8
  br label %188

188:                                              ; preds = %185, %184
  br label %198

189:                                              ; preds = %173
  %190 = load i64, i64* %17, align 8
  %191 = udiv i64 %190, 40
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = mul nsw i32 %193, 40
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %17, align 8
  %197 = sub i64 %196, %195
  store i64 %197, i64* %17, align 8
  br label %198

198:                                              ; preds = %189, %188
  %199 = load i8*, i8** %6, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load i32, i32* %7, align 4
  %203 = icmp sgt i32 %202, 1
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 48
  %207 = trunc i32 %206 to i8
  %208 = load i8*, i8** %6, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %6, align 8
  store i8 %207, i8* %208, align 1
  %210 = load i8*, i8** %6, align 8
  store i8 0, i8* %210, align 1
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %204, %201, %198
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %216

216:                                              ; preds = %213, %170
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %269

219:                                              ; preds = %216
  %220 = load i32*, i32** %16, align 8
  %221 = call i8* @BN_bn2dec(i32* %220)
  store i8* %221, i8** %24, align 8
  %222 = load i8*, i8** %24, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  br label %309

225:                                              ; preds = %219
  %226 = load i8*, i8** %24, align 8
  %227 = call i32 @strlen(i8* %226)
  store i32 %227, i32* %10, align 4
  %228 = load i8*, i8** %6, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %261

230:                                              ; preds = %225
  %231 = load i32, i32* %7, align 4
  %232 = icmp sgt i32 %231, 1
  br i1 %232, label %233, label %239

233:                                              ; preds = %230
  %234 = load i8*, i8** %6, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %6, align 8
  store i8 46, i8* %234, align 1
  %236 = load i8*, i8** %6, align 8
  store i8 0, i8* %236, align 1
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %7, align 4
  br label %239

239:                                              ; preds = %233, %230
  %240 = load i8*, i8** %6, align 8
  %241 = load i8*, i8** %24, align 8
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @OPENSSL_strlcpy(i8* %240, i8* %241, i32 %242)
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %7, align 4
  %246 = icmp sgt i32 %244, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %239
  %248 = load i32, i32* %7, align 4
  %249 = load i8*, i8** %6, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8* %251, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %260

252:                                              ; preds = %239
  %253 = load i32, i32* %10, align 4
  %254 = load i8*, i8** %6, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8* %256, i8** %6, align 8
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %7, align 4
  %259 = sub nsw i32 %258, %257
  store i32 %259, i32* %7, align 4
  br label %260

260:                                              ; preds = %252, %247
  br label %261

261:                                              ; preds = %260, %225
  %262 = load i32, i32* %11, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %11, align 4
  %267 = load i8*, i8** %24, align 8
  %268 = call i32 @OPENSSL_free(i8* %267)
  br label %304

269:                                              ; preds = %216
  %270 = trunc i64 %31 to i32
  %271 = load i64, i64* %17, align 8
  %272 = call i32 @BIO_snprintf(i8* %33, i32 %270, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %271)
  %273 = call i32 @strlen(i8* %33)
  store i32 %273, i32* %10, align 4
  %274 = load i8*, i8** %6, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %300

276:                                              ; preds = %269
  %277 = load i32, i32* %7, align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %300

279:                                              ; preds = %276
  %280 = load i8*, i8** %6, align 8
  %281 = load i32, i32* %7, align 4
  %282 = call i32 @OPENSSL_strlcpy(i8* %280, i8* %33, i32 %281)
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* %7, align 4
  %285 = icmp sgt i32 %283, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %279
  %287 = load i32, i32* %7, align 4
  %288 = load i8*, i8** %6, align 8
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i8, i8* %288, i64 %289
  store i8* %290, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %299

291:                                              ; preds = %279
  %292 = load i32, i32* %10, align 4
  %293 = load i8*, i8** %6, align 8
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds i8, i8* %293, i64 %294
  store i8* %295, i8** %6, align 8
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* %7, align 4
  %298 = sub nsw i32 %297, %296
  store i32 %298, i32* %7, align 4
  br label %299

299:                                              ; preds = %291, %286
  br label %300

300:                                              ; preds = %299, %276, %269
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* %11, align 4
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* %11, align 4
  store i64 0, i64* %17, align 8
  br label %304

304:                                              ; preds = %300, %261
  br label %90

305:                                              ; preds = %90
  %306 = load i32*, i32** %16, align 8
  %307 = call i32 @BN_free(i32* %306)
  %308 = load i32, i32* %11, align 4
  store i32 %308, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %312

309:                                              ; preds = %224, %183, %164, %154, %148, %119, %107
  %310 = load i32*, i32** %16, align 8
  %311 = call i32 @BN_free(i32* %310)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %312

312:                                              ; preds = %309, %305, %78, %50
  %313 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %313)
  %314 = load i32, i32* %5, align 4
  ret i32 %314
}

declare dso_local i64 @DECIMAL_SIZE(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @OBJ_obj2nid(%struct.TYPE_4__*) #1

declare dso_local i8* @OBJ_nid2ln(i32) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @BN_add_word(i32*, i8 zeroext) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i64) #1

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #1

declare dso_local i32 @BN_sub_word(i32*, i32) #1

declare dso_local i8* @BN_bn2dec(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @BN_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
