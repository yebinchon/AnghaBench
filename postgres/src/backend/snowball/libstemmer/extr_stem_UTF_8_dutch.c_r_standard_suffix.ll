; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_dutch.c_r_standard_suffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_dutch.c_r_standard_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32*, i64, i32* }

@a_3 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@g_v_j = common dso_local global i32 0, align 4
@s_12 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@a_4 = common dso_local global i32 0, align 4
@s_14 = common dso_local global i32 0, align 4
@g_v_I = common dso_local global i32 0, align 4
@a_5 = common dso_local global i32 0, align 4
@g_v = common dso_local global i32 0, align 4
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
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %44 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %57 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %88, label %60

60:                                               ; preds = %1
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 5
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %88, label %73

73:                                               ; preds = %60
  %74 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %75 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 31
  %85 = ashr i32 540704, %84
  %86 = and i32 %85, 1
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %73, %60, %1
  br label %162

89:                                               ; preds = %73
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = load i32, i32* @a_3, align 4
  %92 = call i32 @find_among_b(%struct.SN_env* %90, i32 %91, i32 5)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  br label %162

96:                                               ; preds = %89
  %97 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %98 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 5
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %4, align 4
  switch i32 %103, label %161 [
    i32 1, label %104
    i32 2, label %124
    i32 3, label %136
  ]

104:                                              ; preds = %96
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = call i32 @r_R1(%struct.SN_env* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %162

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %771

115:                                              ; preds = %110
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = load i32, i32* @s_11, align 4
  %118 = call i32 @slice_from_s(%struct.SN_env* %116, i32 4, i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %2, align 4
  br label %771

123:                                              ; preds = %115
  br label %161

124:                                              ; preds = %96
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = call i32 @r_en_ending(%struct.SN_env* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %162

130:                                              ; preds = %124
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %771

135:                                              ; preds = %130
  br label %161

136:                                              ; preds = %96
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = call i32 @r_R1(%struct.SN_env* %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %162

142:                                              ; preds = %136
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %2, align 4
  br label %771

147:                                              ; preds = %142
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = load i32, i32* @g_v_j, align 4
  %150 = call i64 @out_grouping_b_U(%struct.SN_env* %148, i32 %149, i32 97, i32 232, i32 0)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %162

153:                                              ; preds = %147
  %154 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %155 = call i32 @slice_del(%struct.SN_env* %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %2, align 4
  br label %771

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %96, %160, %135, %123
  br label %162

162:                                              ; preds = %161, %152, %141, %129, %109, %95, %88
  %163 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %164 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %174 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %172, %175
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %179 = call i32 @r_e_ending(%struct.SN_env* %178)
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %162
  br label %189

183:                                              ; preds = %162
  %184 = load i32, i32* %12, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load i32, i32* %12, align 4
  store i32 %187, i32* %2, align 4
  br label %771

188:                                              ; preds = %183
  br label %189

189:                                              ; preds = %188, %182
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sub nsw i32 %192, %193
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %198 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %201 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %199, %202
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %206 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %209 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  %210 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %211 = load i32, i32* @s_12, align 4
  %212 = call i32 @eq_s_b(%struct.SN_env* %210, i32 4, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %189
  br label %309

215:                                              ; preds = %189
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 5
  store i64 %219, i64* %221, align 8
  %222 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %223 = call i32 @r_R2(%struct.SN_env* %222)
  store i32 %223, i32* %14, align 4
  %224 = load i32, i32* %14, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %215
  br label %309

227:                                              ; preds = %215
  %228 = load i32, i32* %14, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load i32, i32* %14, align 4
  store i32 %231, i32* %2, align 4
  br label %771

232:                                              ; preds = %227
  %233 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %234 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %237 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = sub nsw i32 %235, %238
  store i32 %239, i32* %15, align 4
  %240 = load i32, i32* %15, align 4
  %241 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %242 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = icmp sle i32 %243, %246
  br i1 %247, label %260, label %248

248:                                              ; preds = %232
  %249 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %250 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %253 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sub nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %251, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 99
  br i1 %259, label %260, label %261

260:                                              ; preds = %248, %232
  br label %266

261:                                              ; preds = %248
  %262 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %263 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %263, align 4
  br label %309

266:                                              ; preds = %260
  %267 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %268 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %15, align 4
  %271 = sub nsw i32 %269, %270
  %272 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %273 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %275 = call i32 @slice_del(%struct.SN_env* %274)
  store i32 %275, i32* %16, align 4
  %276 = load i32, i32* %16, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %266
  %279 = load i32, i32* %16, align 4
  store i32 %279, i32* %2, align 4
  br label %771

280:                                              ; preds = %266
  %281 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %282 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %285 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %284, i32 0, i32 2
  store i32 %283, i32* %285, align 8
  %286 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %287 = load i32, i32* @s_13, align 4
  %288 = call i32 @eq_s_b(%struct.SN_env* %286, i32 2, i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %280
  br label %309

291:                                              ; preds = %280
  %292 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %293 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %297 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %296, i32 0, i32 5
  store i64 %295, i64* %297, align 8
  %298 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %299 = call i32 @r_en_ending(%struct.SN_env* %298)
  store i32 %299, i32* %17, align 4
  %300 = load i32, i32* %17, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %291
  br label %309

303:                                              ; preds = %291
  %304 = load i32, i32* %17, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = load i32, i32* %17, align 4
  store i32 %307, i32* %2, align 4
  br label %771

308:                                              ; preds = %303
  br label %309

309:                                              ; preds = %308, %302, %290, %261, %226, %214
  %310 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %311 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* %13, align 4
  %314 = sub nsw i32 %312, %313
  %315 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %316 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %315, i32 0, i32 1
  store i32 %314, i32* %316, align 4
  %317 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %318 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %321 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = sub nsw i32 %319, %322
  store i32 %323, i32* %18, align 4
  %324 = load i32, i32* %18, align 4
  %325 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %326 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %329 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %328, i32 0, i32 2
  store i32 %327, i32* %329, align 8
  %330 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %331 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = sub nsw i32 %332, 1
  %334 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %335 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = icmp sle i32 %333, %336
  br i1 %337, label %366, label %338

338:                                              ; preds = %309
  %339 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %340 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %339, i32 0, i32 4
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %343 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = sub nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %341, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = ashr i32 %348, 5
  %350 = icmp ne i32 %349, 3
  br i1 %350, label %366, label %351

351:                                              ; preds = %338
  %352 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %353 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %352, i32 0, i32 4
  %354 = load i32*, i32** %353, align 8
  %355 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %356 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = sub nsw i32 %357, 1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %354, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 31
  %363 = ashr i32 264336, %362
  %364 = and i32 %363, 1
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %367, label %366

366:                                              ; preds = %351, %338, %309
  br label %642

367:                                              ; preds = %351
  %368 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %369 = load i32, i32* @a_4, align 4
  %370 = call i32 @find_among_b(%struct.SN_env* %368, i32 %369, i32 6)
  store i32 %370, i32* %4, align 4
  %371 = load i32, i32* %4, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %367
  br label %642

374:                                              ; preds = %367
  %375 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %376 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  %379 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %380 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %379, i32 0, i32 5
  store i64 %378, i64* %380, align 8
  %381 = load i32, i32* %4, align 4
  switch i32 %381, label %641 [
    i32 1, label %382
    i32 2, label %505
    i32 3, label %565
    i32 4, label %595
    i32 5, label %614
  ]

382:                                              ; preds = %374
  %383 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %384 = call i32 @r_R2(%struct.SN_env* %383)
  store i32 %384, i32* %19, align 4
  %385 = load i32, i32* %19, align 4
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %382
  br label %642

388:                                              ; preds = %382
  %389 = load i32, i32* %19, align 4
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %388
  %392 = load i32, i32* %19, align 4
  store i32 %392, i32* %2, align 4
  br label %771

393:                                              ; preds = %388
  %394 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %395 = call i32 @slice_del(%struct.SN_env* %394)
  store i32 %395, i32* %20, align 4
  %396 = load i32, i32* %20, align 4
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %393
  %399 = load i32, i32* %20, align 4
  store i32 %399, i32* %2, align 4
  br label %771

400:                                              ; preds = %393
  %401 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %402 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %405 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = sub nsw i32 %403, %406
  store i32 %407, i32* %21, align 4
  %408 = load i32, i32* %21, align 4
  %409 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %410 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %413 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %412, i32 0, i32 2
  store i32 %411, i32* %413, align 8
  %414 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %415 = load i32, i32* @s_14, align 4
  %416 = call i32 @eq_s_b(%struct.SN_env* %414, i32 2, i32 %415)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %400
  br label %485

419:                                              ; preds = %400
  %420 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %421 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = sext i32 %422 to i64
  %424 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %425 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %424, i32 0, i32 5
  store i64 %423, i64* %425, align 8
  %426 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %427 = call i32 @r_R2(%struct.SN_env* %426)
  store i32 %427, i32* %22, align 4
  %428 = load i32, i32* %22, align 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %419
  br label %485

431:                                              ; preds = %419
  %432 = load i32, i32* %22, align 4
  %433 = icmp slt i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %431
  %435 = load i32, i32* %22, align 4
  store i32 %435, i32* %2, align 4
  br label %771

436:                                              ; preds = %431
  %437 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %438 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %441 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = sub nsw i32 %439, %442
  store i32 %443, i32* %23, align 4
  %444 = load i32, i32* %23, align 4
  %445 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %446 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %449 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 4
  %451 = icmp sle i32 %447, %450
  br i1 %451, label %464, label %452

452:                                              ; preds = %436
  %453 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %454 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %453, i32 0, i32 4
  %455 = load i32*, i32** %454, align 8
  %456 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %457 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = sub nsw i32 %458, 1
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %455, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = icmp ne i32 %462, 101
  br i1 %463, label %464, label %465

464:                                              ; preds = %452, %436
  br label %470

465:                                              ; preds = %452
  %466 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %467 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = add nsw i32 %468, -1
  store i32 %469, i32* %467, align 4
  br label %485

470:                                              ; preds = %464
  %471 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %472 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = load i32, i32* %23, align 4
  %475 = sub nsw i32 %473, %474
  %476 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %477 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %476, i32 0, i32 1
  store i32 %475, i32* %477, align 4
  %478 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %479 = call i32 @slice_del(%struct.SN_env* %478)
  store i32 %479, i32* %24, align 4
  %480 = load i32, i32* %24, align 4
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %482, label %484

482:                                              ; preds = %470
  %483 = load i32, i32* %24, align 4
  store i32 %483, i32* %2, align 4
  br label %771

484:                                              ; preds = %470
  br label %504

485:                                              ; preds = %465, %430, %418
  %486 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %487 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = load i32, i32* %21, align 4
  %490 = sub nsw i32 %488, %489
  %491 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %492 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %491, i32 0, i32 1
  store i32 %490, i32* %492, align 4
  %493 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %494 = call i32 @r_undouble(%struct.SN_env* %493)
  store i32 %494, i32* %25, align 4
  %495 = load i32, i32* %25, align 4
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %498

497:                                              ; preds = %485
  br label %642

498:                                              ; preds = %485
  %499 = load i32, i32* %25, align 4
  %500 = icmp slt i32 %499, 0
  br i1 %500, label %501, label %503

501:                                              ; preds = %498
  %502 = load i32, i32* %25, align 4
  store i32 %502, i32* %2, align 4
  br label %771

503:                                              ; preds = %498
  br label %504

504:                                              ; preds = %503, %484
  br label %641

505:                                              ; preds = %374
  %506 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %507 = call i32 @r_R2(%struct.SN_env* %506)
  store i32 %507, i32* %26, align 4
  %508 = load i32, i32* %26, align 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %511

510:                                              ; preds = %505
  br label %642

511:                                              ; preds = %505
  %512 = load i32, i32* %26, align 4
  %513 = icmp slt i32 %512, 0
  br i1 %513, label %514, label %516

514:                                              ; preds = %511
  %515 = load i32, i32* %26, align 4
  store i32 %515, i32* %2, align 4
  br label %771

516:                                              ; preds = %511
  %517 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %518 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %521 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 4
  %523 = sub nsw i32 %519, %522
  store i32 %523, i32* %27, align 4
  %524 = load i32, i32* %27, align 4
  %525 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %526 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %529 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %528, i32 0, i32 3
  %530 = load i32, i32* %529, align 4
  %531 = icmp sle i32 %527, %530
  br i1 %531, label %544, label %532

532:                                              ; preds = %516
  %533 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %534 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %533, i32 0, i32 4
  %535 = load i32*, i32** %534, align 8
  %536 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %537 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 4
  %539 = sub nsw i32 %538, 1
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i32, i32* %535, i64 %540
  %542 = load i32, i32* %541, align 4
  %543 = icmp ne i32 %542, 101
  br i1 %543, label %544, label %545

544:                                              ; preds = %532, %516
  br label %550

545:                                              ; preds = %532
  %546 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %547 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = add nsw i32 %548, -1
  store i32 %549, i32* %547, align 4
  br label %642

550:                                              ; preds = %544
  %551 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %552 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 8
  %554 = load i32, i32* %27, align 4
  %555 = sub nsw i32 %553, %554
  %556 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %557 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %556, i32 0, i32 1
  store i32 %555, i32* %557, align 4
  %558 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %559 = call i32 @slice_del(%struct.SN_env* %558)
  store i32 %559, i32* %28, align 4
  %560 = load i32, i32* %28, align 4
  %561 = icmp slt i32 %560, 0
  br i1 %561, label %562, label %564

562:                                              ; preds = %550
  %563 = load i32, i32* %28, align 4
  store i32 %563, i32* %2, align 4
  br label %771

564:                                              ; preds = %550
  br label %641

565:                                              ; preds = %374
  %566 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %567 = call i32 @r_R2(%struct.SN_env* %566)
  store i32 %567, i32* %29, align 4
  %568 = load i32, i32* %29, align 4
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %571

570:                                              ; preds = %565
  br label %642

571:                                              ; preds = %565
  %572 = load i32, i32* %29, align 4
  %573 = icmp slt i32 %572, 0
  br i1 %573, label %574, label %576

574:                                              ; preds = %571
  %575 = load i32, i32* %29, align 4
  store i32 %575, i32* %2, align 4
  br label %771

576:                                              ; preds = %571
  %577 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %578 = call i32 @slice_del(%struct.SN_env* %577)
  store i32 %578, i32* %30, align 4
  %579 = load i32, i32* %30, align 4
  %580 = icmp slt i32 %579, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %576
  %582 = load i32, i32* %30, align 4
  store i32 %582, i32* %2, align 4
  br label %771

583:                                              ; preds = %576
  %584 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %585 = call i32 @r_e_ending(%struct.SN_env* %584)
  store i32 %585, i32* %31, align 4
  %586 = load i32, i32* %31, align 4
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %589

588:                                              ; preds = %583
  br label %642

589:                                              ; preds = %583
  %590 = load i32, i32* %31, align 4
  %591 = icmp slt i32 %590, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %589
  %593 = load i32, i32* %31, align 4
  store i32 %593, i32* %2, align 4
  br label %771

594:                                              ; preds = %589
  br label %641

595:                                              ; preds = %374
  %596 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %597 = call i32 @r_R2(%struct.SN_env* %596)
  store i32 %597, i32* %32, align 4
  %598 = load i32, i32* %32, align 4
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %601

600:                                              ; preds = %595
  br label %642

601:                                              ; preds = %595
  %602 = load i32, i32* %32, align 4
  %603 = icmp slt i32 %602, 0
  br i1 %603, label %604, label %606

604:                                              ; preds = %601
  %605 = load i32, i32* %32, align 4
  store i32 %605, i32* %2, align 4
  br label %771

606:                                              ; preds = %601
  %607 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %608 = call i32 @slice_del(%struct.SN_env* %607)
  store i32 %608, i32* %33, align 4
  %609 = load i32, i32* %33, align 4
  %610 = icmp slt i32 %609, 0
  br i1 %610, label %611, label %613

611:                                              ; preds = %606
  %612 = load i32, i32* %33, align 4
  store i32 %612, i32* %2, align 4
  br label %771

613:                                              ; preds = %606
  br label %641

614:                                              ; preds = %374
  %615 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %616 = call i32 @r_R2(%struct.SN_env* %615)
  store i32 %616, i32* %34, align 4
  %617 = load i32, i32* %34, align 4
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %620

619:                                              ; preds = %614
  br label %642

620:                                              ; preds = %614
  %621 = load i32, i32* %34, align 4
  %622 = icmp slt i32 %621, 0
  br i1 %622, label %623, label %625

623:                                              ; preds = %620
  %624 = load i32, i32* %34, align 4
  store i32 %624, i32* %2, align 4
  br label %771

625:                                              ; preds = %620
  %626 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %627 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %626, i32 0, i32 6
  %628 = load i32*, i32** %627, align 8
  %629 = getelementptr inbounds i32, i32* %628, i64 0
  %630 = load i32, i32* %629, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %633, label %632

632:                                              ; preds = %625
  br label %642

633:                                              ; preds = %625
  %634 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %635 = call i32 @slice_del(%struct.SN_env* %634)
  store i32 %635, i32* %35, align 4
  %636 = load i32, i32* %35, align 4
  %637 = icmp slt i32 %636, 0
  br i1 %637, label %638, label %640

638:                                              ; preds = %633
  %639 = load i32, i32* %35, align 4
  store i32 %639, i32* %2, align 4
  br label %771

640:                                              ; preds = %633
  br label %641

641:                                              ; preds = %374, %640, %613, %594, %564, %504
  br label %642

642:                                              ; preds = %641, %632, %619, %600, %588, %570, %545, %510, %497, %387, %373, %366
  %643 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %644 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %643, i32 0, i32 0
  %645 = load i32, i32* %644, align 8
  %646 = load i32, i32* %18, align 4
  %647 = sub nsw i32 %645, %646
  %648 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %649 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %648, i32 0, i32 1
  store i32 %647, i32* %649, align 4
  %650 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %651 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %654 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %653, i32 0, i32 1
  %655 = load i32, i32* %654, align 4
  %656 = sub nsw i32 %652, %655
  store i32 %656, i32* %36, align 4
  %657 = load i32, i32* %36, align 4
  %658 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %659 = load i32, i32* @g_v_I, align 4
  %660 = call i64 @out_grouping_b_U(%struct.SN_env* %658, i32 %659, i32 73, i32 232, i32 0)
  %661 = icmp ne i64 %660, 0
  br i1 %661, label %662, label %663

662:                                              ; preds = %642
  br label %763

663:                                              ; preds = %642
  %664 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %665 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %664, i32 0, i32 0
  %666 = load i32, i32* %665, align 8
  %667 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %668 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 4
  %670 = sub nsw i32 %666, %669
  store i32 %670, i32* %37, align 4
  %671 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %672 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %671, i32 0, i32 1
  %673 = load i32, i32* %672, align 4
  %674 = sub nsw i32 %673, 1
  %675 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %676 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %675, i32 0, i32 3
  %677 = load i32, i32* %676, align 4
  %678 = icmp sle i32 %674, %677
  br i1 %678, label %707, label %679

679:                                              ; preds = %663
  %680 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %681 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %680, i32 0, i32 4
  %682 = load i32*, i32** %681, align 8
  %683 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %684 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %683, i32 0, i32 1
  %685 = load i32, i32* %684, align 4
  %686 = sub nsw i32 %685, 1
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i32, i32* %682, i64 %687
  %689 = load i32, i32* %688, align 4
  %690 = ashr i32 %689, 5
  %691 = icmp ne i32 %690, 3
  br i1 %691, label %707, label %692

692:                                              ; preds = %679
  %693 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %694 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %693, i32 0, i32 4
  %695 = load i32*, i32** %694, align 8
  %696 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %697 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %696, i32 0, i32 1
  %698 = load i32, i32* %697, align 4
  %699 = sub nsw i32 %698, 1
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i32, i32* %695, i64 %700
  %702 = load i32, i32* %701, align 4
  %703 = and i32 %702, 31
  %704 = ashr i32 2129954, %703
  %705 = and i32 %704, 1
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %708, label %707

707:                                              ; preds = %692, %679, %663
  br label %763

708:                                              ; preds = %692
  %709 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %710 = load i32, i32* @a_5, align 4
  %711 = call i32 @find_among_b(%struct.SN_env* %709, i32 %710, i32 4)
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %714, label %713

713:                                              ; preds = %708
  br label %763

714:                                              ; preds = %708
  %715 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %716 = load i32, i32* @g_v, align 4
  %717 = call i64 @out_grouping_b_U(%struct.SN_env* %715, i32 %716, i32 97, i32 232, i32 0)
  %718 = icmp ne i64 %717, 0
  br i1 %718, label %719, label %720

719:                                              ; preds = %714
  br label %763

720:                                              ; preds = %714
  %721 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %722 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 8
  %724 = load i32, i32* %37, align 4
  %725 = sub nsw i32 %723, %724
  %726 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %727 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %726, i32 0, i32 1
  store i32 %725, i32* %727, align 4
  %728 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %729 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %728, i32 0, i32 1
  %730 = load i32, i32* %729, align 4
  %731 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %732 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %731, i32 0, i32 2
  store i32 %730, i32* %732, align 8
  %733 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %734 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %733, i32 0, i32 4
  %735 = load i32*, i32** %734, align 8
  %736 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %737 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %736, i32 0, i32 1
  %738 = load i32, i32* %737, align 4
  %739 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %740 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %739, i32 0, i32 3
  %741 = load i32, i32* %740, align 4
  %742 = call i32 @skip_utf8(i32* %735, i32 %738, i32 %741, i32 0, i32 -1)
  store i32 %742, i32* %38, align 4
  %743 = load i32, i32* %38, align 4
  %744 = icmp slt i32 %743, 0
  br i1 %744, label %745, label %746

745:                                              ; preds = %720
  br label %763

746:                                              ; preds = %720
  %747 = load i32, i32* %38, align 4
  %748 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %749 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %748, i32 0, i32 1
  store i32 %747, i32* %749, align 4
  %750 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %751 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %750, i32 0, i32 1
  %752 = load i32, i32* %751, align 4
  %753 = sext i32 %752 to i64
  %754 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %755 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %754, i32 0, i32 5
  store i64 %753, i64* %755, align 8
  %756 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %757 = call i32 @slice_del(%struct.SN_env* %756)
  store i32 %757, i32* %39, align 4
  %758 = load i32, i32* %39, align 4
  %759 = icmp slt i32 %758, 0
  br i1 %759, label %760, label %762

760:                                              ; preds = %746
  %761 = load i32, i32* %39, align 4
  store i32 %761, i32* %2, align 4
  br label %771

762:                                              ; preds = %746
  br label %763

763:                                              ; preds = %762, %745, %719, %713, %707, %662
  %764 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %765 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %764, i32 0, i32 0
  %766 = load i32, i32* %765, align 8
  %767 = load i32, i32* %36, align 4
  %768 = sub nsw i32 %766, %767
  %769 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %770 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %769, i32 0, i32 1
  store i32 %768, i32* %770, align 4
  store i32 1, i32* %2, align 4
  br label %771

771:                                              ; preds = %763, %760, %638, %623, %611, %604, %592, %581, %574, %562, %514, %501, %482, %434, %398, %391, %306, %278, %230, %186, %158, %145, %133, %121, %113
  %772 = load i32, i32* %2, align 4
  ret i32 %772
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_en_ending(%struct.SN_env*) #1

declare dso_local i64 @out_grouping_b_U(%struct.SN_env*, i32, i32, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_e_ending(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R2(%struct.SN_env*) #1

declare dso_local i32 @r_undouble(%struct.SN_env*) #1

declare dso_local i32 @skip_utf8(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
