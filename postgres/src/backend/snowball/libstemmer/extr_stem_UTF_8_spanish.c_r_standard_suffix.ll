; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_spanish.c_r_standard_suffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_spanish.c_r_standard_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i32, i32 }

@a_6 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@s_12 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@a_3 = common dso_local global i32 0, align 4
@s_14 = common dso_local global i32 0, align 4
@a_4 = common dso_local global i32 0, align 4
@a_5 = common dso_local global i32 0, align 4
@s_15 = common dso_local global i32 0, align 4
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
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %46 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 2
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp sle i32 %48, %51
  br i1 %52, label %81, label %53

53:                                               ; preds = %1
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 5
  %65 = icmp ne i32 %64, 3
  br i1 %65, label %81, label %66

66:                                               ; preds = %53
  %67 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %68 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %71 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 31
  %78 = ashr i32 835634, %77
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %66, %53, %1
  store i32 0, i32* %2, align 4
  br label %691

82:                                               ; preds = %66
  %83 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %84 = load i32, i32* @a_6, align 4
  %85 = call i32 @find_among_b(%struct.SN_env* %83, i32 %84, i32 46)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %691

89:                                               ; preds = %82
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %94 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %4, align 4
  switch i32 %95, label %690 [
    i32 1, label %96
    i32 2, label %111
    i32 3, label %183
    i32 4, label %199
    i32 5, label %215
    i32 6, label %231
    i32 7, label %400
    i32 8, label %501
    i32 9, label %618
  ]

96:                                               ; preds = %89
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = call i32 @r_R2(%struct.SN_env* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %691

103:                                              ; preds = %96
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = call i32 @slice_del(%struct.SN_env* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %691

110:                                              ; preds = %103
  br label %690

111:                                              ; preds = %89
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = call i32 @r_R2(%struct.SN_env* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %691

118:                                              ; preds = %111
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = call i32 @slice_del(%struct.SN_env* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %691

125:                                              ; preds = %118
  %126 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %127 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
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
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %140 = load i32, i32* @s_10, align 4
  %141 = call i32 @eq_s_b(%struct.SN_env* %139, i32 2, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %125
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %9, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %150 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %182

151:                                              ; preds = %125
  %152 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %153 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %156 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  %157 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %158 = call i32 @r_R2(%struct.SN_env* %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %151
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %9, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  br label %182

169:                                              ; preds = %151
  %170 = load i32, i32* %10, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %2, align 4
  br label %691

174:                                              ; preds = %169
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = call i32 @slice_del(%struct.SN_env* %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %2, align 4
  br label %691

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %181, %161, %143
  br label %690

183:                                              ; preds = %89
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = call i32 @r_R2(%struct.SN_env* %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp sle i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %2, align 4
  br label %691

190:                                              ; preds = %183
  %191 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %192 = load i32, i32* @s_11, align 4
  %193 = call i32 @slice_from_s(%struct.SN_env* %191, i32 3, i32 %192)
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %13, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i32, i32* %13, align 4
  store i32 %197, i32* %2, align 4
  br label %691

198:                                              ; preds = %190
  br label %690

199:                                              ; preds = %89
  %200 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %201 = call i32 @r_R2(%struct.SN_env* %200)
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp sle i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %2, align 4
  br label %691

206:                                              ; preds = %199
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = load i32, i32* @s_12, align 4
  %209 = call i32 @slice_from_s(%struct.SN_env* %207, i32 1, i32 %208)
  store i32 %209, i32* %15, align 4
  %210 = load i32, i32* %15, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = load i32, i32* %15, align 4
  store i32 %213, i32* %2, align 4
  br label %691

214:                                              ; preds = %206
  br label %690

215:                                              ; preds = %89
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = call i32 @r_R2(%struct.SN_env* %216)
  store i32 %217, i32* %16, align 4
  %218 = load i32, i32* %16, align 4
  %219 = icmp sle i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i32, i32* %16, align 4
  store i32 %221, i32* %2, align 4
  br label %691

222:                                              ; preds = %215
  %223 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %224 = load i32, i32* @s_13, align 4
  %225 = call i32 @slice_from_s(%struct.SN_env* %223, i32 4, i32 %224)
  store i32 %225, i32* %17, align 4
  %226 = load i32, i32* %17, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = load i32, i32* %17, align 4
  store i32 %229, i32* %2, align 4
  br label %691

230:                                              ; preds = %222
  br label %690

231:                                              ; preds = %89
  %232 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %233 = call i32 @r_R1(%struct.SN_env* %232)
  store i32 %233, i32* %18, align 4
  %234 = load i32, i32* %18, align 4
  %235 = icmp sle i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = load i32, i32* %18, align 4
  store i32 %237, i32* %2, align 4
  br label %691

238:                                              ; preds = %231
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = call i32 @slice_del(%struct.SN_env* %239)
  store i32 %240, i32* %19, align 4
  %241 = load i32, i32* %19, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i32, i32* %19, align 4
  store i32 %244, i32* %2, align 4
  br label %691

245:                                              ; preds = %238
  %246 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %247 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %250 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 %248, %251
  store i32 %252, i32* %20, align 4
  %253 = load i32, i32* %20, align 4
  %254 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %255 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  %259 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %260 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %261, 1
  %263 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %264 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = icmp sle i32 %262, %265
  br i1 %266, label %295, label %267

267:                                              ; preds = %245
  %268 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %269 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %268, i32 0, i32 3
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %272 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %270, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = ashr i32 %277, 5
  %279 = icmp ne i32 %278, 3
  br i1 %279, label %295, label %280

280:                                              ; preds = %267
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %285 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %283, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, 31
  %292 = ashr i32 4718616, %291
  %293 = and i32 %292, 1
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %280, %267, %245
  %296 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %297 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %20, align 4
  %300 = sub nsw i32 %298, %299
  %301 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %302 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 4
  br label %399

303:                                              ; preds = %280
  %304 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %305 = load i32, i32* @a_3, align 4
  %306 = call i32 @find_among_b(%struct.SN_env* %304, i32 %305, i32 4)
  store i32 %306, i32* %4, align 4
  %307 = load i32, i32* %4, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %317, label %309

309:                                              ; preds = %303
  %310 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %311 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %20, align 4
  %314 = sub nsw i32 %312, %313
  %315 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %316 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %315, i32 0, i32 1
  store i32 %314, i32* %316, align 4
  br label %399

317:                                              ; preds = %303
  %318 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %319 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %322 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %321, i32 0, i32 4
  store i32 %320, i32* %322, align 8
  %323 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %324 = call i32 @r_R2(%struct.SN_env* %323)
  store i32 %324, i32* %21, align 4
  %325 = load i32, i32* %21, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %317
  %328 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %329 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %20, align 4
  %332 = sub nsw i32 %330, %331
  %333 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %334 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %333, i32 0, i32 1
  store i32 %332, i32* %334, align 4
  br label %399

335:                                              ; preds = %317
  %336 = load i32, i32* %21, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %335
  %339 = load i32, i32* %21, align 4
  store i32 %339, i32* %2, align 4
  br label %691

340:                                              ; preds = %335
  %341 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %342 = call i32 @slice_del(%struct.SN_env* %341)
  store i32 %342, i32* %22, align 4
  %343 = load i32, i32* %22, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %340
  %346 = load i32, i32* %22, align 4
  store i32 %346, i32* %2, align 4
  br label %691

347:                                              ; preds = %340
  %348 = load i32, i32* %4, align 4
  switch i32 %348, label %398 [
    i32 1, label %349
  ]

349:                                              ; preds = %347
  %350 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %351 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %354 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %353, i32 0, i32 0
  store i32 %352, i32* %354, align 8
  %355 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %356 = load i32, i32* @s_14, align 4
  %357 = call i32 @eq_s_b(%struct.SN_env* %355, i32 2, i32 %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %367, label %359

359:                                              ; preds = %349
  %360 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %361 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %20, align 4
  %364 = sub nsw i32 %362, %363
  %365 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %366 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %365, i32 0, i32 1
  store i32 %364, i32* %366, align 4
  br label %399

367:                                              ; preds = %349
  %368 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %369 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %372 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %371, i32 0, i32 4
  store i32 %370, i32* %372, align 8
  %373 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %374 = call i32 @r_R2(%struct.SN_env* %373)
  store i32 %374, i32* %23, align 4
  %375 = load i32, i32* %23, align 4
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %385

377:                                              ; preds = %367
  %378 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %379 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* %20, align 4
  %382 = sub nsw i32 %380, %381
  %383 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %384 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %383, i32 0, i32 1
  store i32 %382, i32* %384, align 4
  br label %399

385:                                              ; preds = %367
  %386 = load i32, i32* %23, align 4
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %385
  %389 = load i32, i32* %23, align 4
  store i32 %389, i32* %2, align 4
  br label %691

390:                                              ; preds = %385
  %391 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %392 = call i32 @slice_del(%struct.SN_env* %391)
  store i32 %392, i32* %24, align 4
  %393 = load i32, i32* %24, align 4
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %390
  %396 = load i32, i32* %24, align 4
  store i32 %396, i32* %2, align 4
  br label %691

397:                                              ; preds = %390
  br label %398

398:                                              ; preds = %347, %397
  br label %399

399:                                              ; preds = %398, %377, %359, %327, %309, %295
  br label %690

400:                                              ; preds = %89
  %401 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %402 = call i32 @r_R2(%struct.SN_env* %401)
  store i32 %402, i32* %25, align 4
  %403 = load i32, i32* %25, align 4
  %404 = icmp sle i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %400
  %406 = load i32, i32* %25, align 4
  store i32 %406, i32* %2, align 4
  br label %691

407:                                              ; preds = %400
  %408 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %409 = call i32 @slice_del(%struct.SN_env* %408)
  store i32 %409, i32* %26, align 4
  %410 = load i32, i32* %26, align 4
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %407
  %413 = load i32, i32* %26, align 4
  store i32 %413, i32* %2, align 4
  br label %691

414:                                              ; preds = %407
  %415 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %416 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %415, i32 0, i32 5
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %419 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = sub nsw i32 %417, %420
  store i32 %421, i32* %27, align 4
  %422 = load i32, i32* %27, align 4
  %423 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %424 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %427 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %426, i32 0, i32 0
  store i32 %425, i32* %427, align 8
  %428 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %429 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = sub nsw i32 %430, 3
  %432 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %433 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 8
  %435 = icmp sle i32 %431, %434
  br i1 %435, label %448, label %436

436:                                              ; preds = %414
  %437 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %438 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %437, i32 0, i32 3
  %439 = load i32*, i32** %438, align 8
  %440 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %441 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = sub nsw i32 %442, 1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %439, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = icmp ne i32 %446, 101
  br i1 %447, label %448, label %456

448:                                              ; preds = %436, %414
  %449 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %450 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %449, i32 0, i32 5
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* %27, align 4
  %453 = sub nsw i32 %451, %452
  %454 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %455 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %454, i32 0, i32 1
  store i32 %453, i32* %455, align 4
  br label %500

456:                                              ; preds = %436
  %457 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %458 = load i32, i32* @a_4, align 4
  %459 = call i32 @find_among_b(%struct.SN_env* %457, i32 %458, i32 3)
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %469, label %461

461:                                              ; preds = %456
  %462 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %463 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %462, i32 0, i32 5
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* %27, align 4
  %466 = sub nsw i32 %464, %465
  %467 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %468 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %467, i32 0, i32 1
  store i32 %466, i32* %468, align 4
  br label %500

469:                                              ; preds = %456
  %470 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %471 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %474 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %473, i32 0, i32 4
  store i32 %472, i32* %474, align 8
  %475 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %476 = call i32 @r_R2(%struct.SN_env* %475)
  store i32 %476, i32* %28, align 4
  %477 = load i32, i32* %28, align 4
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %487

479:                                              ; preds = %469
  %480 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %481 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %480, i32 0, i32 5
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* %27, align 4
  %484 = sub nsw i32 %482, %483
  %485 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %486 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %485, i32 0, i32 1
  store i32 %484, i32* %486, align 4
  br label %500

487:                                              ; preds = %469
  %488 = load i32, i32* %28, align 4
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %492

490:                                              ; preds = %487
  %491 = load i32, i32* %28, align 4
  store i32 %491, i32* %2, align 4
  br label %691

492:                                              ; preds = %487
  %493 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %494 = call i32 @slice_del(%struct.SN_env* %493)
  store i32 %494, i32* %29, align 4
  %495 = load i32, i32* %29, align 4
  %496 = icmp slt i32 %495, 0
  br i1 %496, label %497, label %499

497:                                              ; preds = %492
  %498 = load i32, i32* %29, align 4
  store i32 %498, i32* %2, align 4
  br label %691

499:                                              ; preds = %492
  br label %500

500:                                              ; preds = %499, %479, %461, %448
  br label %690

501:                                              ; preds = %89
  %502 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %503 = call i32 @r_R2(%struct.SN_env* %502)
  store i32 %503, i32* %30, align 4
  %504 = load i32, i32* %30, align 4
  %505 = icmp sle i32 %504, 0
  br i1 %505, label %506, label %508

506:                                              ; preds = %501
  %507 = load i32, i32* %30, align 4
  store i32 %507, i32* %2, align 4
  br label %691

508:                                              ; preds = %501
  %509 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %510 = call i32 @slice_del(%struct.SN_env* %509)
  store i32 %510, i32* %31, align 4
  %511 = load i32, i32* %31, align 4
  %512 = icmp slt i32 %511, 0
  br i1 %512, label %513, label %515

513:                                              ; preds = %508
  %514 = load i32, i32* %31, align 4
  store i32 %514, i32* %2, align 4
  br label %691

515:                                              ; preds = %508
  %516 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %517 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %516, i32 0, i32 5
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %520 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = sub nsw i32 %518, %521
  store i32 %522, i32* %32, align 4
  %523 = load i32, i32* %32, align 4
  %524 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %525 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %528 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %527, i32 0, i32 0
  store i32 %526, i32* %528, align 8
  %529 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %530 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = sub nsw i32 %531, 1
  %533 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %534 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 8
  %536 = icmp sle i32 %532, %535
  br i1 %536, label %565, label %537

537:                                              ; preds = %515
  %538 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %539 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %538, i32 0, i32 3
  %540 = load i32*, i32** %539, align 8
  %541 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %542 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = sub nsw i32 %543, 1
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %540, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = ashr i32 %547, 5
  %549 = icmp ne i32 %548, 3
  br i1 %549, label %565, label %550

550:                                              ; preds = %537
  %551 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %552 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %551, i32 0, i32 3
  %553 = load i32*, i32** %552, align 8
  %554 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %555 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = sub nsw i32 %556, 1
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %553, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = and i32 %560, 31
  %562 = ashr i32 4198408, %561
  %563 = and i32 %562, 1
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %573, label %565

565:                                              ; preds = %550, %537, %515
  %566 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %567 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %566, i32 0, i32 5
  %568 = load i32, i32* %567, align 4
  %569 = load i32, i32* %32, align 4
  %570 = sub nsw i32 %568, %569
  %571 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %572 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %571, i32 0, i32 1
  store i32 %570, i32* %572, align 4
  br label %617

573:                                              ; preds = %550
  %574 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %575 = load i32, i32* @a_5, align 4
  %576 = call i32 @find_among_b(%struct.SN_env* %574, i32 %575, i32 3)
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %586, label %578

578:                                              ; preds = %573
  %579 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %580 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %579, i32 0, i32 5
  %581 = load i32, i32* %580, align 4
  %582 = load i32, i32* %32, align 4
  %583 = sub nsw i32 %581, %582
  %584 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %585 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %584, i32 0, i32 1
  store i32 %583, i32* %585, align 4
  br label %617

586:                                              ; preds = %573
  %587 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %588 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %591 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %590, i32 0, i32 4
  store i32 %589, i32* %591, align 8
  %592 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %593 = call i32 @r_R2(%struct.SN_env* %592)
  store i32 %593, i32* %33, align 4
  %594 = load i32, i32* %33, align 4
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %604

596:                                              ; preds = %586
  %597 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %598 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %597, i32 0, i32 5
  %599 = load i32, i32* %598, align 4
  %600 = load i32, i32* %32, align 4
  %601 = sub nsw i32 %599, %600
  %602 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %603 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %602, i32 0, i32 1
  store i32 %601, i32* %603, align 4
  br label %617

604:                                              ; preds = %586
  %605 = load i32, i32* %33, align 4
  %606 = icmp slt i32 %605, 0
  br i1 %606, label %607, label %609

607:                                              ; preds = %604
  %608 = load i32, i32* %33, align 4
  store i32 %608, i32* %2, align 4
  br label %691

609:                                              ; preds = %604
  %610 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %611 = call i32 @slice_del(%struct.SN_env* %610)
  store i32 %611, i32* %34, align 4
  %612 = load i32, i32* %34, align 4
  %613 = icmp slt i32 %612, 0
  br i1 %613, label %614, label %616

614:                                              ; preds = %609
  %615 = load i32, i32* %34, align 4
  store i32 %615, i32* %2, align 4
  br label %691

616:                                              ; preds = %609
  br label %617

617:                                              ; preds = %616, %596, %578, %565
  br label %690

618:                                              ; preds = %89
  %619 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %620 = call i32 @r_R2(%struct.SN_env* %619)
  store i32 %620, i32* %35, align 4
  %621 = load i32, i32* %35, align 4
  %622 = icmp sle i32 %621, 0
  br i1 %622, label %623, label %625

623:                                              ; preds = %618
  %624 = load i32, i32* %35, align 4
  store i32 %624, i32* %2, align 4
  br label %691

625:                                              ; preds = %618
  %626 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %627 = call i32 @slice_del(%struct.SN_env* %626)
  store i32 %627, i32* %36, align 4
  %628 = load i32, i32* %36, align 4
  %629 = icmp slt i32 %628, 0
  br i1 %629, label %630, label %632

630:                                              ; preds = %625
  %631 = load i32, i32* %36, align 4
  store i32 %631, i32* %2, align 4
  br label %691

632:                                              ; preds = %625
  %633 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %634 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %633, i32 0, i32 5
  %635 = load i32, i32* %634, align 4
  %636 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %637 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %636, i32 0, i32 1
  %638 = load i32, i32* %637, align 4
  %639 = sub nsw i32 %635, %638
  store i32 %639, i32* %37, align 4
  %640 = load i32, i32* %37, align 4
  %641 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %642 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %641, i32 0, i32 1
  %643 = load i32, i32* %642, align 4
  %644 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %645 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %644, i32 0, i32 0
  store i32 %643, i32* %645, align 8
  %646 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %647 = load i32, i32* @s_15, align 4
  %648 = call i32 @eq_s_b(%struct.SN_env* %646, i32 2, i32 %647)
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %658, label %650

650:                                              ; preds = %632
  %651 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %652 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %651, i32 0, i32 5
  %653 = load i32, i32* %652, align 4
  %654 = load i32, i32* %37, align 4
  %655 = sub nsw i32 %653, %654
  %656 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %657 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %656, i32 0, i32 1
  store i32 %655, i32* %657, align 4
  br label %689

658:                                              ; preds = %632
  %659 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %660 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %659, i32 0, i32 1
  %661 = load i32, i32* %660, align 4
  %662 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %663 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %662, i32 0, i32 4
  store i32 %661, i32* %663, align 8
  %664 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %665 = call i32 @r_R2(%struct.SN_env* %664)
  store i32 %665, i32* %38, align 4
  %666 = load i32, i32* %38, align 4
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %676

668:                                              ; preds = %658
  %669 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %670 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %669, i32 0, i32 5
  %671 = load i32, i32* %670, align 4
  %672 = load i32, i32* %37, align 4
  %673 = sub nsw i32 %671, %672
  %674 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %675 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %674, i32 0, i32 1
  store i32 %673, i32* %675, align 4
  br label %689

676:                                              ; preds = %658
  %677 = load i32, i32* %38, align 4
  %678 = icmp slt i32 %677, 0
  br i1 %678, label %679, label %681

679:                                              ; preds = %676
  %680 = load i32, i32* %38, align 4
  store i32 %680, i32* %2, align 4
  br label %691

681:                                              ; preds = %676
  %682 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %683 = call i32 @slice_del(%struct.SN_env* %682)
  store i32 %683, i32* %39, align 4
  %684 = load i32, i32* %39, align 4
  %685 = icmp slt i32 %684, 0
  br i1 %685, label %686, label %688

686:                                              ; preds = %681
  %687 = load i32, i32* %39, align 4
  store i32 %687, i32* %2, align 4
  br label %691

688:                                              ; preds = %681
  br label %689

689:                                              ; preds = %688, %668, %650
  br label %690

690:                                              ; preds = %89, %689, %617, %500, %399, %230, %214, %198, %182, %110
  store i32 1, i32* %2, align 4
  br label %691

691:                                              ; preds = %690, %686, %679, %630, %623, %614, %607, %513, %506, %497, %490, %412, %405, %395, %388, %345, %338, %243, %236, %228, %220, %212, %204, %196, %188, %179, %172, %123, %116, %108, %101, %88, %81
  %692 = load i32, i32* %2, align 4
  ret i32 %692
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R2(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
