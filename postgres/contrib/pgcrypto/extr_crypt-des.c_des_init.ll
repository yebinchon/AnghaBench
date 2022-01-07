; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-des.c_des_init.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-des.c_des_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@old_rawkey1 = common dso_local global i64 0, align 8
@old_rawkey0 = common dso_local global i64 0, align 8
@saltbits = common dso_local global i64 0, align 8
@old_salt = common dso_local global i64 0, align 8
@_crypt_bits32 = common dso_local global i64* null, align 8
@bits28 = common dso_local global i64* null, align 8
@bits24 = common dso_local global i64* null, align 8
@sbox = common dso_local global i32** null, align 8
@u_sbox = common dso_local global i32** null, align 8
@m_sbox = common dso_local global i32** null, align 8
@init_perm = common dso_local global i32* null, align 8
@IP = common dso_local global i64* null, align 8
@final_perm = common dso_local global i64* null, align 8
@inv_key_perm = common dso_local global i32* null, align 8
@key_perm = common dso_local global i32* null, align 8
@u_key_perm = common dso_local global i32* null, align 8
@inv_comp_perm = common dso_local global i32* null, align 8
@comp_perm = common dso_local global i32* null, align 8
@ip_maskl = common dso_local global i64** null, align 8
@ip_maskr = common dso_local global i64** null, align 8
@fp_maskl = common dso_local global i64** null, align 8
@fp_maskr = common dso_local global i64** null, align 8
@_crypt_bits8 = common dso_local global i32* null, align 8
@key_perm_maskl = common dso_local global i64** null, align 8
@key_perm_maskr = common dso_local global i64** null, align 8
@comp_maskl = common dso_local global i64** null, align 8
@comp_maskr = common dso_local global i64** null, align 8
@un_pbox = common dso_local global i64* null, align 8
@pbox = common dso_local global i32* null, align 8
@psbox = common dso_local global i64** null, align 8
@des_initialised = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @des_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store i64 0, i64* @old_rawkey1, align 8
  store i64 0, i64* @old_rawkey0, align 8
  store i64 0, i64* @saltbits, align 8
  store i64 0, i64* @old_salt, align 8
  %12 = load i64*, i64** @_crypt_bits32, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 4
  store i64* %13, i64** @bits28, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 4
  store i64* %14, i64** @bits24, align 8
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %54, %0
  %16 = load i32, i32* %1, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %57

18:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %50, %18
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 64
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 32
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %25, 1
  %27 = shl i32 %26, 4
  %28 = or i32 %24, %27
  %29 = load i32, i32* %2, align 4
  %30 = ashr i32 %29, 1
  %31 = and i32 %30, 15
  %32 = or i32 %28, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32**, i32*** @sbox, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32**, i32*** @u_sbox, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %41, i32* %49, align 4
  br label %50

50:                                               ; preds = %22
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %19

53:                                               ; preds = %19
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %15

57:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %112, %57
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %115

61:                                               ; preds = %58
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %108, %61
  %63 = load i32, i32* %1, align 4
  %64 = icmp slt i32 %63, 64
  br i1 %64, label %65, label %111

65:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %104, %65
  %67 = load i32, i32* %2, align 4
  %68 = icmp slt i32 %67, 64
  br i1 %68, label %69, label %107

69:                                               ; preds = %66
  %70 = load i32**, i32*** @u_sbox, align 8
  %71 = load i32, i32* %3, align 4
  %72 = shl i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %70, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 4
  %81 = load i32**, i32*** @u_sbox, align 8
  %82 = load i32, i32* %3, align 4
  %83 = shl i32 %82, 1
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %81, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %80, %91
  %93 = load i32**, i32*** @m_sbox, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %1, align 4
  %99 = shl i32 %98, 6
  %100 = load i32, i32* %2, align 4
  %101 = or i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  store i32 %92, i32* %103, align 4
  br label %104

104:                                              ; preds = %69
  %105 = load i32, i32* %2, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %2, align 4
  br label %66

107:                                              ; preds = %66
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %1, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %1, align 4
  br label %62

111:                                              ; preds = %62
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %58

115:                                              ; preds = %58
  store i32 0, i32* %1, align 4
  br label %116

116:                                              ; preds = %137, %115
  %117 = load i32, i32* %1, align 4
  %118 = icmp slt i32 %117, 64
  br i1 %118, label %119, label %140

119:                                              ; preds = %116
  %120 = load i32, i32* %1, align 4
  %121 = load i32*, i32** @init_perm, align 8
  %122 = load i64*, i64** @IP, align 8
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %126, 1
  %128 = load i64*, i64** @final_perm, align 8
  %129 = load i32, i32* %1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64 %127, i64* %131, align 8
  %132 = getelementptr inbounds i32, i32* %121, i64 %127
  store i32 %120, i32* %132, align 4
  %133 = load i32*, i32** @inv_key_perm, align 8
  %134 = load i32, i32* %1, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 255, i32* %136, align 4
  br label %137

137:                                              ; preds = %119
  %138 = load i32, i32* %1, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %1, align 4
  br label %116

140:                                              ; preds = %116
  store i32 0, i32* %1, align 4
  br label %141

141:                                              ; preds = %169, %140
  %142 = load i32, i32* %1, align 4
  %143 = icmp slt i32 %142, 56
  br i1 %143, label %144, label %172

144:                                              ; preds = %141
  %145 = load i32*, i32** @key_perm, align 8
  %146 = load i32, i32* %1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 1
  %151 = load i32*, i32** @u_key_perm, align 8
  %152 = load i32, i32* %1, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %150, i32* %154, align 4
  %155 = load i32, i32* %1, align 4
  %156 = load i32*, i32** @inv_key_perm, align 8
  %157 = load i32*, i32** @key_perm, align 8
  %158 = load i32, i32* %1, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %156, i64 %163
  store i32 %155, i32* %164, align 4
  %165 = load i32*, i32** @inv_comp_perm, align 8
  %166 = load i32, i32* %1, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 255, i32* %168, align 4
  br label %169

169:                                              ; preds = %144
  %170 = load i32, i32* %1, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %1, align 4
  br label %141

172:                                              ; preds = %141
  store i32 0, i32* %1, align 4
  br label %173

173:                                              ; preds = %187, %172
  %174 = load i32, i32* %1, align 4
  %175 = icmp slt i32 %174, 48
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  %177 = load i32, i32* %1, align 4
  %178 = load i32*, i32** @inv_comp_perm, align 8
  %179 = load i32*, i32** @comp_perm, align 8
  %180 = load i32, i32* %1, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %178, i64 %185
  store i32 %177, i32* %186, align 4
  br label %187

187:                                              ; preds = %176
  %188 = load i32, i32* %1, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %1, align 4
  br label %173

190:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %456, %190
  %192 = load i32, i32* %4, align 4
  %193 = icmp slt i32 %192, 8
  br i1 %193, label %194, label %459

194:                                              ; preds = %191
  store i32 0, i32* %1, align 4
  br label %195

195:                                              ; preds = %306, %194
  %196 = load i32, i32* %1, align 4
  %197 = icmp slt i32 %196, 256
  br i1 %197, label %198, label %309

198:                                              ; preds = %195
  %199 = load i64**, i64*** @ip_maskl, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64*, i64** %199, i64 %201
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %1, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  store i64* %206, i64** %8, align 8
  store i64 0, i64* %206, align 8
  %207 = load i64**, i64*** @ip_maskr, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64*, i64** %207, i64 %209
  %211 = load i64*, i64** %210, align 8
  %212 = load i32, i32* %1, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  store i64* %214, i64** %9, align 8
  store i64 0, i64* %214, align 8
  %215 = load i64**, i64*** @fp_maskl, align 8
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64*, i64** %215, i64 %217
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %1, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  store i64* %222, i64** %10, align 8
  store i64 0, i64* %222, align 8
  %223 = load i64**, i64*** @fp_maskr, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64*, i64** %223, i64 %225
  %227 = load i64*, i64** %226, align 8
  %228 = load i32, i32* %1, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  store i64* %230, i64** %11, align 8
  store i64 0, i64* %230, align 8
  store i32 0, i32* %2, align 4
  br label %231

231:                                              ; preds = %302, %198
  %232 = load i32, i32* %2, align 4
  %233 = icmp slt i32 %232, 8
  br i1 %233, label %234, label %305

234:                                              ; preds = %231
  %235 = load i32, i32* %4, align 4
  %236 = mul nsw i32 8, %235
  %237 = load i32, i32* %2, align 4
  %238 = add nsw i32 %236, %237
  store i32 %238, i32* %5, align 4
  %239 = load i32, i32* %1, align 4
  %240 = load i32*, i32** @_crypt_bits8, align 8
  %241 = load i32, i32* %2, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %239, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %301

247:                                              ; preds = %234
  %248 = load i32*, i32** @init_perm, align 8
  %249 = load i32, i32* %5, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %6, align 4
  %253 = icmp slt i32 %252, 32
  br i1 %253, label %254, label %263

254:                                              ; preds = %247
  %255 = load i64*, i64** @_crypt_bits32, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = load i64*, i64** %8, align 8
  %261 = load i64, i64* %260, align 8
  %262 = or i64 %261, %259
  store i64 %262, i64* %260, align 8
  br label %273

263:                                              ; preds = %247
  %264 = load i64*, i64** @_crypt_bits32, align 8
  %265 = load i32, i32* %6, align 4
  %266 = sub nsw i32 %265, 32
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %264, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = load i64*, i64** %9, align 8
  %271 = load i64, i64* %270, align 8
  %272 = or i64 %271, %269
  store i64 %272, i64* %270, align 8
  br label %273

273:                                              ; preds = %263, %254
  %274 = load i64*, i64** @final_perm, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %6, align 4
  %280 = icmp slt i32 %279, 32
  br i1 %280, label %281, label %290

281:                                              ; preds = %273
  %282 = load i64*, i64** @_crypt_bits32, align 8
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = load i64*, i64** %10, align 8
  %288 = load i64, i64* %287, align 8
  %289 = or i64 %288, %286
  store i64 %289, i64* %287, align 8
  br label %300

290:                                              ; preds = %273
  %291 = load i64*, i64** @_crypt_bits32, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sub nsw i32 %292, 32
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %291, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = load i64*, i64** %11, align 8
  %298 = load i64, i64* %297, align 8
  %299 = or i64 %298, %296
  store i64 %299, i64* %297, align 8
  br label %300

300:                                              ; preds = %290, %281
  br label %301

301:                                              ; preds = %300, %234
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %2, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %2, align 4
  br label %231

305:                                              ; preds = %231
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %1, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %1, align 4
  br label %195

309:                                              ; preds = %195
  store i32 0, i32* %1, align 4
  br label %310

310:                                              ; preds = %452, %309
  %311 = load i32, i32* %1, align 4
  %312 = icmp slt i32 %311, 128
  br i1 %312, label %313, label %455

313:                                              ; preds = %310
  %314 = load i64**, i64*** @key_perm_maskl, align 8
  %315 = load i32, i32* %4, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64*, i64** %314, i64 %316
  %318 = load i64*, i64** %317, align 8
  %319 = load i32, i32* %1, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %318, i64 %320
  store i64* %321, i64** %8, align 8
  store i64 0, i64* %321, align 8
  %322 = load i64**, i64*** @key_perm_maskr, align 8
  %323 = load i32, i32* %4, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64*, i64** %322, i64 %324
  %326 = load i64*, i64** %325, align 8
  %327 = load i32, i32* %1, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i64, i64* %326, i64 %328
  store i64* %329, i64** %9, align 8
  store i64 0, i64* %329, align 8
  store i32 0, i32* %2, align 4
  br label %330

330:                                              ; preds = %379, %313
  %331 = load i32, i32* %2, align 4
  %332 = icmp slt i32 %331, 7
  br i1 %332, label %333, label %382

333:                                              ; preds = %330
  %334 = load i32, i32* %4, align 4
  %335 = mul nsw i32 8, %334
  %336 = load i32, i32* %2, align 4
  %337 = add nsw i32 %335, %336
  store i32 %337, i32* %5, align 4
  %338 = load i32, i32* %1, align 4
  %339 = load i32*, i32** @_crypt_bits8, align 8
  %340 = load i32, i32* %2, align 4
  %341 = add nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %339, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = and i32 %338, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %378

347:                                              ; preds = %333
  %348 = load i32*, i32** @inv_key_perm, align 8
  %349 = load i32, i32* %5, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  store i32 %352, i32* %6, align 4
  %353 = icmp eq i32 %352, 255
  br i1 %353, label %354, label %355

354:                                              ; preds = %347
  br label %379

355:                                              ; preds = %347
  %356 = load i32, i32* %6, align 4
  %357 = icmp slt i32 %356, 28
  br i1 %357, label %358, label %367

358:                                              ; preds = %355
  %359 = load i64*, i64** @bits28, align 8
  %360 = load i32, i32* %6, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i64, i64* %359, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = load i64*, i64** %8, align 8
  %365 = load i64, i64* %364, align 8
  %366 = or i64 %365, %363
  store i64 %366, i64* %364, align 8
  br label %377

367:                                              ; preds = %355
  %368 = load i64*, i64** @bits28, align 8
  %369 = load i32, i32* %6, align 4
  %370 = sub nsw i32 %369, 28
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i64, i64* %368, i64 %371
  %373 = load i64, i64* %372, align 8
  %374 = load i64*, i64** %9, align 8
  %375 = load i64, i64* %374, align 8
  %376 = or i64 %375, %373
  store i64 %376, i64* %374, align 8
  br label %377

377:                                              ; preds = %367, %358
  br label %378

378:                                              ; preds = %377, %333
  br label %379

379:                                              ; preds = %378, %354
  %380 = load i32, i32* %2, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %2, align 4
  br label %330

382:                                              ; preds = %330
  %383 = load i64**, i64*** @comp_maskl, align 8
  %384 = load i32, i32* %4, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i64*, i64** %383, i64 %385
  %387 = load i64*, i64** %386, align 8
  %388 = load i32, i32* %1, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %387, i64 %389
  store i64* %390, i64** %8, align 8
  store i64 0, i64* %390, align 8
  %391 = load i64**, i64*** @comp_maskr, align 8
  %392 = load i32, i32* %4, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i64*, i64** %391, i64 %393
  %395 = load i64*, i64** %394, align 8
  %396 = load i32, i32* %1, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i64, i64* %395, i64 %397
  store i64* %398, i64** %9, align 8
  store i64 0, i64* %398, align 8
  store i32 0, i32* %2, align 4
  br label %399

399:                                              ; preds = %448, %382
  %400 = load i32, i32* %2, align 4
  %401 = icmp slt i32 %400, 7
  br i1 %401, label %402, label %451

402:                                              ; preds = %399
  %403 = load i32, i32* %4, align 4
  %404 = mul nsw i32 7, %403
  %405 = load i32, i32* %2, align 4
  %406 = add nsw i32 %404, %405
  store i32 %406, i32* %5, align 4
  %407 = load i32, i32* %1, align 4
  %408 = load i32*, i32** @_crypt_bits8, align 8
  %409 = load i32, i32* %2, align 4
  %410 = add nsw i32 %409, 1
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %408, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = and i32 %407, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %447

416:                                              ; preds = %402
  %417 = load i32*, i32** @inv_comp_perm, align 8
  %418 = load i32, i32* %5, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  store i32 %421, i32* %6, align 4
  %422 = icmp eq i32 %421, 255
  br i1 %422, label %423, label %424

423:                                              ; preds = %416
  br label %448

424:                                              ; preds = %416
  %425 = load i32, i32* %6, align 4
  %426 = icmp slt i32 %425, 24
  br i1 %426, label %427, label %436

427:                                              ; preds = %424
  %428 = load i64*, i64** @bits24, align 8
  %429 = load i32, i32* %6, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i64, i64* %428, i64 %430
  %432 = load i64, i64* %431, align 8
  %433 = load i64*, i64** %8, align 8
  %434 = load i64, i64* %433, align 8
  %435 = or i64 %434, %432
  store i64 %435, i64* %433, align 8
  br label %446

436:                                              ; preds = %424
  %437 = load i64*, i64** @bits24, align 8
  %438 = load i32, i32* %6, align 4
  %439 = sub nsw i32 %438, 24
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i64, i64* %437, i64 %440
  %442 = load i64, i64* %441, align 8
  %443 = load i64*, i64** %9, align 8
  %444 = load i64, i64* %443, align 8
  %445 = or i64 %444, %442
  store i64 %445, i64* %443, align 8
  br label %446

446:                                              ; preds = %436, %427
  br label %447

447:                                              ; preds = %446, %402
  br label %448

448:                                              ; preds = %447, %423
  %449 = load i32, i32* %2, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %2, align 4
  br label %399

451:                                              ; preds = %399
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %1, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %1, align 4
  br label %310

455:                                              ; preds = %310
  br label %456

456:                                              ; preds = %455
  %457 = load i32, i32* %4, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %4, align 4
  br label %191

459:                                              ; preds = %191
  store i32 0, i32* %1, align 4
  br label %460

460:                                              ; preds = %475, %459
  %461 = load i32, i32* %1, align 4
  %462 = icmp slt i32 %461, 32
  br i1 %462, label %463, label %478

463:                                              ; preds = %460
  %464 = load i32, i32* %1, align 4
  %465 = sext i32 %464 to i64
  %466 = load i64*, i64** @un_pbox, align 8
  %467 = load i32*, i32** @pbox, align 8
  %468 = load i32, i32* %1, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = sub nsw i32 %471, 1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i64, i64* %466, i64 %473
  store i64 %465, i64* %474, align 8
  br label %475

475:                                              ; preds = %463
  %476 = load i32, i32* %1, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %1, align 4
  br label %460

478:                                              ; preds = %460
  store i32 0, i32* %3, align 4
  br label %479

479:                                              ; preds = %531, %478
  %480 = load i32, i32* %3, align 4
  %481 = icmp slt i32 %480, 4
  br i1 %481, label %482, label %534

482:                                              ; preds = %479
  store i32 0, i32* %1, align 4
  br label %483

483:                                              ; preds = %527, %482
  %484 = load i32, i32* %1, align 4
  %485 = icmp slt i32 %484, 256
  br i1 %485, label %486, label %530

486:                                              ; preds = %483
  %487 = load i64**, i64*** @psbox, align 8
  %488 = load i32, i32* %3, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i64*, i64** %487, i64 %489
  %491 = load i64*, i64** %490, align 8
  %492 = load i32, i32* %1, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i64, i64* %491, i64 %493
  store i64* %494, i64** %7, align 8
  store i64 0, i64* %494, align 8
  store i32 0, i32* %2, align 4
  br label %495

495:                                              ; preds = %523, %486
  %496 = load i32, i32* %2, align 4
  %497 = icmp slt i32 %496, 8
  br i1 %497, label %498, label %526

498:                                              ; preds = %495
  %499 = load i32, i32* %1, align 4
  %500 = load i32*, i32** @_crypt_bits8, align 8
  %501 = load i32, i32* %2, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = and i32 %499, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %522

507:                                              ; preds = %498
  %508 = load i64*, i64** @_crypt_bits32, align 8
  %509 = load i64*, i64** @un_pbox, align 8
  %510 = load i32, i32* %3, align 4
  %511 = mul nsw i32 8, %510
  %512 = load i32, i32* %2, align 4
  %513 = add nsw i32 %511, %512
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i64, i64* %509, i64 %514
  %516 = load i64, i64* %515, align 8
  %517 = getelementptr inbounds i64, i64* %508, i64 %516
  %518 = load i64, i64* %517, align 8
  %519 = load i64*, i64** %7, align 8
  %520 = load i64, i64* %519, align 8
  %521 = or i64 %520, %518
  store i64 %521, i64* %519, align 8
  br label %522

522:                                              ; preds = %507, %498
  br label %523

523:                                              ; preds = %522
  %524 = load i32, i32* %2, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %2, align 4
  br label %495

526:                                              ; preds = %495
  br label %527

527:                                              ; preds = %526
  %528 = load i32, i32* %1, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %1, align 4
  br label %483

530:                                              ; preds = %483
  br label %531

531:                                              ; preds = %530
  %532 = load i32, i32* %3, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %3, align 4
  br label %479

534:                                              ; preds = %479
  store i32 1, i32* @des_initialised, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
