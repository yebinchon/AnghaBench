; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_german.c_r_standard_suffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_german.c_r_standard_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32*, i64 }

@a_1 = common dso_local global i32 0, align 4
@s_7 = common dso_local global i32 0, align 4
@g_s_ending = common dso_local global i32 0, align 4
@a_2 = common dso_local global i32 0, align 4
@g_st_ending = common dso_local global i32 0, align 4
@a_4 = common dso_local global i32 0, align 4
@s_8 = common dso_local global i32 0, align 4
@s_9 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
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
  br label %792

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
  br label %792

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
  br label %792

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
  %178 = load i32, i32* @s_7, align 4
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
  br label %792

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %181, %158
  br label %212

198:                                              ; preds = %108
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = load i32, i32* @g_s_ending, align 4
  %201 = call i32 @in_grouping_b(%struct.SN_env* %199, i32 %200, i32 98, i32 116, i32 0)
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
  br label %792

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
  br label %340

271:                                              ; preds = %255
  %272 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %273 = load i32, i32* @a_2, align 4
  %274 = call i32 @find_among_b(%struct.SN_env* %272, i32 %273, i32 4)
  store i32 %274, i32* %4, align 4
  %275 = load i32, i32* %4, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %271
  br label %340

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
  br label %340

290:                                              ; preds = %278
  %291 = load i32, i32* %13, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i32, i32* %13, align 4
  store i32 %294, i32* %2, align 4
  br label %792

295:                                              ; preds = %290
  %296 = load i32, i32* %4, align 4
  switch i32 %296, label %339 [
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
  br label %792

304:                                              ; preds = %297
  br label %339

305:                                              ; preds = %295
  %306 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %307 = load i32, i32* @g_st_ending, align 4
  %308 = call i32 @in_grouping_b(%struct.SN_env* %306, i32 %307, i32 98, i32 116, i32 0)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  br label %340

311:                                              ; preds = %305
  %312 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %313 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = sub nsw i32 %314, 3
  store i32 %315, i32* %15, align 4
  %316 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %317 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %15, align 4
  %320 = icmp sgt i32 %318, %319
  br i1 %320, label %327, label %321

321:                                              ; preds = %311
  %322 = load i32, i32* %15, align 4
  %323 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %324 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp sgt i32 %322, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %321, %311
  br label %340

328:                                              ; preds = %321
  %329 = load i32, i32* %15, align 4
  %330 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %331 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %330, i32 0, i32 1
  store i32 %329, i32* %331, align 4
  %332 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %333 = call i32 @slice_del(%struct.SN_env* %332)
  store i32 %333, i32* %16, align 4
  %334 = load i32, i32* %16, align 4
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %328
  %337 = load i32, i32* %16, align 4
  store i32 %337, i32* %2, align 4
  br label %792

338:                                              ; preds = %328
  br label %339

339:                                              ; preds = %295, %338, %304
  br label %340

340:                                              ; preds = %339, %327, %310, %289, %277, %270
  %341 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %342 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* %12, align 4
  %345 = sub nsw i32 %343, %344
  %346 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %347 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 4
  %348 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %349 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %352 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = sub nsw i32 %350, %353
  store i32 %354, i32* %17, align 4
  %355 = load i32, i32* %17, align 4
  %356 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %357 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %360 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %359, i32 0, i32 2
  store i32 %358, i32* %360, align 8
  %361 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %362 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = sub nsw i32 %363, 1
  %365 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %366 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = icmp sle i32 %364, %367
  br i1 %368, label %397, label %369

369:                                              ; preds = %340
  %370 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %371 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %370, i32 0, i32 4
  %372 = load i32*, i32** %371, align 8
  %373 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %374 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = sub nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %372, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = ashr i32 %379, 5
  %381 = icmp ne i32 %380, 3
  br i1 %381, label %397, label %382

382:                                              ; preds = %369
  %383 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %384 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %383, i32 0, i32 4
  %385 = load i32*, i32** %384, align 8
  %386 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %387 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = sub nsw i32 %388, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %385, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = and i32 %392, 31
  %394 = ashr i32 1051024, %393
  %395 = and i32 %394, 1
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %398, label %397

397:                                              ; preds = %382, %369, %340
  br label %784

398:                                              ; preds = %382
  %399 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %400 = load i32, i32* @a_4, align 4
  %401 = call i32 @find_among_b(%struct.SN_env* %399, i32 %400, i32 8)
  store i32 %401, i32* %4, align 4
  %402 = load i32, i32* %4, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %398
  br label %784

405:                                              ; preds = %398
  %406 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %407 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %408 to i64
  %410 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %411 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %410, i32 0, i32 5
  store i64 %409, i64* %411, align 8
  %412 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %413 = call i32 @r_R2(%struct.SN_env* %412)
  store i32 %413, i32* %18, align 4
  %414 = load i32, i32* %18, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %405
  br label %784

417:                                              ; preds = %405
  %418 = load i32, i32* %18, align 4
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %417
  %421 = load i32, i32* %18, align 4
  store i32 %421, i32* %2, align 4
  br label %792

422:                                              ; preds = %417
  %423 = load i32, i32* %4, align 4
  switch i32 %423, label %783 [
    i32 1, label %424
    i32 2, label %538
    i32 3, label %587
    i32 4, label %676
  ]

424:                                              ; preds = %422
  %425 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %426 = call i32 @slice_del(%struct.SN_env* %425)
  store i32 %426, i32* %19, align 4
  %427 = load i32, i32* %19, align 4
  %428 = icmp slt i32 %427, 0
  br i1 %428, label %429, label %431

429:                                              ; preds = %424
  %430 = load i32, i32* %19, align 4
  store i32 %430, i32* %2, align 4
  br label %792

431:                                              ; preds = %424
  %432 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %433 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %436 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = sub nsw i32 %434, %437
  store i32 %438, i32* %20, align 4
  %439 = load i32, i32* %20, align 4
  %440 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %441 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %444 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %443, i32 0, i32 2
  store i32 %442, i32* %444, align 8
  %445 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %446 = load i32, i32* @s_8, align 4
  %447 = call i32 @eq_s_b(%struct.SN_env* %445, i32 2, i32 %446)
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %457, label %449

449:                                              ; preds = %431
  %450 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %451 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = load i32, i32* %20, align 4
  %454 = sub nsw i32 %452, %453
  %455 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %456 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %455, i32 0, i32 1
  store i32 %454, i32* %456, align 4
  br label %537

457:                                              ; preds = %431
  %458 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %459 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = sext i32 %460 to i64
  %462 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %463 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %462, i32 0, i32 5
  store i64 %461, i64* %463, align 8
  %464 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %465 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %468 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = sub nsw i32 %466, %469
  store i32 %470, i32* %21, align 4
  %471 = load i32, i32* %21, align 4
  %472 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %473 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %476 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 4
  %478 = icmp sle i32 %474, %477
  br i1 %478, label %491, label %479

479:                                              ; preds = %457
  %480 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %481 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %480, i32 0, i32 4
  %482 = load i32*, i32** %481, align 8
  %483 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %484 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = sub nsw i32 %485, 1
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %482, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = icmp ne i32 %489, 101
  br i1 %490, label %491, label %492

491:                                              ; preds = %479, %457
  br label %504

492:                                              ; preds = %479
  %493 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %494 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = add nsw i32 %495, -1
  store i32 %496, i32* %494, align 4
  %497 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %498 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* %20, align 4
  %501 = sub nsw i32 %499, %500
  %502 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %503 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %502, i32 0, i32 1
  store i32 %501, i32* %503, align 4
  br label %537

504:                                              ; preds = %491
  %505 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %506 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* %21, align 4
  %509 = sub nsw i32 %507, %508
  %510 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %511 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %510, i32 0, i32 1
  store i32 %509, i32* %511, align 4
  %512 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %513 = call i32 @r_R2(%struct.SN_env* %512)
  store i32 %513, i32* %22, align 4
  %514 = load i32, i32* %22, align 4
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %524

516:                                              ; preds = %504
  %517 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %518 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = load i32, i32* %20, align 4
  %521 = sub nsw i32 %519, %520
  %522 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %523 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %522, i32 0, i32 1
  store i32 %521, i32* %523, align 4
  br label %537

524:                                              ; preds = %504
  %525 = load i32, i32* %22, align 4
  %526 = icmp slt i32 %525, 0
  br i1 %526, label %527, label %529

527:                                              ; preds = %524
  %528 = load i32, i32* %22, align 4
  store i32 %528, i32* %2, align 4
  br label %792

529:                                              ; preds = %524
  %530 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %531 = call i32 @slice_del(%struct.SN_env* %530)
  store i32 %531, i32* %23, align 4
  %532 = load i32, i32* %23, align 4
  %533 = icmp slt i32 %532, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %529
  %535 = load i32, i32* %23, align 4
  store i32 %535, i32* %2, align 4
  br label %792

536:                                              ; preds = %529
  br label %537

537:                                              ; preds = %536, %516, %492, %449
  br label %783

538:                                              ; preds = %422
  %539 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %540 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %543 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = sub nsw i32 %541, %544
  store i32 %545, i32* %24, align 4
  %546 = load i32, i32* %24, align 4
  %547 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %548 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %551 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %550, i32 0, i32 3
  %552 = load i32, i32* %551, align 4
  %553 = icmp sle i32 %549, %552
  br i1 %553, label %566, label %554

554:                                              ; preds = %538
  %555 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %556 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %555, i32 0, i32 4
  %557 = load i32*, i32** %556, align 8
  %558 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %559 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 4
  %561 = sub nsw i32 %560, 1
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32* %557, i64 %562
  %564 = load i32, i32* %563, align 4
  %565 = icmp ne i32 %564, 101
  br i1 %565, label %566, label %567

566:                                              ; preds = %554, %538
  br label %572

567:                                              ; preds = %554
  %568 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %569 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = add nsw i32 %570, -1
  store i32 %571, i32* %569, align 4
  br label %784

572:                                              ; preds = %566
  %573 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %574 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = load i32, i32* %24, align 4
  %577 = sub nsw i32 %575, %576
  %578 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %579 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %578, i32 0, i32 1
  store i32 %577, i32* %579, align 4
  %580 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %581 = call i32 @slice_del(%struct.SN_env* %580)
  store i32 %581, i32* %25, align 4
  %582 = load i32, i32* %25, align 4
  %583 = icmp slt i32 %582, 0
  br i1 %583, label %584, label %586

584:                                              ; preds = %572
  %585 = load i32, i32* %25, align 4
  store i32 %585, i32* %2, align 4
  br label %792

586:                                              ; preds = %572
  br label %783

587:                                              ; preds = %422
  %588 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %589 = call i32 @slice_del(%struct.SN_env* %588)
  store i32 %589, i32* %26, align 4
  %590 = load i32, i32* %26, align 4
  %591 = icmp slt i32 %590, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %587
  %593 = load i32, i32* %26, align 4
  store i32 %593, i32* %2, align 4
  br label %792

594:                                              ; preds = %587
  %595 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %596 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %599 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %598, i32 0, i32 1
  %600 = load i32, i32* %599, align 4
  %601 = sub nsw i32 %597, %600
  store i32 %601, i32* %27, align 4
  %602 = load i32, i32* %27, align 4
  %603 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %604 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 4
  %606 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %607 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %606, i32 0, i32 2
  store i32 %605, i32* %607, align 8
  %608 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %609 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  %611 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %612 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %611, i32 0, i32 1
  %613 = load i32, i32* %612, align 4
  %614 = sub nsw i32 %610, %613
  store i32 %614, i32* %28, align 4
  %615 = load i32, i32* %28, align 4
  %616 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %617 = load i32, i32* @s_9, align 4
  %618 = call i32 @eq_s_b(%struct.SN_env* %616, i32 2, i32 %617)
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %621, label %620

620:                                              ; preds = %594
  br label %622

621:                                              ; preds = %594
  br label %643

622:                                              ; preds = %620
  %623 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %624 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %623, i32 0, i32 0
  %625 = load i32, i32* %624, align 8
  %626 = load i32, i32* %28, align 4
  %627 = sub nsw i32 %625, %626
  %628 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %629 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %628, i32 0, i32 1
  store i32 %627, i32* %629, align 4
  %630 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %631 = load i32, i32* @s_10, align 4
  %632 = call i32 @eq_s_b(%struct.SN_env* %630, i32 2, i32 %631)
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %642, label %634

634:                                              ; preds = %622
  %635 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %636 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 8
  %638 = load i32, i32* %27, align 4
  %639 = sub nsw i32 %637, %638
  %640 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %641 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %640, i32 0, i32 1
  store i32 %639, i32* %641, align 4
  br label %675

642:                                              ; preds = %622
  br label %643

643:                                              ; preds = %642, %621
  %644 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %645 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %644, i32 0, i32 1
  %646 = load i32, i32* %645, align 4
  %647 = sext i32 %646 to i64
  %648 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %649 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %648, i32 0, i32 5
  store i64 %647, i64* %649, align 8
  %650 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %651 = call i32 @r_R1(%struct.SN_env* %650)
  store i32 %651, i32* %29, align 4
  %652 = load i32, i32* %29, align 4
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %662

654:                                              ; preds = %643
  %655 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %656 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 8
  %658 = load i32, i32* %27, align 4
  %659 = sub nsw i32 %657, %658
  %660 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %661 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %660, i32 0, i32 1
  store i32 %659, i32* %661, align 4
  br label %675

662:                                              ; preds = %643
  %663 = load i32, i32* %29, align 4
  %664 = icmp slt i32 %663, 0
  br i1 %664, label %665, label %667

665:                                              ; preds = %662
  %666 = load i32, i32* %29, align 4
  store i32 %666, i32* %2, align 4
  br label %792

667:                                              ; preds = %662
  %668 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %669 = call i32 @slice_del(%struct.SN_env* %668)
  store i32 %669, i32* %30, align 4
  %670 = load i32, i32* %30, align 4
  %671 = icmp slt i32 %670, 0
  br i1 %671, label %672, label %674

672:                                              ; preds = %667
  %673 = load i32, i32* %30, align 4
  store i32 %673, i32* %2, align 4
  br label %792

674:                                              ; preds = %667
  br label %675

675:                                              ; preds = %674, %654, %634
  br label %783

676:                                              ; preds = %422
  %677 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %678 = call i32 @slice_del(%struct.SN_env* %677)
  store i32 %678, i32* %31, align 4
  %679 = load i32, i32* %31, align 4
  %680 = icmp slt i32 %679, 0
  br i1 %680, label %681, label %683

681:                                              ; preds = %676
  %682 = load i32, i32* %31, align 4
  store i32 %682, i32* %2, align 4
  br label %792

683:                                              ; preds = %676
  %684 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %685 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %684, i32 0, i32 0
  %686 = load i32, i32* %685, align 8
  %687 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %688 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %687, i32 0, i32 1
  %689 = load i32, i32* %688, align 4
  %690 = sub nsw i32 %686, %689
  store i32 %690, i32* %32, align 4
  %691 = load i32, i32* %32, align 4
  %692 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %693 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %692, i32 0, i32 1
  %694 = load i32, i32* %693, align 4
  %695 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %696 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %695, i32 0, i32 2
  store i32 %694, i32* %696, align 8
  %697 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %698 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %697, i32 0, i32 1
  %699 = load i32, i32* %698, align 4
  %700 = sub nsw i32 %699, 1
  %701 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %702 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %701, i32 0, i32 3
  %703 = load i32, i32* %702, align 4
  %704 = icmp sle i32 %700, %703
  br i1 %704, label %729, label %705

705:                                              ; preds = %683
  %706 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %707 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %706, i32 0, i32 4
  %708 = load i32*, i32** %707, align 8
  %709 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %710 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %709, i32 0, i32 1
  %711 = load i32, i32* %710, align 4
  %712 = sub nsw i32 %711, 1
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i32, i32* %708, i64 %713
  %715 = load i32, i32* %714, align 4
  %716 = icmp ne i32 %715, 103
  br i1 %716, label %717, label %737

717:                                              ; preds = %705
  %718 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %719 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %718, i32 0, i32 4
  %720 = load i32*, i32** %719, align 8
  %721 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %722 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %721, i32 0, i32 1
  %723 = load i32, i32* %722, align 4
  %724 = sub nsw i32 %723, 1
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds i32, i32* %720, i64 %725
  %727 = load i32, i32* %726, align 4
  %728 = icmp ne i32 %727, 104
  br i1 %728, label %729, label %737

729:                                              ; preds = %717, %683
  %730 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %731 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %730, i32 0, i32 0
  %732 = load i32, i32* %731, align 8
  %733 = load i32, i32* %32, align 4
  %734 = sub nsw i32 %732, %733
  %735 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %736 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %735, i32 0, i32 1
  store i32 %734, i32* %736, align 4
  br label %782

737:                                              ; preds = %717, %705
  %738 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %739 = load i32, i32* @a_3, align 4
  %740 = call i32 @find_among_b(%struct.SN_env* %738, i32 %739, i32 2)
  %741 = icmp ne i32 %740, 0
  br i1 %741, label %750, label %742

742:                                              ; preds = %737
  %743 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %744 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %743, i32 0, i32 0
  %745 = load i32, i32* %744, align 8
  %746 = load i32, i32* %32, align 4
  %747 = sub nsw i32 %745, %746
  %748 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %749 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %748, i32 0, i32 1
  store i32 %747, i32* %749, align 4
  br label %782

750:                                              ; preds = %737
  %751 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %752 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %751, i32 0, i32 1
  %753 = load i32, i32* %752, align 4
  %754 = sext i32 %753 to i64
  %755 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %756 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %755, i32 0, i32 5
  store i64 %754, i64* %756, align 8
  %757 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %758 = call i32 @r_R2(%struct.SN_env* %757)
  store i32 %758, i32* %33, align 4
  %759 = load i32, i32* %33, align 4
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %769

761:                                              ; preds = %750
  %762 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %763 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %762, i32 0, i32 0
  %764 = load i32, i32* %763, align 8
  %765 = load i32, i32* %32, align 4
  %766 = sub nsw i32 %764, %765
  %767 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %768 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %767, i32 0, i32 1
  store i32 %766, i32* %768, align 4
  br label %782

769:                                              ; preds = %750
  %770 = load i32, i32* %33, align 4
  %771 = icmp slt i32 %770, 0
  br i1 %771, label %772, label %774

772:                                              ; preds = %769
  %773 = load i32, i32* %33, align 4
  store i32 %773, i32* %2, align 4
  br label %792

774:                                              ; preds = %769
  %775 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %776 = call i32 @slice_del(%struct.SN_env* %775)
  store i32 %776, i32* %34, align 4
  %777 = load i32, i32* %34, align 4
  %778 = icmp slt i32 %777, 0
  br i1 %778, label %779, label %781

779:                                              ; preds = %774
  %780 = load i32, i32* %34, align 4
  store i32 %780, i32* %2, align 4
  br label %792

781:                                              ; preds = %774
  br label %782

782:                                              ; preds = %781, %761, %742, %729
  br label %783

783:                                              ; preds = %422, %782, %675, %586, %537
  br label %784

784:                                              ; preds = %783, %567, %416, %404, %397
  %785 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %786 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %785, i32 0, i32 0
  %787 = load i32, i32* %786, align 8
  %788 = load i32, i32* %17, align 4
  %789 = sub nsw i32 %787, %788
  %790 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %791 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %790, i32 0, i32 1
  store i32 %789, i32* %791, align 4
  store i32 1, i32* %2, align 4
  br label %792

792:                                              ; preds = %784, %779, %772, %681, %672, %665, %592, %584, %534, %527, %429, %420, %336, %302, %293, %209, %194, %123, %115, %106
  %793 = load i32, i32* %2, align 4
  ret i32 %793
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @in_grouping_b(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @r_R2(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
