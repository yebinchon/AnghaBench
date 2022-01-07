; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_t_conf.c_BN_mod_exp_mont.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_t_conf.c_BN_mod_exp_mont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32* }

@TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mod_exp_mont(%struct.TYPE_27__* %0, %struct.TYPE_27__* %1, %struct.TYPE_27__* %2, %struct.TYPE_27__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_27__*, align 8
  %25 = alloca %struct.TYPE_27__*, align 8
  %26 = alloca %struct.TYPE_27__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %31 = load i32, i32* @TABLE_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %27, align 8
  %34 = alloca %struct.TYPE_27__, i64 %32, align 16
  store i64 %32, i64* %28, align 8
  store i32* null, i32** %29, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %36 = call i32 @bn_check_top(%struct.TYPE_27__* %35)
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %38 = call i32 @bn_check_top(%struct.TYPE_27__* %37)
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %40 = call i32 @bn_check_top(%struct.TYPE_27__* %39)
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %308

49:                                               ; preds = %6
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %51 = call i32 @BN_num_bits(%struct.TYPE_27__* %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %56 = call i32 @BN_one(%struct.TYPE_27__* %55)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %308

57:                                               ; preds = %49
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @BN_CTX_start(i32* %58)
  %60 = load i32*, i32** %12, align 8
  %61 = call %struct.TYPE_27__* @BN_CTX_get(i32* %60)
  store %struct.TYPE_27__* %61, %struct.TYPE_27__** %24, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call %struct.TYPE_27__* @BN_CTX_get(i32* %62)
  store %struct.TYPE_27__* %63, %struct.TYPE_27__** %25, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %65 = icmp eq %struct.TYPE_27__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %68 = icmp eq %struct.TYPE_27__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %57
  br label %282

70:                                               ; preds = %66
  %71 = load i32*, i32** %13, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32*, i32** %13, align 8
  store i32* %74, i32** %29, align 8
  br label %87

75:                                               ; preds = %70
  %76 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %76, i32** %29, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %282

79:                                               ; preds = %75
  %80 = load i32*, i32** %29, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @BN_MONT_CTX_set(i32* %80, %struct.TYPE_27__* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %282

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %73
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 0
  %89 = call i32 @BN_init(%struct.TYPE_27__* %88)
  store i32 1, i32* %23, align 4
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %92 = call i64 @BN_ucmp(%struct.TYPE_27__* %90, %struct.TYPE_27__* %91)
  %93 = icmp sge i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 0
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @BN_mod(%struct.TYPE_27__* %95, %struct.TYPE_27__* %96, %struct.TYPE_27__* %97, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  br label %282

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 0
  store %struct.TYPE_27__* %103, %struct.TYPE_27__** %26, align 8
  br label %106

104:                                              ; preds = %87
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %105, %struct.TYPE_27__** %26, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 0
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  %109 = load i32*, i32** %29, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @BN_to_montgomery(%struct.TYPE_27__* %107, %struct.TYPE_27__* %108, i32* %109, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %106
  br label %282

114:                                              ; preds = %106
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @BN_window_bits_for_exponent_size(i32 %115)
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %20, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %160

119:                                              ; preds = %114
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 0
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 0
  %123 = load i32*, i32** %29, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_27__* %120, %struct.TYPE_27__* %121, %struct.TYPE_27__* %122, i32* %123, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %119
  br label %282

128:                                              ; preds = %119
  %129 = load i32, i32* %20, align 4
  %130 = sub nsw i32 %129, 1
  %131 = shl i32 1, %130
  store i32 %131, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %132

132:                                              ; preds = %155, %128
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %132
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 %138
  %140 = call i32 @BN_init(%struct.TYPE_27__* %139)
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 %142
  %144 = load i32, i32* %14, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 %146
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %149 = load i32*, i32** %29, align 8
  %150 = load i32*, i32** %12, align 8
  %151 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_27__* %143, %struct.TYPE_27__* %147, %struct.TYPE_27__* %148, i32* %149, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %136
  br label %282

154:                                              ; preds = %136
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  br label %132

158:                                              ; preds = %132
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %23, align 4
  br label %160

160:                                              ; preds = %158, %114
  store i32 1, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %161 = load i32, i32* %16, align 4
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %164 = call %struct.TYPE_27__* (...) @BN_value_one()
  %165 = load i32*, i32** %29, align 8
  %166 = load i32*, i32** %12, align 8
  %167 = call i32 @BN_to_montgomery(%struct.TYPE_27__* %163, %struct.TYPE_27__* %164, i32* %165, i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %160
  br label %282

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %272, %193, %170
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %173 = load i32, i32* %18, align 4
  %174 = call i64 @BN_is_bit_set(%struct.TYPE_27__* %172, i32 %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %171
  %177 = load i32, i32* %22, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %176
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %183 = load i32*, i32** %29, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_27__* %180, %struct.TYPE_27__* %181, %struct.TYPE_27__* %182, i32* %183, i32* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %179
  br label %282

188:                                              ; preds = %179
  br label %189

189:                                              ; preds = %188, %176
  %190 = load i32, i32* %18, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %273

193:                                              ; preds = %189
  %194 = load i32, i32* %18, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %18, align 4
  br label %171

196:                                              ; preds = %171
  %197 = load i32, i32* %18, align 4
  store i32 %197, i32* %15, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %19, align 4
  store i32 1, i32* %14, align 4
  br label %198

198:                                              ; preds = %225, %196
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %20, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %228

202:                                              ; preds = %198
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* %14, align 4
  %205 = sub nsw i32 %203, %204
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %228

208:                                              ; preds = %202
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* %14, align 4
  %212 = sub nsw i32 %210, %211
  %213 = call i64 @BN_is_bit_set(%struct.TYPE_27__* %209, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %208
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* %19, align 4
  %218 = sub nsw i32 %216, %217
  %219 = load i32, i32* %21, align 4
  %220 = shl i32 %219, %218
  store i32 %220, i32* %21, align 4
  %221 = load i32, i32* %21, align 4
  %222 = or i32 %221, 1
  store i32 %222, i32* %21, align 4
  %223 = load i32, i32* %14, align 4
  store i32 %223, i32* %19, align 4
  br label %224

224:                                              ; preds = %215, %208
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %14, align 4
  br label %198

228:                                              ; preds = %207, %198
  %229 = load i32, i32* %19, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* %22, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %252, label %233

233:                                              ; preds = %228
  store i32 0, i32* %14, align 4
  br label %234

234:                                              ; preds = %248, %233
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* %15, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %234
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %242 = load i32*, i32** %29, align 8
  %243 = load i32*, i32** %12, align 8
  %244 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_27__* %239, %struct.TYPE_27__* %240, %struct.TYPE_27__* %241, i32* %242, i32* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %238
  br label %282

247:                                              ; preds = %238
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %14, align 4
  br label %234

251:                                              ; preds = %234
  br label %252

252:                                              ; preds = %251, %228
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %255 = load i32, i32* %21, align 4
  %256 = ashr i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 %257
  %259 = load i32*, i32** %29, align 8
  %260 = load i32*, i32** %12, align 8
  %261 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_27__* %253, %struct.TYPE_27__* %254, %struct.TYPE_27__* %258, i32* %259, i32* %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %252
  br label %282

264:                                              ; preds = %252
  %265 = load i32, i32* %19, align 4
  %266 = add nsw i32 %265, 1
  %267 = load i32, i32* %18, align 4
  %268 = sub nsw i32 %267, %266
  store i32 %268, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %269 = load i32, i32* %18, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %264
  br label %273

272:                                              ; preds = %264
  br label %171

273:                                              ; preds = %271, %192
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %276 = load i32*, i32** %29, align 8
  %277 = load i32*, i32** %12, align 8
  %278 = call i32 @BN_from_montgomery(%struct.TYPE_27__* %274, %struct.TYPE_27__* %275, i32* %276, i32* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %273
  br label %282

281:                                              ; preds = %273
  store i32 1, i32* %17, align 4
  br label %282

282:                                              ; preds = %281, %280, %263, %246, %187, %169, %153, %127, %113, %101, %85, %78, %69
  %283 = load i32*, i32** %13, align 8
  %284 = icmp eq i32* %283, null
  br i1 %284, label %285, label %291

285:                                              ; preds = %282
  %286 = load i32*, i32** %29, align 8
  %287 = icmp ne i32* %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i32*, i32** %29, align 8
  %290 = call i32 @BN_MONT_CTX_free(i32* %289)
  br label %291

291:                                              ; preds = %288, %285, %282
  %292 = load i32*, i32** %12, align 8
  %293 = call i32 @BN_CTX_end(i32* %292)
  store i32 0, i32* %14, align 4
  br label %294

294:                                              ; preds = %303, %291
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %23, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %306

298:                                              ; preds = %294
  %299 = load i32, i32* %14, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i64 %300
  %302 = call i32 @BN_clear_free(%struct.TYPE_27__* %301)
  br label %303

303:                                              ; preds = %298
  %304 = load i32, i32* %14, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %14, align 4
  br label %294

306:                                              ; preds = %294
  %307 = load i32, i32* %17, align 4
  store i32 %307, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %308

308:                                              ; preds = %306, %54, %48
  %309 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %309)
  %310 = load i32, i32* %7, align 4
  ret i32 %310
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bn_check_top(%struct.TYPE_27__*) #2

declare dso_local i32 @BN_num_bits(%struct.TYPE_27__*) #2

declare dso_local i32 @BN_one(%struct.TYPE_27__*) #2

declare dso_local i32 @BN_CTX_start(i32*) #2

declare dso_local %struct.TYPE_27__* @BN_CTX_get(i32*) #2

declare dso_local i32* @BN_MONT_CTX_new(...) #2

declare dso_local i32 @BN_MONT_CTX_set(i32*, %struct.TYPE_27__*, i32*) #2

declare dso_local i32 @BN_init(%struct.TYPE_27__*) #2

declare dso_local i64 @BN_ucmp(%struct.TYPE_27__*, %struct.TYPE_27__*) #2

declare dso_local i32 @BN_mod(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32*) #2

declare dso_local i32 @BN_to_montgomery(%struct.TYPE_27__*, %struct.TYPE_27__*, i32*, i32*) #2

declare dso_local i32 @BN_window_bits_for_exponent_size(i32) #2

declare dso_local i32 @BN_mod_mul_montgomery(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32*, i32*) #2

declare dso_local %struct.TYPE_27__* @BN_value_one(...) #2

declare dso_local i64 @BN_is_bit_set(%struct.TYPE_27__*, i32) #2

declare dso_local i32 @BN_from_montgomery(%struct.TYPE_27__*, %struct.TYPE_27__*, i32*, i32*) #2

declare dso_local i32 @BN_MONT_CTX_free(i32*) #2

declare dso_local i32 @BN_CTX_end(i32*) #2

declare dso_local i32 @BN_clear_free(%struct.TYPE_27__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
