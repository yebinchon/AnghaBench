; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_portuguese.c_portuguese_UTF_8_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_portuguese.c_portuguese_UTF_8_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @portuguese_UTF_8_stem(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %22 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %23 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %4, align 4
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = call i32 @r_prelude(%struct.SN_env* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %36

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %320

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = call i32 @r_mark_regions(%struct.SN_env* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %51

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %320

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %44
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %63 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %72, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %80, %83
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %90 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %88, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = call i32 @r_standard_suffix(%struct.SN_env* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %51
  br label %105

99:                                               ; preds = %51
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %2, align 4
  br label %320

104:                                              ; preds = %99
  br label %124

105:                                              ; preds = %98
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = call i32 @r_verb_suffix(%struct.SN_env* %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  br label %242

118:                                              ; preds = %105
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %2, align 4
  br label %320

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %104
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %131 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %133 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %134, %137
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp sle i32 %147, %150
  br i1 %151, label %165, label %152

152:                                              ; preds = %124
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 4
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %157 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %155, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 105
  br i1 %164, label %165, label %166

165:                                              ; preds = %152, %124
  br label %234

166:                                              ; preds = %152
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %168, align 8
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %175 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 8
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %180 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %178, %181
  store i32 %182, i32* %14, align 4
  %183 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %184 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %187 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp sle i32 %185, %188
  br i1 %189, label %203, label %190

190:                                              ; preds = %166
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %191, i32 0, i32 4
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %193, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp ne i32 %201, 99
  br i1 %202, label %203, label %204

203:                                              ; preds = %190, %166
  br label %234

204:                                              ; preds = %190
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %206, align 8
  %209 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %210 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sub nsw i32 %211, %212
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = call i32 @r_RV(%struct.SN_env* %216)
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %204
  br label %234

221:                                              ; preds = %204
  %222 = load i32, i32* %15, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = load i32, i32* %15, align 4
  store i32 %225, i32* %2, align 4
  br label %320

226:                                              ; preds = %221
  %227 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %228 = call i32 @slice_del(%struct.SN_env* %227)
  store i32 %228, i32* %16, align 4
  %229 = load i32, i32* %16, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = load i32, i32* %16, align 4
  store i32 %232, i32* %2, align 4
  br label %320

233:                                              ; preds = %226
  br label %234

234:                                              ; preds = %233, %220, %203, %165
  %235 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %236 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sub nsw i32 %237, %238
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  br label %261

242:                                              ; preds = %117
  %243 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %244 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sub nsw i32 %245, %246
  %248 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %249 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  %250 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %251 = call i32 @r_residual_suffix(%struct.SN_env* %250)
  store i32 %251, i32* %17, align 4
  %252 = load i32, i32* %17, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %242
  br label %262

255:                                              ; preds = %242
  %256 = load i32, i32* %17, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = load i32, i32* %17, align 4
  store i32 %259, i32* %2, align 4
  br label %320

260:                                              ; preds = %255
  br label %261

261:                                              ; preds = %260, %234
  br label %262

262:                                              ; preds = %261, %254
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %7, align 4
  %267 = sub nsw i32 %265, %266
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  %270 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %271 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %272, %275
  store i32 %276, i32* %18, align 4
  %277 = load i32, i32* %18, align 4
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = call i32 @r_residual_form(%struct.SN_env* %278)
  store i32 %279, i32* %19, align 4
  %280 = load i32, i32* %19, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %262
  br label %289

283:                                              ; preds = %262
  %284 = load i32, i32* %19, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = load i32, i32* %19, align 4
  store i32 %287, i32* %2, align 4
  br label %320

288:                                              ; preds = %283
  br label %289

289:                                              ; preds = %288, %282
  %290 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %291 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* %18, align 4
  %294 = sub nsw i32 %292, %293
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 8
  %297 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %298 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %301 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 8
  %302 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %303 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  store i32 %304, i32* %20, align 4
  %305 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %306 = call i32 @r_postlude(%struct.SN_env* %305)
  store i32 %306, i32* %21, align 4
  %307 = load i32, i32* %21, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %289
  br label %316

310:                                              ; preds = %289
  %311 = load i32, i32* %21, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = load i32, i32* %21, align 4
  store i32 %314, i32* %2, align 4
  br label %320

315:                                              ; preds = %310
  br label %316

316:                                              ; preds = %315, %309
  %317 = load i32, i32* %20, align 4
  %318 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %319 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %318, i32 0, i32 0
  store i32 %317, i32* %319, align 8
  store i32 1, i32* %2, align 4
  br label %320

320:                                              ; preds = %316, %313, %286, %258, %231, %224, %121, %102, %48, %33
  %321 = load i32, i32* %2, align 4
  ret i32 %321
}

declare dso_local i32 @r_prelude(%struct.SN_env*) #1

declare dso_local i32 @r_mark_regions(%struct.SN_env*) #1

declare dso_local i32 @r_standard_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_verb_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_RV(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_residual_suffix(%struct.SN_env*) #1

declare dso_local i32 @r_residual_form(%struct.SN_env*) #1

declare dso_local i32 @r_postlude(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
