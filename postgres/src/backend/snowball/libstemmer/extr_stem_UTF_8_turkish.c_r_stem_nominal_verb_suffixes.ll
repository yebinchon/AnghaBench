; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_stem_nominal_verb_suffixes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_turkish.c_r_stem_nominal_verb_suffixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_stem_nominal_verb_suffixes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_stem_nominal_verb_suffixes(%struct.SN_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SN_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = call i32 @r_mark_ymUs_(%struct.SN_env* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %1
  br label %85

79:                                               ; preds = %1
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %773

84:                                               ; preds = %79
  br label %142

85:                                               ; preds = %78
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = call i32 @r_mark_yDU(%struct.SN_env* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %104

98:                                               ; preds = %85
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %773

103:                                              ; preds = %98
  br label %142

104:                                              ; preds = %97
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = call i32 @r_mark_ysA(%struct.SN_env* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %123

117:                                              ; preds = %104
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %2, align 4
  br label %773

122:                                              ; preds = %117
  br label %142

123:                                              ; preds = %116
  %124 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %125 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sub nsw i32 %126, %127
  %129 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %130 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = call i32 @r_mark_yken(%struct.SN_env* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  br label %143

136:                                              ; preds = %123
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %2, align 4
  br label %773

141:                                              ; preds = %136
  br label %142

142:                                              ; preds = %141, %122, %103, %84
  br label %760

143:                                              ; preds = %135
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %150 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %152 = call i32 @r_mark_cAsInA(%struct.SN_env* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %143
  br label %277

156:                                              ; preds = %143
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %2, align 4
  br label %773

161:                                              ; preds = %156
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %164, %167
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = call i32 @r_mark_sUnUz(%struct.SN_env* %170)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %161
  br label %181

175:                                              ; preds = %161
  %176 = load i32, i32* %12, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %2, align 4
  br label %773

180:                                              ; preds = %175
  br label %265

181:                                              ; preds = %174
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = call i32 @r_mark_lAr(%struct.SN_env* %189)
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %181
  br label %200

194:                                              ; preds = %181
  %195 = load i32, i32* %13, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %2, align 4
  br label %773

199:                                              ; preds = %194
  br label %265

200:                                              ; preds = %193
  %201 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %202 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sub nsw i32 %203, %204
  %206 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %207 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %209 = call i32 @r_mark_yUm(%struct.SN_env* %208)
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* %14, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %200
  br label %219

213:                                              ; preds = %200
  %214 = load i32, i32* %14, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = load i32, i32* %14, align 4
  store i32 %217, i32* %2, align 4
  br label %773

218:                                              ; preds = %213
  br label %265

219:                                              ; preds = %212
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sub nsw i32 %222, %223
  %225 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %226 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %228 = call i32 @r_mark_sUn(%struct.SN_env* %227)
  store i32 %228, i32* %15, align 4
  %229 = load i32, i32* %15, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %219
  br label %238

232:                                              ; preds = %219
  %233 = load i32, i32* %15, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load i32, i32* %15, align 4
  store i32 %236, i32* %2, align 4
  br label %773

237:                                              ; preds = %232
  br label %265

238:                                              ; preds = %231
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sub nsw i32 %241, %242
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = call i32 @r_mark_yUz(%struct.SN_env* %246)
  store i32 %247, i32* %16, align 4
  %248 = load i32, i32* %16, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %238
  br label %257

251:                                              ; preds = %238
  %252 = load i32, i32* %16, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = load i32, i32* %16, align 4
  store i32 %255, i32* %2, align 4
  br label %773

256:                                              ; preds = %251
  br label %265

257:                                              ; preds = %250
  %258 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %259 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sub nsw i32 %260, %261
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  br label %265

265:                                              ; preds = %257, %256, %237, %218, %199, %180
  %266 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %267 = call i32 @r_mark_ymUs_(%struct.SN_env* %266)
  store i32 %267, i32* %17, align 4
  %268 = load i32, i32* %17, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  br label %277

271:                                              ; preds = %265
  %272 = load i32, i32* %17, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %271
  %275 = load i32, i32* %17, align 4
  store i32 %275, i32* %2, align 4
  br label %773

276:                                              ; preds = %271
  br label %760

277:                                              ; preds = %270, %155
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* %4, align 4
  %282 = sub nsw i32 %280, %281
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  %285 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %286 = call i32 @r_mark_lAr(%struct.SN_env* %285)
  store i32 %286, i32* %18, align 4
  %287 = load i32, i32* %18, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %277
  br label %410

290:                                              ; preds = %277
  %291 = load i32, i32* %18, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i32, i32* %18, align 4
  store i32 %294, i32* %2, align 4
  br label %773

295:                                              ; preds = %290
  %296 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %297 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %300 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %299, i32 0, i32 4
  store i32 %298, i32* %300, align 4
  %301 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %302 = call i32 @slice_del(%struct.SN_env* %301)
  store i32 %302, i32* %19, align 4
  %303 = load i32, i32* %19, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %295
  %306 = load i32, i32* %19, align 4
  store i32 %306, i32* %2, align 4
  br label %773

307:                                              ; preds = %295
  %308 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %309 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %312 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = sub nsw i32 %310, %313
  store i32 %314, i32* %20, align 4
  %315 = load i32, i32* %20, align 4
  %316 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %317 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %320 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  %321 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %322 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %325 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %323, %326
  store i32 %327, i32* %21, align 4
  %328 = load i32, i32* %21, align 4
  %329 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %330 = call i32 @r_mark_DUr(%struct.SN_env* %329)
  store i32 %330, i32* %22, align 4
  %331 = load i32, i32* %22, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %307
  br label %340

334:                                              ; preds = %307
  %335 = load i32, i32* %22, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %334
  %338 = load i32, i32* %22, align 4
  store i32 %338, i32* %2, align 4
  br label %773

339:                                              ; preds = %334
  br label %404

340:                                              ; preds = %333
  %341 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %342 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* %21, align 4
  %345 = sub nsw i32 %343, %344
  %346 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %347 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 4
  %348 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %349 = call i32 @r_mark_yDU(%struct.SN_env* %348)
  store i32 %349, i32* %23, align 4
  %350 = load i32, i32* %23, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %340
  br label %359

353:                                              ; preds = %340
  %354 = load i32, i32* %23, align 4
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  %357 = load i32, i32* %23, align 4
  store i32 %357, i32* %2, align 4
  br label %773

358:                                              ; preds = %353
  br label %404

359:                                              ; preds = %352
  %360 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %361 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* %21, align 4
  %364 = sub nsw i32 %362, %363
  %365 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %366 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %365, i32 0, i32 1
  store i32 %364, i32* %366, align 4
  %367 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %368 = call i32 @r_mark_ysA(%struct.SN_env* %367)
  store i32 %368, i32* %24, align 4
  %369 = load i32, i32* %24, align 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %359
  br label %378

372:                                              ; preds = %359
  %373 = load i32, i32* %24, align 4
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %372
  %376 = load i32, i32* %24, align 4
  store i32 %376, i32* %2, align 4
  br label %773

377:                                              ; preds = %372
  br label %404

378:                                              ; preds = %371
  %379 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %380 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* %21, align 4
  %383 = sub nsw i32 %381, %382
  %384 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %385 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %384, i32 0, i32 1
  store i32 %383, i32* %385, align 4
  %386 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %387 = call i32 @r_mark_ymUs_(%struct.SN_env* %386)
  store i32 %387, i32* %25, align 4
  %388 = load i32, i32* %25, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %398

390:                                              ; preds = %378
  %391 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %392 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* %20, align 4
  %395 = sub nsw i32 %393, %394
  %396 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %397 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %396, i32 0, i32 1
  store i32 %395, i32* %397, align 4
  br label %405

398:                                              ; preds = %378
  %399 = load i32, i32* %25, align 4
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %398
  %402 = load i32, i32* %25, align 4
  store i32 %402, i32* %2, align 4
  br label %773

403:                                              ; preds = %398
  br label %404

404:                                              ; preds = %403, %377, %358, %339
  br label %405

405:                                              ; preds = %404, %390
  %406 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %407 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %406, i32 0, i32 2
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 0
  store i32 0, i32* %409, align 4
  br label %760

410:                                              ; preds = %289
  %411 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %412 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* %4, align 4
  %415 = sub nsw i32 %413, %414
  %416 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %417 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %416, i32 0, i32 1
  store i32 %415, i32* %417, align 4
  %418 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %419 = call i32 @r_mark_nUz(%struct.SN_env* %418)
  store i32 %419, i32* %26, align 4
  %420 = load i32, i32* %26, align 4
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %410
  br label %468

423:                                              ; preds = %410
  %424 = load i32, i32* %26, align 4
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %423
  %427 = load i32, i32* %26, align 4
  store i32 %427, i32* %2, align 4
  br label %773

428:                                              ; preds = %423
  %429 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %430 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %433 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = sub nsw i32 %431, %434
  store i32 %435, i32* %27, align 4
  %436 = load i32, i32* %27, align 4
  %437 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %438 = call i32 @r_mark_yDU(%struct.SN_env* %437)
  store i32 %438, i32* %28, align 4
  %439 = load i32, i32* %28, align 4
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %428
  br label %448

442:                                              ; preds = %428
  %443 = load i32, i32* %28, align 4
  %444 = icmp slt i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %442
  %446 = load i32, i32* %28, align 4
  store i32 %446, i32* %2, align 4
  br label %773

447:                                              ; preds = %442
  br label %467

448:                                              ; preds = %441
  %449 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %450 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* %27, align 4
  %453 = sub nsw i32 %451, %452
  %454 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %455 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %454, i32 0, i32 1
  store i32 %453, i32* %455, align 4
  %456 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %457 = call i32 @r_mark_ysA(%struct.SN_env* %456)
  store i32 %457, i32* %29, align 4
  %458 = load i32, i32* %29, align 4
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %448
  br label %468

461:                                              ; preds = %448
  %462 = load i32, i32* %29, align 4
  %463 = icmp slt i32 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %461
  %465 = load i32, i32* %29, align 4
  store i32 %465, i32* %2, align 4
  br label %773

466:                                              ; preds = %461
  br label %467

467:                                              ; preds = %466, %447
  br label %760

468:                                              ; preds = %460, %422
  %469 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %470 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 8
  %472 = load i32, i32* %4, align 4
  %473 = sub nsw i32 %471, %472
  %474 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %475 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %474, i32 0, i32 1
  store i32 %473, i32* %475, align 4
  %476 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %477 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %480 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = sub nsw i32 %478, %481
  store i32 %482, i32* %30, align 4
  %483 = load i32, i32* %30, align 4
  %484 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %485 = call i32 @r_mark_sUnUz(%struct.SN_env* %484)
  store i32 %485, i32* %31, align 4
  %486 = load i32, i32* %31, align 4
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %489

488:                                              ; preds = %468
  br label %495

489:                                              ; preds = %468
  %490 = load i32, i32* %31, align 4
  %491 = icmp slt i32 %490, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %489
  %493 = load i32, i32* %31, align 4
  store i32 %493, i32* %2, align 4
  br label %773

494:                                              ; preds = %489
  br label %552

495:                                              ; preds = %488
  %496 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %497 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* %30, align 4
  %500 = sub nsw i32 %498, %499
  %501 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %502 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %501, i32 0, i32 1
  store i32 %500, i32* %502, align 4
  %503 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %504 = call i32 @r_mark_yUz(%struct.SN_env* %503)
  store i32 %504, i32* %32, align 4
  %505 = load i32, i32* %32, align 4
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %508

507:                                              ; preds = %495
  br label %514

508:                                              ; preds = %495
  %509 = load i32, i32* %32, align 4
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %511, label %513

511:                                              ; preds = %508
  %512 = load i32, i32* %32, align 4
  store i32 %512, i32* %2, align 4
  br label %773

513:                                              ; preds = %508
  br label %552

514:                                              ; preds = %507
  %515 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %516 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %515, i32 0, i32 3
  %517 = load i32, i32* %516, align 8
  %518 = load i32, i32* %30, align 4
  %519 = sub nsw i32 %517, %518
  %520 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %521 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %520, i32 0, i32 1
  store i32 %519, i32* %521, align 4
  %522 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %523 = call i32 @r_mark_sUn(%struct.SN_env* %522)
  store i32 %523, i32* %33, align 4
  %524 = load i32, i32* %33, align 4
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %527

526:                                              ; preds = %514
  br label %533

527:                                              ; preds = %514
  %528 = load i32, i32* %33, align 4
  %529 = icmp slt i32 %528, 0
  br i1 %529, label %530, label %532

530:                                              ; preds = %527
  %531 = load i32, i32* %33, align 4
  store i32 %531, i32* %2, align 4
  br label %773

532:                                              ; preds = %527
  br label %552

533:                                              ; preds = %526
  %534 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %535 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %534, i32 0, i32 3
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* %30, align 4
  %538 = sub nsw i32 %536, %537
  %539 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %540 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %539, i32 0, i32 1
  store i32 %538, i32* %540, align 4
  %541 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %542 = call i32 @r_mark_yUm(%struct.SN_env* %541)
  store i32 %542, i32* %34, align 4
  %543 = load i32, i32* %34, align 4
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %546

545:                                              ; preds = %533
  br label %597

546:                                              ; preds = %533
  %547 = load i32, i32* %34, align 4
  %548 = icmp slt i32 %547, 0
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  %550 = load i32, i32* %34, align 4
  store i32 %550, i32* %2, align 4
  br label %773

551:                                              ; preds = %546
  br label %552

552:                                              ; preds = %551, %532, %513, %494
  %553 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %554 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 4
  %556 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %557 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %556, i32 0, i32 4
  store i32 %555, i32* %557, align 4
  %558 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %559 = call i32 @slice_del(%struct.SN_env* %558)
  store i32 %559, i32* %35, align 4
  %560 = load i32, i32* %35, align 4
  %561 = icmp slt i32 %560, 0
  br i1 %561, label %562, label %564

562:                                              ; preds = %552
  %563 = load i32, i32* %35, align 4
  store i32 %563, i32* %2, align 4
  br label %773

564:                                              ; preds = %552
  %565 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %566 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %565, i32 0, i32 3
  %567 = load i32, i32* %566, align 8
  %568 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %569 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = sub nsw i32 %567, %570
  store i32 %571, i32* %36, align 4
  %572 = load i32, i32* %36, align 4
  %573 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %574 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %577 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %576, i32 0, i32 0
  store i32 %575, i32* %577, align 8
  %578 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %579 = call i32 @r_mark_ymUs_(%struct.SN_env* %578)
  store i32 %579, i32* %37, align 4
  %580 = load i32, i32* %37, align 4
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %590

582:                                              ; preds = %564
  %583 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %584 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %583, i32 0, i32 3
  %585 = load i32, i32* %584, align 8
  %586 = load i32, i32* %36, align 4
  %587 = sub nsw i32 %585, %586
  %588 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %589 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %588, i32 0, i32 1
  store i32 %587, i32* %589, align 4
  br label %596

590:                                              ; preds = %564
  %591 = load i32, i32* %37, align 4
  %592 = icmp slt i32 %591, 0
  br i1 %592, label %593, label %595

593:                                              ; preds = %590
  %594 = load i32, i32* %37, align 4
  store i32 %594, i32* %2, align 4
  br label %773

595:                                              ; preds = %590
  br label %596

596:                                              ; preds = %595, %582
  br label %760

597:                                              ; preds = %545
  %598 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %599 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %598, i32 0, i32 3
  %600 = load i32, i32* %599, align 8
  %601 = load i32, i32* %4, align 4
  %602 = sub nsw i32 %600, %601
  %603 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %604 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %603, i32 0, i32 1
  store i32 %602, i32* %604, align 4
  %605 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %606 = call i32 @r_mark_DUr(%struct.SN_env* %605)
  store i32 %606, i32* %38, align 4
  %607 = load i32, i32* %38, align 4
  %608 = icmp sle i32 %607, 0
  br i1 %608, label %609, label %611

609:                                              ; preds = %597
  %610 = load i32, i32* %38, align 4
  store i32 %610, i32* %2, align 4
  br label %773

611:                                              ; preds = %597
  %612 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %613 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %612, i32 0, i32 1
  %614 = load i32, i32* %613, align 4
  %615 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %616 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %615, i32 0, i32 4
  store i32 %614, i32* %616, align 4
  %617 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %618 = call i32 @slice_del(%struct.SN_env* %617)
  store i32 %618, i32* %39, align 4
  %619 = load i32, i32* %39, align 4
  %620 = icmp slt i32 %619, 0
  br i1 %620, label %621, label %623

621:                                              ; preds = %611
  %622 = load i32, i32* %39, align 4
  store i32 %622, i32* %2, align 4
  br label %773

623:                                              ; preds = %611
  %624 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %625 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %624, i32 0, i32 3
  %626 = load i32, i32* %625, align 8
  %627 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %628 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 4
  %630 = sub nsw i32 %626, %629
  store i32 %630, i32* %40, align 4
  %631 = load i32, i32* %40, align 4
  %632 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %633 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %636 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %635, i32 0, i32 0
  store i32 %634, i32* %636, align 8
  %637 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %638 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %637, i32 0, i32 3
  %639 = load i32, i32* %638, align 8
  %640 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %641 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %640, i32 0, i32 1
  %642 = load i32, i32* %641, align 4
  %643 = sub nsw i32 %639, %642
  store i32 %643, i32* %41, align 4
  %644 = load i32, i32* %41, align 4
  %645 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %646 = call i32 @r_mark_sUnUz(%struct.SN_env* %645)
  store i32 %646, i32* %42, align 4
  %647 = load i32, i32* %42, align 4
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %650

649:                                              ; preds = %623
  br label %656

650:                                              ; preds = %623
  %651 = load i32, i32* %42, align 4
  %652 = icmp slt i32 %651, 0
  br i1 %652, label %653, label %655

653:                                              ; preds = %650
  %654 = load i32, i32* %42, align 4
  store i32 %654, i32* %2, align 4
  br label %773

655:                                              ; preds = %650
  br label %740

656:                                              ; preds = %649
  %657 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %658 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %657, i32 0, i32 3
  %659 = load i32, i32* %658, align 8
  %660 = load i32, i32* %41, align 4
  %661 = sub nsw i32 %659, %660
  %662 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %663 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %662, i32 0, i32 1
  store i32 %661, i32* %663, align 4
  %664 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %665 = call i32 @r_mark_lAr(%struct.SN_env* %664)
  store i32 %665, i32* %43, align 4
  %666 = load i32, i32* %43, align 4
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %669

668:                                              ; preds = %656
  br label %675

669:                                              ; preds = %656
  %670 = load i32, i32* %43, align 4
  %671 = icmp slt i32 %670, 0
  br i1 %671, label %672, label %674

672:                                              ; preds = %669
  %673 = load i32, i32* %43, align 4
  store i32 %673, i32* %2, align 4
  br label %773

674:                                              ; preds = %669
  br label %740

675:                                              ; preds = %668
  %676 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %677 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %676, i32 0, i32 3
  %678 = load i32, i32* %677, align 8
  %679 = load i32, i32* %41, align 4
  %680 = sub nsw i32 %678, %679
  %681 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %682 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %681, i32 0, i32 1
  store i32 %680, i32* %682, align 4
  %683 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %684 = call i32 @r_mark_yUm(%struct.SN_env* %683)
  store i32 %684, i32* %44, align 4
  %685 = load i32, i32* %44, align 4
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %688

687:                                              ; preds = %675
  br label %694

688:                                              ; preds = %675
  %689 = load i32, i32* %44, align 4
  %690 = icmp slt i32 %689, 0
  br i1 %690, label %691, label %693

691:                                              ; preds = %688
  %692 = load i32, i32* %44, align 4
  store i32 %692, i32* %2, align 4
  br label %773

693:                                              ; preds = %688
  br label %740

694:                                              ; preds = %687
  %695 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %696 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %695, i32 0, i32 3
  %697 = load i32, i32* %696, align 8
  %698 = load i32, i32* %41, align 4
  %699 = sub nsw i32 %697, %698
  %700 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %701 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %700, i32 0, i32 1
  store i32 %699, i32* %701, align 4
  %702 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %703 = call i32 @r_mark_sUn(%struct.SN_env* %702)
  store i32 %703, i32* %45, align 4
  %704 = load i32, i32* %45, align 4
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %706, label %707

706:                                              ; preds = %694
  br label %713

707:                                              ; preds = %694
  %708 = load i32, i32* %45, align 4
  %709 = icmp slt i32 %708, 0
  br i1 %709, label %710, label %712

710:                                              ; preds = %707
  %711 = load i32, i32* %45, align 4
  store i32 %711, i32* %2, align 4
  br label %773

712:                                              ; preds = %707
  br label %740

713:                                              ; preds = %706
  %714 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %715 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %714, i32 0, i32 3
  %716 = load i32, i32* %715, align 8
  %717 = load i32, i32* %41, align 4
  %718 = sub nsw i32 %716, %717
  %719 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %720 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %719, i32 0, i32 1
  store i32 %718, i32* %720, align 4
  %721 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %722 = call i32 @r_mark_yUz(%struct.SN_env* %721)
  store i32 %722, i32* %46, align 4
  %723 = load i32, i32* %46, align 4
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %726

725:                                              ; preds = %713
  br label %732

726:                                              ; preds = %713
  %727 = load i32, i32* %46, align 4
  %728 = icmp slt i32 %727, 0
  br i1 %728, label %729, label %731

729:                                              ; preds = %726
  %730 = load i32, i32* %46, align 4
  store i32 %730, i32* %2, align 4
  br label %773

731:                                              ; preds = %726
  br label %740

732:                                              ; preds = %725
  %733 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %734 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %733, i32 0, i32 3
  %735 = load i32, i32* %734, align 8
  %736 = load i32, i32* %41, align 4
  %737 = sub nsw i32 %735, %736
  %738 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %739 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %738, i32 0, i32 1
  store i32 %737, i32* %739, align 4
  br label %740

740:                                              ; preds = %732, %731, %712, %693, %674, %655
  %741 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %742 = call i32 @r_mark_ymUs_(%struct.SN_env* %741)
  store i32 %742, i32* %47, align 4
  %743 = load i32, i32* %47, align 4
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %753

745:                                              ; preds = %740
  %746 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %747 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %746, i32 0, i32 3
  %748 = load i32, i32* %747, align 8
  %749 = load i32, i32* %40, align 4
  %750 = sub nsw i32 %748, %749
  %751 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %752 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %751, i32 0, i32 1
  store i32 %750, i32* %752, align 4
  br label %759

753:                                              ; preds = %740
  %754 = load i32, i32* %47, align 4
  %755 = icmp slt i32 %754, 0
  br i1 %755, label %756, label %758

756:                                              ; preds = %753
  %757 = load i32, i32* %47, align 4
  store i32 %757, i32* %2, align 4
  br label %773

758:                                              ; preds = %753
  br label %759

759:                                              ; preds = %758, %745
  br label %760

760:                                              ; preds = %759, %596, %467, %405, %276, %142
  %761 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %762 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %761, i32 0, i32 1
  %763 = load i32, i32* %762, align 4
  %764 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %765 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %764, i32 0, i32 4
  store i32 %763, i32* %765, align 4
  %766 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %767 = call i32 @slice_del(%struct.SN_env* %766)
  store i32 %767, i32* %48, align 4
  %768 = load i32, i32* %48, align 4
  %769 = icmp slt i32 %768, 0
  br i1 %769, label %770, label %772

770:                                              ; preds = %760
  %771 = load i32, i32* %48, align 4
  store i32 %771, i32* %2, align 4
  br label %773

772:                                              ; preds = %760
  store i32 1, i32* %2, align 4
  br label %773

773:                                              ; preds = %772, %770, %756, %729, %710, %691, %672, %653, %621, %609, %593, %562, %549, %530, %511, %492, %464, %445, %426, %401, %375, %356, %337, %305, %293, %274, %254, %235, %216, %197, %178, %159, %139, %120, %101, %82
  %774 = load i32, i32* %2, align 4
  ret i32 %774
}

declare dso_local i32 @r_mark_ymUs_(%struct.SN_env*) #1

declare dso_local i32 @r_mark_yDU(%struct.SN_env*) #1

declare dso_local i32 @r_mark_ysA(%struct.SN_env*) #1

declare dso_local i32 @r_mark_yken(%struct.SN_env*) #1

declare dso_local i32 @r_mark_cAsInA(%struct.SN_env*) #1

declare dso_local i32 @r_mark_sUnUz(%struct.SN_env*) #1

declare dso_local i32 @r_mark_lAr(%struct.SN_env*) #1

declare dso_local i32 @r_mark_yUm(%struct.SN_env*) #1

declare dso_local i32 @r_mark_sUn(%struct.SN_env*) #1

declare dso_local i32 @r_mark_yUz(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_mark_DUr(%struct.SN_env*) #1

declare dso_local i32 @r_mark_nUz(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
