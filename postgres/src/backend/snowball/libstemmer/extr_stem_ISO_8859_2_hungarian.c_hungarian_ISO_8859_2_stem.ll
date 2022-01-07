; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_hungarian.c_hungarian_ISO_8859_2_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_2_hungarian.c_hungarian_ISO_8859_2_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hungarian_ISO_8859_2_stem(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %24 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %25 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %28 = call i32 @r_mark_regions(%struct.SN_env* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %38

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %300

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %48 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %51 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %56 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = call i32 @r_instrum(%struct.SN_env* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %38
  br label %71

65:                                               ; preds = %38
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %300

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %64
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %83 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %81, %84
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = call i32 @r_case(%struct.SN_env* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %71
  br label %98

92:                                               ; preds = %71
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %2, align 4
  br label %300

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %91
  %99 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %100 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %108, %111
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = call i32 @r_case_special(%struct.SN_env* %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %98
  br label %125

119:                                              ; preds = %98
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %2, align 4
  br label %300

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %118
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %132 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %135, %138
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %142 = call i32 @r_case_other(%struct.SN_env* %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %125
  br label %152

146:                                              ; preds = %125
  %147 = load i32, i32* %13, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %2, align 4
  br label %300

151:                                              ; preds = %146
  br label %152

152:                                              ; preds = %151, %145
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %12, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %159 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %161 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %162, %165
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = call i32 @r_factive(%struct.SN_env* %168)
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %152
  br label %179

173:                                              ; preds = %152
  %174 = load i32, i32* %15, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load i32, i32* %15, align 4
  store i32 %177, i32* %2, align 4
  br label %300

178:                                              ; preds = %173
  br label %179

179:                                              ; preds = %178, %172
  %180 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %181 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %14, align 4
  %184 = sub nsw i32 %182, %183
  %185 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %186 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %189, %192
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* %16, align 4
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = call i32 @r_owned(%struct.SN_env* %195)
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* %17, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %179
  br label %206

200:                                              ; preds = %179
  %201 = load i32, i32* %17, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = load i32, i32* %17, align 4
  store i32 %204, i32* %2, align 4
  br label %300

205:                                              ; preds = %200
  br label %206

206:                                              ; preds = %205, %199
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %16, align 4
  %211 = sub nsw i32 %209, %210
  %212 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %213 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 4
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %218 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 %216, %219
  store i32 %220, i32* %18, align 4
  %221 = load i32, i32* %18, align 4
  %222 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %223 = call i32 @r_sing_owner(%struct.SN_env* %222)
  store i32 %223, i32* %19, align 4
  %224 = load i32, i32* %19, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %206
  br label %233

227:                                              ; preds = %206
  %228 = load i32, i32* %19, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load i32, i32* %19, align 4
  store i32 %231, i32* %2, align 4
  br label %300

232:                                              ; preds = %227
  br label %233

233:                                              ; preds = %232, %226
  %234 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %235 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %18, align 4
  %238 = sub nsw i32 %236, %237
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 4
  %241 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %242 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = sub nsw i32 %243, %246
  store i32 %247, i32* %20, align 4
  %248 = load i32, i32* %20, align 4
  %249 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %250 = call i32 @r_plur_owner(%struct.SN_env* %249)
  store i32 %250, i32* %21, align 4
  %251 = load i32, i32* %21, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %233
  br label %260

254:                                              ; preds = %233
  %255 = load i32, i32* %21, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %254
  %258 = load i32, i32* %21, align 4
  store i32 %258, i32* %2, align 4
  br label %300

259:                                              ; preds = %254
  br label %260

260:                                              ; preds = %259, %253
  %261 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %262 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %20, align 4
  %265 = sub nsw i32 %263, %264
  %266 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %267 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 4
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 %270, %273
  store i32 %274, i32* %22, align 4
  %275 = load i32, i32* %22, align 4
  %276 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %277 = call i32 @r_plural(%struct.SN_env* %276)
  store i32 %277, i32* %23, align 4
  %278 = load i32, i32* %23, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %260
  br label %287

281:                                              ; preds = %260
  %282 = load i32, i32* %23, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = load i32, i32* %23, align 4
  store i32 %285, i32* %2, align 4
  br label %300

286:                                              ; preds = %281
  br label %287

287:                                              ; preds = %286, %280
  %288 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %289 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %22, align 4
  %292 = sub nsw i32 %290, %291
  %293 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %294 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 4
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %299 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %298, i32 0, i32 0
  store i32 %297, i32* %299, align 4
  store i32 1, i32* %2, align 4
  br label %300

300:                                              ; preds = %287, %284, %257, %230, %203, %176, %149, %122, %95, %68, %35
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local i32 @r_mark_regions(%struct.SN_env*) #1

declare dso_local i32 @r_instrum(%struct.SN_env*) #1

declare dso_local i32 @r_case(%struct.SN_env*) #1

declare dso_local i32 @r_case_special(%struct.SN_env*) #1

declare dso_local i32 @r_case_other(%struct.SN_env*) #1

declare dso_local i32 @r_factive(%struct.SN_env*) #1

declare dso_local i32 @r_owned(%struct.SN_env*) #1

declare dso_local i32 @r_sing_owner(%struct.SN_env*) #1

declare dso_local i32 @r_plur_owner(%struct.SN_env*) #1

declare dso_local i32 @r_plural(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
