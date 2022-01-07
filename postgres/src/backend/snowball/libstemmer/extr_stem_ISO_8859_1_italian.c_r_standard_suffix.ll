; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_italian.c_r_standard_suffix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_ISO_8859_1_italian.c_r_standard_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32*, i32 }

@a_6 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4
@s_12 = common dso_local global i32 0, align 4
@s_13 = common dso_local global i32 0, align 4
@s_14 = common dso_local global i32 0, align 4
@a_4 = common dso_local global i32 0, align 4
@s_15 = common dso_local global i32 0, align 4
@a_5 = common dso_local global i32 0, align 4
@s_16 = common dso_local global i32 0, align 4
@s_17 = common dso_local global i32 0, align 4
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = load i32, i32* @a_6, align 4
  %46 = call i32 @find_among_b(%struct.SN_env* %44, i32 %45, i32 51)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %614

50:                                               ; preds = %1
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %4, align 4
  switch i32 %56, label %613 [
    i32 1, label %57
    i32 2, label %72
    i32 3, label %144
    i32 4, label %160
    i32 5, label %176
    i32 6, label %192
    i32 7, label %207
    i32 8, label %376
    i32 9, label %493
  ]

57:                                               ; preds = %50
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = call i32 @r_R2(%struct.SN_env* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %614

64:                                               ; preds = %57
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = call i32 @slice_del(%struct.SN_env* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %614

71:                                               ; preds = %64
  br label %613

72:                                               ; preds = %50
  %73 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %74 = call i32 @r_R2(%struct.SN_env* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %614

79:                                               ; preds = %72
  %80 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %81 = call i32 @slice_del(%struct.SN_env* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %614

86:                                               ; preds = %79
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %91 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %89, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %96 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %99 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %101 = load i32, i32* @s_11, align 4
  %102 = call i32 @eq_s_b(%struct.SN_env* %100, i32 2, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %86
  %105 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %106 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %111 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %143

112:                                              ; preds = %86
  %113 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %114 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %119 = call i32 @r_R2(%struct.SN_env* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %112
  %123 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %124 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %143

130:                                              ; preds = %112
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %2, align 4
  br label %614

135:                                              ; preds = %130
  %136 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %137 = call i32 @slice_del(%struct.SN_env* %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %2, align 4
  br label %614

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %122, %104
  br label %613

144:                                              ; preds = %50
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = call i32 @r_R2(%struct.SN_env* %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %2, align 4
  br label %614

151:                                              ; preds = %144
  %152 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %153 = load i32, i32* @s_12, align 4
  %154 = call i32 @slice_from_s(%struct.SN_env* %152, i32 3, i32 %153)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %2, align 4
  br label %614

159:                                              ; preds = %151
  br label %613

160:                                              ; preds = %50
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = call i32 @r_R2(%struct.SN_env* %161)
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %2, align 4
  br label %614

167:                                              ; preds = %160
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = load i32, i32* @s_13, align 4
  %170 = call i32 @slice_from_s(%struct.SN_env* %168, i32 1, i32 %169)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i32, i32* %15, align 4
  store i32 %174, i32* %2, align 4
  br label %614

175:                                              ; preds = %167
  br label %613

176:                                              ; preds = %50
  %177 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %178 = call i32 @r_R2(%struct.SN_env* %177)
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %16, align 4
  %180 = icmp sle i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i32, i32* %16, align 4
  store i32 %182, i32* %2, align 4
  br label %614

183:                                              ; preds = %176
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = load i32, i32* @s_14, align 4
  %186 = call i32 @slice_from_s(%struct.SN_env* %184, i32 4, i32 %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = load i32, i32* %17, align 4
  store i32 %190, i32* %2, align 4
  br label %614

191:                                              ; preds = %183
  br label %613

192:                                              ; preds = %50
  %193 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %194 = call i32 @r_RV(%struct.SN_env* %193)
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %18, align 4
  %196 = icmp sle i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* %18, align 4
  store i32 %198, i32* %2, align 4
  br label %614

199:                                              ; preds = %192
  %200 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %201 = call i32 @slice_del(%struct.SN_env* %200)
  store i32 %201, i32* %19, align 4
  %202 = load i32, i32* %19, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32, i32* %19, align 4
  store i32 %205, i32* %2, align 4
  br label %614

206:                                              ; preds = %199
  br label %613

207:                                              ; preds = %50
  %208 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %209 = call i32 @r_R1(%struct.SN_env* %208)
  store i32 %209, i32* %20, align 4
  %210 = load i32, i32* %20, align 4
  %211 = icmp sle i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, i32* %20, align 4
  store i32 %213, i32* %2, align 4
  br label %614

214:                                              ; preds = %207
  %215 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %216 = call i32 @slice_del(%struct.SN_env* %215)
  store i32 %216, i32* %21, align 4
  %217 = load i32, i32* %21, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i32, i32* %21, align 4
  store i32 %220, i32* %2, align 4
  br label %614

221:                                              ; preds = %214
  %222 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %223 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %226 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %224, %227
  store i32 %228, i32* %22, align 4
  %229 = load i32, i32* %22, align 4
  %230 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %231 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %234 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %236 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %237, 1
  %239 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %240 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = icmp sle i32 %238, %241
  br i1 %242, label %271, label %243

243:                                              ; preds = %221
  %244 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %245 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %244, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %248 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %246, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = ashr i32 %253, 5
  %255 = icmp ne i32 %254, 3
  br i1 %255, label %271, label %256

256:                                              ; preds = %243
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %257, i32 0, i32 4
  %259 = load i32*, i32** %258, align 8
  %260 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %261 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %259, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 31
  %268 = ashr i32 4722696, %267
  %269 = and i32 %268, 1
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %279, label %271

271:                                              ; preds = %256, %243, %221
  %272 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %273 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %22, align 4
  %276 = sub nsw i32 %274, %275
  %277 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %278 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  br label %375

279:                                              ; preds = %256
  %280 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %281 = load i32, i32* @a_4, align 4
  %282 = call i32 @find_among_b(%struct.SN_env* %280, i32 %281, i32 4)
  store i32 %282, i32* %4, align 4
  %283 = load i32, i32* %4, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %293, label %285

285:                                              ; preds = %279
  %286 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %287 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %22, align 4
  %290 = sub nsw i32 %288, %289
  %291 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %292 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %291, i32 0, i32 1
  store i32 %290, i32* %292, align 4
  br label %375

293:                                              ; preds = %279
  %294 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %295 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %298 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %297, i32 0, i32 2
  store i32 %296, i32* %298, align 8
  %299 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %300 = call i32 @r_R2(%struct.SN_env* %299)
  store i32 %300, i32* %23, align 4
  %301 = load i32, i32* %23, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %293
  %304 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %305 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %22, align 4
  %308 = sub nsw i32 %306, %307
  %309 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %310 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  br label %375

311:                                              ; preds = %293
  %312 = load i32, i32* %23, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = load i32, i32* %23, align 4
  store i32 %315, i32* %2, align 4
  br label %614

316:                                              ; preds = %311
  %317 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %318 = call i32 @slice_del(%struct.SN_env* %317)
  store i32 %318, i32* %24, align 4
  %319 = load i32, i32* %24, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %316
  %322 = load i32, i32* %24, align 4
  store i32 %322, i32* %2, align 4
  br label %614

323:                                              ; preds = %316
  %324 = load i32, i32* %4, align 4
  switch i32 %324, label %374 [
    i32 1, label %325
  ]

325:                                              ; preds = %323
  %326 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %327 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %330 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  %331 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %332 = load i32, i32* @s_15, align 4
  %333 = call i32 @eq_s_b(%struct.SN_env* %331, i32 2, i32 %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %343, label %335

335:                                              ; preds = %325
  %336 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %337 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %22, align 4
  %340 = sub nsw i32 %338, %339
  %341 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %342 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %341, i32 0, i32 1
  store i32 %340, i32* %342, align 4
  br label %375

343:                                              ; preds = %325
  %344 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %345 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %348 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %347, i32 0, i32 2
  store i32 %346, i32* %348, align 8
  %349 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %350 = call i32 @r_R2(%struct.SN_env* %349)
  store i32 %350, i32* %25, align 4
  %351 = load i32, i32* %25, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %343
  %354 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %355 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %22, align 4
  %358 = sub nsw i32 %356, %357
  %359 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %360 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %359, i32 0, i32 1
  store i32 %358, i32* %360, align 4
  br label %375

361:                                              ; preds = %343
  %362 = load i32, i32* %25, align 4
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %361
  %365 = load i32, i32* %25, align 4
  store i32 %365, i32* %2, align 4
  br label %614

366:                                              ; preds = %361
  %367 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %368 = call i32 @slice_del(%struct.SN_env* %367)
  store i32 %368, i32* %26, align 4
  %369 = load i32, i32* %26, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %366
  %372 = load i32, i32* %26, align 4
  store i32 %372, i32* %2, align 4
  br label %614

373:                                              ; preds = %366
  br label %374

374:                                              ; preds = %323, %373
  br label %375

375:                                              ; preds = %374, %353, %335, %303, %285, %271
  br label %613

376:                                              ; preds = %50
  %377 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %378 = call i32 @r_R2(%struct.SN_env* %377)
  store i32 %378, i32* %27, align 4
  %379 = load i32, i32* %27, align 4
  %380 = icmp sle i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %376
  %382 = load i32, i32* %27, align 4
  store i32 %382, i32* %2, align 4
  br label %614

383:                                              ; preds = %376
  %384 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %385 = call i32 @slice_del(%struct.SN_env* %384)
  store i32 %385, i32* %28, align 4
  %386 = load i32, i32* %28, align 4
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  %389 = load i32, i32* %28, align 4
  store i32 %389, i32* %2, align 4
  br label %614

390:                                              ; preds = %383
  %391 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %392 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %395 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = sub nsw i32 %393, %396
  store i32 %397, i32* %29, align 4
  %398 = load i32, i32* %29, align 4
  %399 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %400 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %403 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %402, i32 0, i32 0
  store i32 %401, i32* %403, align 8
  %404 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %405 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = sub nsw i32 %406, 1
  %408 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %409 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %408, i32 0, i32 5
  %410 = load i32, i32* %409, align 8
  %411 = icmp sle i32 %407, %410
  br i1 %411, label %440, label %412

412:                                              ; preds = %390
  %413 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %414 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %413, i32 0, i32 4
  %415 = load i32*, i32** %414, align 8
  %416 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %417 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = sub nsw i32 %418, 1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %415, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = ashr i32 %422, 5
  %424 = icmp ne i32 %423, 3
  br i1 %424, label %440, label %425

425:                                              ; preds = %412
  %426 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %427 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %426, i32 0, i32 4
  %428 = load i32*, i32** %427, align 8
  %429 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %430 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = sub nsw i32 %431, 1
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %428, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = and i32 %435, 31
  %437 = ashr i32 4198408, %436
  %438 = and i32 %437, 1
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %448, label %440

440:                                              ; preds = %425, %412, %390
  %441 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %442 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %441, i32 0, i32 3
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* %29, align 4
  %445 = sub nsw i32 %443, %444
  %446 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %447 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %446, i32 0, i32 1
  store i32 %445, i32* %447, align 4
  br label %492

448:                                              ; preds = %425
  %449 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %450 = load i32, i32* @a_5, align 4
  %451 = call i32 @find_among_b(%struct.SN_env* %449, i32 %450, i32 3)
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %461, label %453

453:                                              ; preds = %448
  %454 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %455 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* %29, align 4
  %458 = sub nsw i32 %456, %457
  %459 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %460 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %459, i32 0, i32 1
  store i32 %458, i32* %460, align 4
  br label %492

461:                                              ; preds = %448
  %462 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %463 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %466 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %465, i32 0, i32 2
  store i32 %464, i32* %466, align 8
  %467 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %468 = call i32 @r_R2(%struct.SN_env* %467)
  store i32 %468, i32* %30, align 4
  %469 = load i32, i32* %30, align 4
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %479

471:                                              ; preds = %461
  %472 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %473 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* %29, align 4
  %476 = sub nsw i32 %474, %475
  %477 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %478 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %477, i32 0, i32 1
  store i32 %476, i32* %478, align 4
  br label %492

479:                                              ; preds = %461
  %480 = load i32, i32* %30, align 4
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %482, label %484

482:                                              ; preds = %479
  %483 = load i32, i32* %30, align 4
  store i32 %483, i32* %2, align 4
  br label %614

484:                                              ; preds = %479
  %485 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %486 = call i32 @slice_del(%struct.SN_env* %485)
  store i32 %486, i32* %31, align 4
  %487 = load i32, i32* %31, align 4
  %488 = icmp slt i32 %487, 0
  br i1 %488, label %489, label %491

489:                                              ; preds = %484
  %490 = load i32, i32* %31, align 4
  store i32 %490, i32* %2, align 4
  br label %614

491:                                              ; preds = %484
  br label %492

492:                                              ; preds = %491, %471, %453, %440
  br label %613

493:                                              ; preds = %50
  %494 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %495 = call i32 @r_R2(%struct.SN_env* %494)
  store i32 %495, i32* %32, align 4
  %496 = load i32, i32* %32, align 4
  %497 = icmp sle i32 %496, 0
  br i1 %497, label %498, label %500

498:                                              ; preds = %493
  %499 = load i32, i32* %32, align 4
  store i32 %499, i32* %2, align 4
  br label %614

500:                                              ; preds = %493
  %501 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %502 = call i32 @slice_del(%struct.SN_env* %501)
  store i32 %502, i32* %33, align 4
  %503 = load i32, i32* %33, align 4
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %507

505:                                              ; preds = %500
  %506 = load i32, i32* %33, align 4
  store i32 %506, i32* %2, align 4
  br label %614

507:                                              ; preds = %500
  %508 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %509 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %508, i32 0, i32 3
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %512 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = sub nsw i32 %510, %513
  store i32 %514, i32* %34, align 4
  %515 = load i32, i32* %34, align 4
  %516 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %517 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %520 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %519, i32 0, i32 0
  store i32 %518, i32* %520, align 8
  %521 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %522 = load i32, i32* @s_16, align 4
  %523 = call i32 @eq_s_b(%struct.SN_env* %521, i32 2, i32 %522)
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %533, label %525

525:                                              ; preds = %507
  %526 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %527 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %526, i32 0, i32 3
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* %34, align 4
  %530 = sub nsw i32 %528, %529
  %531 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %532 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %531, i32 0, i32 1
  store i32 %530, i32* %532, align 4
  br label %612

533:                                              ; preds = %507
  %534 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %535 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %538 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %537, i32 0, i32 2
  store i32 %536, i32* %538, align 8
  %539 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %540 = call i32 @r_R2(%struct.SN_env* %539)
  store i32 %540, i32* %35, align 4
  %541 = load i32, i32* %35, align 4
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %551

543:                                              ; preds = %533
  %544 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %545 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %544, i32 0, i32 3
  %546 = load i32, i32* %545, align 4
  %547 = load i32, i32* %34, align 4
  %548 = sub nsw i32 %546, %547
  %549 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %550 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %549, i32 0, i32 1
  store i32 %548, i32* %550, align 4
  br label %612

551:                                              ; preds = %533
  %552 = load i32, i32* %35, align 4
  %553 = icmp slt i32 %552, 0
  br i1 %553, label %554, label %556

554:                                              ; preds = %551
  %555 = load i32, i32* %35, align 4
  store i32 %555, i32* %2, align 4
  br label %614

556:                                              ; preds = %551
  %557 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %558 = call i32 @slice_del(%struct.SN_env* %557)
  store i32 %558, i32* %36, align 4
  %559 = load i32, i32* %36, align 4
  %560 = icmp slt i32 %559, 0
  br i1 %560, label %561, label %563

561:                                              ; preds = %556
  %562 = load i32, i32* %36, align 4
  store i32 %562, i32* %2, align 4
  br label %614

563:                                              ; preds = %556
  %564 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %565 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %568 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %567, i32 0, i32 0
  store i32 %566, i32* %568, align 8
  %569 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %570 = load i32, i32* @s_17, align 4
  %571 = call i32 @eq_s_b(%struct.SN_env* %569, i32 2, i32 %570)
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %581, label %573

573:                                              ; preds = %563
  %574 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %575 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %574, i32 0, i32 3
  %576 = load i32, i32* %575, align 4
  %577 = load i32, i32* %34, align 4
  %578 = sub nsw i32 %576, %577
  %579 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %580 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %579, i32 0, i32 1
  store i32 %578, i32* %580, align 4
  br label %612

581:                                              ; preds = %563
  %582 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %583 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %586 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %585, i32 0, i32 2
  store i32 %584, i32* %586, align 8
  %587 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %588 = call i32 @r_R2(%struct.SN_env* %587)
  store i32 %588, i32* %37, align 4
  %589 = load i32, i32* %37, align 4
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %599

591:                                              ; preds = %581
  %592 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %593 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %592, i32 0, i32 3
  %594 = load i32, i32* %593, align 4
  %595 = load i32, i32* %34, align 4
  %596 = sub nsw i32 %594, %595
  %597 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %598 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %597, i32 0, i32 1
  store i32 %596, i32* %598, align 4
  br label %612

599:                                              ; preds = %581
  %600 = load i32, i32* %37, align 4
  %601 = icmp slt i32 %600, 0
  br i1 %601, label %602, label %604

602:                                              ; preds = %599
  %603 = load i32, i32* %37, align 4
  store i32 %603, i32* %2, align 4
  br label %614

604:                                              ; preds = %599
  %605 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %606 = call i32 @slice_del(%struct.SN_env* %605)
  store i32 %606, i32* %38, align 4
  %607 = load i32, i32* %38, align 4
  %608 = icmp slt i32 %607, 0
  br i1 %608, label %609, label %611

609:                                              ; preds = %604
  %610 = load i32, i32* %38, align 4
  store i32 %610, i32* %2, align 4
  br label %614

611:                                              ; preds = %604
  br label %612

612:                                              ; preds = %611, %591, %573, %543, %525
  br label %613

613:                                              ; preds = %50, %612, %492, %375, %206, %191, %175, %159, %143, %71
  store i32 1, i32* %2, align 4
  br label %614

614:                                              ; preds = %613, %609, %602, %561, %554, %505, %498, %489, %482, %388, %381, %371, %364, %321, %314, %219, %212, %204, %197, %189, %181, %173, %165, %157, %149, %140, %133, %84, %77, %69, %62, %49
  %615 = load i32, i32* %2, align 4
  ret i32 %615
}

declare dso_local i32 @find_among_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_R2(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_RV(%struct.SN_env*) #1

declare dso_local i32 @r_R1(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
