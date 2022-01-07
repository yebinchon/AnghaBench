; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_english_ISO_8859_1_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_english.c_english_ISO_8859_1_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @english_ISO_8859_1_stem(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %28 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %29 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %32 = call i32 @r_exception1(%struct.SN_env* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %42

36:                                               ; preds = %1
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %349

41:                                               ; preds = %36
  br label %348

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 3
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 0, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %42
  br label %66

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %69 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %348

70:                                               ; preds = %62
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = call i32 @r_prelude(%struct.SN_env* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %85

79:                                               ; preds = %70
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %349

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %78
  %86 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %87 = call i32 @r_mark_regions(%struct.SN_env* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %97

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %2, align 4
  br label %349

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %90
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %104 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %110, %113
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = call i32 @r_Step_1a(%struct.SN_env* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %97
  br label %127

121:                                              ; preds = %97
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %2, align 4
  br label %349

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %120
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %139 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %137, %140
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %144 = call i32 @r_exception2(%struct.SN_env* %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %127
  br label %154

148:                                              ; preds = %127
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %2, align 4
  br label %349

153:                                              ; preds = %148
  br label %324

154:                                              ; preds = %147
  %155 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %156 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %12, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %161 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %164, %167
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = call i32 @r_Step_1b(%struct.SN_env* %170)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %154
  br label %181

175:                                              ; preds = %154
  %176 = load i32, i32* %15, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* %15, align 4
  store i32 %179, i32* %2, align 4
  br label %349

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180, %174
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %14, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 4
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %193 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %191, %194
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %198 = call i32 @r_Step_1c(%struct.SN_env* %197)
  store i32 %198, i32* %17, align 4
  %199 = load i32, i32* %17, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %181
  br label %208

202:                                              ; preds = %181
  %203 = load i32, i32* %17, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32, i32* %17, align 4
  store i32 %206, i32* %2, align 4
  br label %349

207:                                              ; preds = %202
  br label %208

208:                                              ; preds = %207, %201
  %209 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %210 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %16, align 4
  %213 = sub nsw i32 %211, %212
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %220 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %218, %221
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* %18, align 4
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = call i32 @r_Step_2(%struct.SN_env* %224)
  store i32 %225, i32* %19, align 4
  %226 = load i32, i32* %19, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %208
  br label %235

229:                                              ; preds = %208
  %230 = load i32, i32* %19, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load i32, i32* %19, align 4
  store i32 %233, i32* %2, align 4
  br label %349

234:                                              ; preds = %229
  br label %235

235:                                              ; preds = %234, %228
  %236 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %237 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %18, align 4
  %240 = sub nsw i32 %238, %239
  %241 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %242 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 4
  %243 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %244 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %245, %248
  store i32 %249, i32* %20, align 4
  %250 = load i32, i32* %20, align 4
  %251 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %252 = call i32 @r_Step_3(%struct.SN_env* %251)
  store i32 %252, i32* %21, align 4
  %253 = load i32, i32* %21, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %235
  br label %262

256:                                              ; preds = %235
  %257 = load i32, i32* %21, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = load i32, i32* %21, align 4
  store i32 %260, i32* %2, align 4
  br label %349

261:                                              ; preds = %256
  br label %262

262:                                              ; preds = %261, %255
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %20, align 4
  %267 = sub nsw i32 %265, %266
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 4
  %270 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %271 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %272, %275
  store i32 %276, i32* %22, align 4
  %277 = load i32, i32* %22, align 4
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = call i32 @r_Step_4(%struct.SN_env* %278)
  store i32 %279, i32* %23, align 4
  %280 = load i32, i32* %23, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %262
  br label %289

283:                                              ; preds = %262
  %284 = load i32, i32* %23, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = load i32, i32* %23, align 4
  store i32 %287, i32* %2, align 4
  br label %349

288:                                              ; preds = %283
  br label %289

289:                                              ; preds = %288, %282
  %290 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %291 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %22, align 4
  %294 = sub nsw i32 %292, %293
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 4
  %297 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %298 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %301 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %299, %302
  store i32 %303, i32* %24, align 4
  %304 = load i32, i32* %24, align 4
  %305 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %306 = call i32 @r_Step_5(%struct.SN_env* %305)
  store i32 %306, i32* %25, align 4
  %307 = load i32, i32* %25, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %289
  br label %316

310:                                              ; preds = %289
  %311 = load i32, i32* %25, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = load i32, i32* %25, align 4
  store i32 %314, i32* %2, align 4
  br label %349

315:                                              ; preds = %310
  br label %316

316:                                              ; preds = %315, %309
  %317 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %318 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %24, align 4
  %321 = sub nsw i32 %319, %320
  %322 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %323 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %322, i32 0, i32 0
  store i32 %321, i32* %323, align 4
  br label %324

324:                                              ; preds = %316, %153
  %325 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %326 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %329 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %328, i32 0, i32 0
  store i32 %327, i32* %329, align 4
  %330 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %331 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %26, align 4
  %333 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %334 = call i32 @r_postlude(%struct.SN_env* %333)
  store i32 %334, i32* %27, align 4
  %335 = load i32, i32* %27, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %324
  br label %344

338:                                              ; preds = %324
  %339 = load i32, i32* %27, align 4
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = load i32, i32* %27, align 4
  store i32 %342, i32* %2, align 4
  br label %349

343:                                              ; preds = %338
  br label %344

344:                                              ; preds = %343, %337
  %345 = load i32, i32* %26, align 4
  %346 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %347 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %346, i32 0, i32 0
  store i32 %345, i32* %347, align 4
  br label %348

348:                                              ; preds = %344, %66, %41
  store i32 1, i32* %2, align 4
  br label %349

349:                                              ; preds = %348, %341, %313, %286, %259, %232, %205, %178, %151, %124, %94, %82, %39
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

declare dso_local i32 @r_exception1(%struct.SN_env*) #1

declare dso_local i32 @r_prelude(%struct.SN_env*) #1

declare dso_local i32 @r_mark_regions(%struct.SN_env*) #1

declare dso_local i32 @r_Step_1a(%struct.SN_env*) #1

declare dso_local i32 @r_exception2(%struct.SN_env*) #1

declare dso_local i32 @r_Step_1b(%struct.SN_env*) #1

declare dso_local i32 @r_Step_1c(%struct.SN_env*) #1

declare dso_local i32 @r_Step_2(%struct.SN_env*) #1

declare dso_local i32 @r_Step_3(%struct.SN_env*) #1

declare dso_local i32 @r_Step_4(%struct.SN_env*) #1

declare dso_local i32 @r_Step_5(%struct.SN_env*) #1

declare dso_local i32 @r_postlude(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
