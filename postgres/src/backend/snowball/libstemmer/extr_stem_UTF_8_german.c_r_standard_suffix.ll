; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_german.c_r_standard_suffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_german.c_r_standard_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32*, i64 }

@a_1 = common dso_local global i32 0, align 4
@s_8 = common dso_local global i32 0, align 4
@g_s_ending = common dso_local global i32 0, align 4
@a_2 = common dso_local global i32 0, align 4
@g_st_ending = common dso_local global i32 0, align 4
@a_4 = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@a_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SN_env*)* @r_standard_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_standard_suffix(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %35 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %36 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %39 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %47 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %50, %53
  br i1 %54, label %83, label %55

55:                                               ; preds = %1
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %60 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 5
  %67 = icmp ne i32 %66, 3
  br i1 %67, label %83, label %68

68:                                               ; preds = %55
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 31
  %80 = ashr i32 811040, %79
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %68, %55, %1
  br label %213

84:                                               ; preds = %68
  %85 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %86 = load i32, i32* @a_1, align 4
  %87 = call i32 @find_among_b(%struct.SN_env* %85, i32 %86, i32 7)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %213

91:                                               ; preds = %84
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %96, i32 0, i32 5
  store i64 %95, i64* %97, align 8
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = call i32 @r_R1(%struct.SN_env* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %213

103:                                              ; preds = %91
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %793

108:                                              ; preds = %103
  %109 = load i32, i32* %4, align 4
  switch i32 %109, label %212 [
    i32 1, label %110
    i32 2, label %118
    i32 3, label %198
  ]

110:                                              ; preds = %108
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = call i32 @slice_del(%struct.SN_env* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %793

117:                                              ; preds = %110
  br label %212

118:                                              ; preds = %108
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = call i32 @slice_del(%struct.SN_env* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %793

125:                                              ; preds = %118
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %130 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %128, %131
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp sle i32 %141, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %125
  %147 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %148 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %151 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %149, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 115
  br i1 %157, label %158, label %166

158:                                              ; preds = %146, %125
  %159 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %165 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %197

166:                                              ; preds = %146
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %175, i32 0, i32 5
  store i64 %174, i64* %176, align 8
  %177 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %178 = load i32, i32* @s_8, align 4
  %179 = call i32 @eq_s_b(%struct.SN_env* %177, i32 3, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %166
  %182 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %183 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %188 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  br label %197

189:                                              ; preds = %166
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = call i32 @slice_del(%struct.SN_env* %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %2, align 4
  br label %793

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %181, %158
  br label %212

198:                                              ; preds = %108
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = load i32, i32* @g_s_ending, align 4
  %201 = call i32 @in_grouping_b_U(%struct.SN_env* %199, i32 %200, i32 98, i32 116, i32 0)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %213

204:                                              ; preds = %198
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = call i32 @slice_del(%struct.SN_env* %205)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i32, i32* %11, align 4
  store i32 %210, i32* %2, align 4
  br label %793

211:                                              ; preds = %204
  br label %212

212:                                              ; preds = %108, %211, %197, %117
  br label %213

213:                                              ; preds = %212, %203, %102, %90, %83
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sub nsw i32 %216, %217
  %219 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %220 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %223, %226
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %235 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, 1
  %238 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %239 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = icmp sle i32 %237, %240
  br i1 %241, label %270, label %242

242:                                              ; preds = %213
  %243 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %244 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %243, i32 0, i32 4
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %245, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = ashr i32 %252, 5
  %254 = icmp ne i32 %253, 3
  br i1 %254, label %270, label %255

255:                                              ; preds = %242
  %256 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %257 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %260 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %258, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, 31
  %267 = ashr i32 1327104, %266
  %268 = and i32 %267, 1
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %255, %242, %213
  br label %341

271:                                              ; preds = %255
  %272 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %273 = load i32, i32* @a_2, align 4
  %274 = call i32 @find_among_b(%struct.SN_env* %272, i32 %273, i32 4)
  store i32 %274, i32* %4, align 4
  %275 = load i32, i32* %4, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %271
  br label %341

278:                                              ; preds = %271
  %279 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %280 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %283, i32 0, i32 5
  store i64 %282, i64* %284, align 8
  %285 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %286 = call i32 @r_R1(%struct.SN_env* %285)
  store i32 %286, i32* %13, align 4
  %287 = load i32, i32* %13, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %278
  br label %341

290:                                              ; preds = %278
  %291 = load i32, i32* %13, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i32, i32* %13, align 4
  store i32 %294, i32* %2, align 4
  br label %793

295:                                              ; preds = %290
  %296 = load i32, i32* %4, align 4
  switch i32 %296, label %340 [
    i32 1, label %297
    i32 2, label %305
  ]

297:                                              ; preds = %295
  %298 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %299 = call i32 @slice_del(%struct.SN_env* %298)
  store i32 %299, i32* %14, align 4
  %300 = load i32, i32* %14, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = load i32, i32* %14, align 4
  store i32 %303, i32* %2, align 4
  br label %793

304:                                              ; preds = %297
  br label %340

305:                                              ; preds = %295
  %306 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %307 = load i32, i32* @g_st_ending, align 4
  %308 = call i32 @in_grouping_b_U(%struct.SN_env* %306, i32 %307, i32 98, i32 116, i32 0)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  br label %341

311:                                              ; preds = %305
  %312 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %313 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %312, i32 0, i32 4
  %314 = load i32*, i32** %313, align 8
  %315 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %316 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %320 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %323 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @skip_utf8(i32* %314, i64 %318, i32 %321, i32 %324, i32 -3)
  store i32 %325, i32* %15, align 4
  %326 = load i32, i32* %15, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %311
  br label %341

329:                                              ; preds = %311
  %330 = load i32, i32* %15, align 4
  %331 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %332 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 4
  %333 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %334 = call i32 @slice_del(%struct.SN_env* %333)
  store i32 %334, i32* %16, align 4
  %335 = load i32, i32* %16, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %329
  %338 = load i32, i32* %16, align 4
  store i32 %338, i32* %2, align 4
  br label %793

339:                                              ; preds = %329
  br label %340

340:                                              ; preds = %295, %339, %304
  br label %341

341:                                              ; preds = %340, %328, %310, %289, %277, %270
  %342 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %343 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* %12, align 4
  %346 = sub nsw i32 %344, %345
  %347 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %348 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %347, i32 0, i32 1
  store i32 %346, i32* %348, align 4
  %349 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %350 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %353 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = sub nsw i32 %351, %354
  store i32 %355, i32* %17, align 4
  %356 = load i32, i32* %17, align 4
  %357 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %358 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %361 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %360, i32 0, i32 2
  store i32 %359, i32* %361, align 8
  %362 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %363 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = sub nsw i32 %364, 1
  %366 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %367 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = icmp sle i32 %365, %368
  br i1 %369, label %398, label %370

370:                                              ; preds = %341
  %371 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %372 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %371, i32 0, i32 4
  %373 = load i32*, i32** %372, align 8
  %374 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %375 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = sub nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %373, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = ashr i32 %380, 5
  %382 = icmp ne i32 %381, 3
  br i1 %382, label %398, label %383

383:                                              ; preds = %370
  %384 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %385 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %384, i32 0, i32 4
  %386 = load i32*, i32** %385, align 8
  %387 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %388 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = sub nsw i32 %389, 1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %386, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = and i32 %393, 31
  %395 = ashr i32 1051024, %394
  %396 = and i32 %395, 1
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %383, %370, %341
  br label %785

399:                                              ; preds = %383
  %400 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %401 = load i32, i32* @a_4, align 4
  %402 = call i32 @find_among_b(%struct.SN_env* %400, i32 %401, i32 8)
  store i32 %402, i32* %4, align 4
  %403 = load i32, i32* %4, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %406, label %405

405:                                              ; preds = %399
  br label %785

406:                                              ; preds = %399
  %407 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %408 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %412 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %411, i32 0, i32 5
  store i64 %410, i64* %412, align 8
  %413 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %414 = call i32 @r_R2(%struct.SN_env* %413)
  store i32 %414, i32* %18, align 4
  %415 = load i32, i32* %18, align 4
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %406
  br label %785

418:                                              ; preds = %406
  %419 = load i32, i32* %18, align 4
  %420 = icmp slt i32 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %418
  %422 = load i32, i32* %18, align 4
  store i32 %422, i32* %2, align 4
  br label %793

423:                                              ; preds = %418
  %424 = load i32, i32* %4, align 4
  switch i32 %424, label %784 [
    i32 1, label %425
    i32 2, label %539
    i32 3, label %588
    i32 4, label %677
  ]

425:                                              ; preds = %423
  %426 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %427 = call i32 @slice_del(%struct.SN_env* %426)
  store i32 %427, i32* %19, align 4
  %428 = load i32, i32* %19, align 4
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %425
  %431 = load i32, i32* %19, align 4
  store i32 %431, i32* %2, align 4
  br label %793

432:                                              ; preds = %425
  %433 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %434 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %437 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = sub nsw i32 %435, %438
  store i32 %439, i32* %20, align 4
  %440 = load i32, i32* %20, align 4
  %441 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %442 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %445 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %444, i32 0, i32 2
  store i32 %443, i32* %445, align 8
  %446 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %447 = load i32, i32* @s_9, align 4
  %448 = call i32 @eq_s_b(%struct.SN_env* %446, i32 2, i32 %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %458, label %450

450:                                              ; preds = %432
  %451 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %452 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* %20, align 4
  %455 = sub nsw i32 %453, %454
  %456 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %457 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %456, i32 0, i32 1
  store i32 %455, i32* %457, align 4
  br label %538

458:                                              ; preds = %432
  %459 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %460 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = sext i32 %461 to i64
  %463 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %464 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %463, i32 0, i32 5
  store i64 %462, i64* %464, align 8
  %465 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %466 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %469 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = sub nsw i32 %467, %470
  store i32 %471, i32* %21, align 4
  %472 = load i32, i32* %21, align 4
  %473 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %474 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %477 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 4
  %479 = icmp sle i32 %475, %478
  br i1 %479, label %492, label %480

480:                                              ; preds = %458
  %481 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %482 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %481, i32 0, i32 4
  %483 = load i32*, i32** %482, align 8
  %484 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %485 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = sub nsw i32 %486, 1
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %483, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = icmp ne i32 %490, 101
  br i1 %491, label %492, label %493

492:                                              ; preds = %480, %458
  br label %505

493:                                              ; preds = %480
  %494 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %495 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = add nsw i32 %496, -1
  store i32 %497, i32* %495, align 4
  %498 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %499 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load i32, i32* %20, align 4
  %502 = sub nsw i32 %500, %501
  %503 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %504 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %503, i32 0, i32 1
  store i32 %502, i32* %504, align 4
  br label %538

505:                                              ; preds = %492
  %506 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %507 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* %21, align 4
  %510 = sub nsw i32 %508, %509
  %511 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %512 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %511, i32 0, i32 1
  store i32 %510, i32* %512, align 4
  %513 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %514 = call i32 @r_R2(%struct.SN_env* %513)
  store i32 %514, i32* %22, align 4
  %515 = load i32, i32* %22, align 4
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %525

517:                                              ; preds = %505
  %518 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %519 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* %20, align 4
  %522 = sub nsw i32 %520, %521
  %523 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %524 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %523, i32 0, i32 1
  store i32 %522, i32* %524, align 4
  br label %538

525:                                              ; preds = %505
  %526 = load i32, i32* %22, align 4
  %527 = icmp slt i32 %526, 0
  br i1 %527, label %528, label %530

528:                                              ; preds = %525
  %529 = load i32, i32* %22, align 4
  store i32 %529, i32* %2, align 4
  br label %793

530:                                              ; preds = %525
  %531 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %532 = call i32 @slice_del(%struct.SN_env* %531)
  store i32 %532, i32* %23, align 4
  %533 = load i32, i32* %23, align 4
  %534 = icmp slt i32 %533, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %530
  %536 = load i32, i32* %23, align 4
  store i32 %536, i32* %2, align 4
  br label %793

537:                                              ; preds = %530
  br label %538

538:                                              ; preds = %537, %517, %493, %450
  br label %784

539:                                              ; preds = %423
  %540 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %541 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %544 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = sub nsw i32 %542, %545
  store i32 %546, i32* %24, align 4
  %547 = load i32, i32* %24, align 4
  %548 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %549 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 4
  %551 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %552 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %551, i32 0, i32 3
  %553 = load i32, i32* %552, align 4
  %554 = icmp sle i32 %550, %553
  br i1 %554, label %567, label %555

555:                                              ; preds = %539
  %556 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %557 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %556, i32 0, i32 4
  %558 = load i32*, i32** %557, align 8
  %559 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %560 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = sub nsw i32 %561, 1
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %558, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = icmp ne i32 %565, 101
  br i1 %566, label %567, label %568

567:                                              ; preds = %555, %539
  br label %573

568:                                              ; preds = %555
  %569 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %570 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %569, i32 0, i32 1
  %571 = load i32, i32* %570, align 4
  %572 = add nsw i32 %571, -1
  store i32 %572, i32* %570, align 4
  br label %785

573:                                              ; preds = %567
  %574 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %575 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load i32, i32* %24, align 4
  %578 = sub nsw i32 %576, %577
  %579 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %580 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %579, i32 0, i32 1
  store i32 %578, i32* %580, align 4
  %581 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %582 = call i32 @slice_del(%struct.SN_env* %581)
  store i32 %582, i32* %25, align 4
  %583 = load i32, i32* %25, align 4
  %584 = icmp slt i32 %583, 0
  br i1 %584, label %585, label %587

585:                                              ; preds = %573
  %586 = load i32, i32* %25, align 4
  store i32 %586, i32* %2, align 4
  br label %793

587:                                              ; preds = %573
  br label %784

588:                                              ; preds = %423
  %589 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %590 = call i32 @slice_del(%struct.SN_env* %589)
  store i32 %590, i32* %26, align 4
  %591 = load i32, i32* %26, align 4
  %592 = icmp slt i32 %591, 0
  br i1 %592, label %593, label %595

593:                                              ; preds = %588
  %594 = load i32, i32* %26, align 4
  store i32 %594, i32* %2, align 4
  br label %793

595:                                              ; preds = %588
  %596 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %597 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %600 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = sub nsw i32 %598, %601
  store i32 %602, i32* %27, align 4
  %603 = load i32, i32* %27, align 4
  %604 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %605 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %604, i32 0, i32 1
  %606 = load i32, i32* %605, align 4
  %607 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %608 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %607, i32 0, i32 2
  store i32 %606, i32* %608, align 8
  %609 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %610 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 8
  %612 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %613 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %612, i32 0, i32 1
  %614 = load i32, i32* %613, align 4
  %615 = sub nsw i32 %611, %614
  store i32 %615, i32* %28, align 4
  %616 = load i32, i32* %28, align 4
  %617 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %618 = load i32, i32* @s_10, align 4
  %619 = call i32 @eq_s_b(%struct.SN_env* %617, i32 2, i32 %618)
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %622, label %621

621:                                              ; preds = %595
  br label %623

622:                                              ; preds = %595
  br label %644

623:                                              ; preds = %621
  %624 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %625 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 8
  %627 = load i32, i32* %28, align 4
  %628 = sub nsw i32 %626, %627
  %629 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %630 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %629, i32 0, i32 1
  store i32 %628, i32* %630, align 4
  %631 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %632 = load i32, i32* @s_11, align 4
  %633 = call i32 @eq_s_b(%struct.SN_env* %631, i32 2, i32 %632)
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %643, label %635

635:                                              ; preds = %623
  %636 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %637 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  %639 = load i32, i32* %27, align 4
  %640 = sub nsw i32 %638, %639
  %641 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %642 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %641, i32 0, i32 1
  store i32 %640, i32* %642, align 4
  br label %676

643:                                              ; preds = %623
  br label %644

644:                                              ; preds = %643, %622
  %645 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %646 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 4
  %648 = sext i32 %647 to i64
  %649 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %650 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %649, i32 0, i32 5
  store i64 %648, i64* %650, align 8
  %651 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %652 = call i32 @r_R1(%struct.SN_env* %651)
  store i32 %652, i32* %29, align 4
  %653 = load i32, i32* %29, align 4
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %655, label %663

655:                                              ; preds = %644
  %656 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %657 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 8
  %659 = load i32, i32* %27, align 4
  %660 = sub nsw i32 %658, %659
  %661 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %662 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %661, i32 0, i32 1
  store i32 %660, i32* %662, align 4
  br label %676

663:                                              ; preds = %644
  %664 = load i32, i32* %29, align 4
  %665 = icmp slt i32 %664, 0
  br i1 %665, label %666, label %668

666:                                              ; preds = %663
  %667 = load i32, i32* %29, align 4
  store i32 %667, i32* %2, align 4
  br label %793

668:                                              ; preds = %663
  %669 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %670 = call i32 @slice_del(%struct.SN_env* %669)
  store i32 %670, i32* %30, align 4
  %671 = load i32, i32* %30, align 4
  %672 = icmp slt i32 %671, 0
  br i1 %672, label %673, label %675

673:                                              ; preds = %668
  %674 = load i32, i32* %30, align 4
  store i32 %674, i32* %2, align 4
  br label %793

675:                                              ; preds = %668
  br label %676

676:                                              ; preds = %675, %655, %635
  br label %784

677:                                              ; preds = %423
  %678 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %679 = call i32 @slice_del(%struct.SN_env* %678)
  store i32 %679, i32* %31, align 4
  %680 = load i32, i32* %31, align 4
  %681 = icmp slt i32 %680, 0
  br i1 %681, label %682, label %684

682:                                              ; preds = %677
  %683 = load i32, i32* %31, align 4
  store i32 %683, i32* %2, align 4
  br label %793

684:                                              ; preds = %677
  %685 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %686 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %685, i32 0, i32 0
  %687 = load i32, i32* %686, align 8
  %688 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %689 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %688, i32 0, i32 1
  %690 = load i32, i32* %689, align 4
  %691 = sub nsw i32 %687, %690
  store i32 %691, i32* %32, align 4
  %692 = load i32, i32* %32, align 4
  %693 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %694 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %693, i32 0, i32 1
  %695 = load i32, i32* %694, align 4
  %696 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %697 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %696, i32 0, i32 2
  store i32 %695, i32* %697, align 8
  %698 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %699 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %698, i32 0, i32 1
  %700 = load i32, i32* %699, align 4
  %701 = sub nsw i32 %700, 1
  %702 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %703 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %702, i32 0, i32 3
  %704 = load i32, i32* %703, align 4
  %705 = icmp sle i32 %701, %704
  br i1 %705, label %730, label %706

706:                                              ; preds = %684
  %707 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %708 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %707, i32 0, i32 4
  %709 = load i32*, i32** %708, align 8
  %710 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %711 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %710, i32 0, i32 1
  %712 = load i32, i32* %711, align 4
  %713 = sub nsw i32 %712, 1
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i32, i32* %709, i64 %714
  %716 = load i32, i32* %715, align 4
  %717 = icmp ne i32 %716, 103
  br i1 %717, label %718, label %738

718:                                              ; preds = %706
  %719 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %720 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %719, i32 0, i32 4
  %721 = load i32*, i32** %720, align 8
  %722 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %723 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %722, i32 0, i32 1
  %724 = load i32, i32* %723, align 4
  %725 = sub nsw i32 %724, 1
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds i32, i32* %721, i64 %726
  %728 = load i32, i32* %727, align 4
  %729 = icmp ne i32 %728, 104
  br i1 %729, label %730, label %738

730:                                              ; preds = %718, %684
  %731 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %732 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %731, i32 0, i32 0
  %733 = load i32, i32* %732, align 8
  %734 = load i32, i32* %32, align 4
  %735 = sub nsw i32 %733, %734
  %736 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %737 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %736, i32 0, i32 1
  store i32 %735, i32* %737, align 4
  br label %783

738:                                              ; preds = %718, %706
  %739 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %740 = load i32, i32* @a_3, align 4
  %741 = call i32 @find_among_b(%struct.SN_env* %739, i32 %740, i32 2)
  %742 = icmp ne i32 %741, 0
  br i1 %742, label %751, label %743

743:                                              ; preds = %738
  %744 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %745 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %744, i32 0, i32 0
  %746 = load i32, i32* %745, align 8
  %747 = load i32, i32* %32, align 4
  %748 = sub nsw i32 %746, %747
  %749 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %750 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %749, i32 0, i32 1
  store i32 %748, i32* %750, align 4
  br label %783

751:                                              ; preds = %738
  %752 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %753 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %752, i32 0, i32 1
  %754 = load i32, i32* %753, align 4
  %755 = sext i32 %754 to i64
  %756 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %757 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %756, i32 0, i32 5
  store i64 %755, i64* %757, align 8
  %758 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %759 = call i32 @r_R2(%struct.SN_env* %758)
  store i32 %759, i32* %33, align 4
  %760 = load i32, i32* %33, align 4
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %770

762:                                              ; preds = %751
  %763 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %764 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %763, i32 0, i32 0
  %765 = load i32, i32* %764, align 8
  %766 = load i32, i32* %32, align 4
  %767 = sub nsw i32 %765, %766
  %768 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %769 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %768, i32 0, i32 1
  store i32 %767, i32* %769, align 4
  br label %783

770:                                              ; preds = %751
  %771 = load i32, i32* %33, align 4
  %772 = icmp slt i32 %771, 0
  br i1 %772, label %773, label %775

773:                                              ; preds = %770
  %774 = load i32, i32* %33, align 4
  store i32 %774, i32* %2, align 4
  br label %793

775:                                              ; preds = %770
  %776 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %777 = call i32 @slice_del(%struct.SN_env* %776)
  store i32 %777, i32* %34, align 4
  %778 = load i32, i32* %34, align 4
  %779 = icmp slt i32 %778, 0
  br i1 %779, label %780, label %782

780:                                              ; preds = %775
  %781 = load i32, i32* %34, align 4
  store i32 %781, i32* %2, align 4
  br label %793

782:                                              ; preds = %775
  br label %783

783:                                              ; preds = %782, %762, %743, %730
  br label %784

784:                                              ; preds = %423, %783, %676, %587, %538
  br label %785

785:                                              ; preds = %784, %568, %417, %405, %398
  %786 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %787 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %786, i32 0, i32 0
  %788 = load i32, i32* %787, align 8
  %789 = load i32, i32* %17, align 4
  %790 = sub nsw i32 %788, %789
  %791 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %792 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %791, i32 0, i32 1
  store i32 %790, i32* %792, align 4
  store i32 1, i32* %2, align 4
  br label %793

793:                                              ; preds = %785, %780, %773, %682, %673, %666, %593, %585, %535, %528, %430, %421, %337, %302, %293, %209, %194, %123, %115, %106
  %794 = load i32, i32* %2, align 4
  ret i32 %794
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @in_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @skip_utf8(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @r_R2(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
