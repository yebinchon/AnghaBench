; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_russian.c_russian_UTF_8_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_russian.c_russian_UTF_8_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32, i32, i32*, i32 }

@s_9 = common dso_local global i32 0, align 4
@s_10 = common dso_local global i32 0, align 4
@s_11 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @russian_UTF_8_stem(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %26 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %27 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %1, %85
  %30 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %31 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %73
  %34 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %35 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %38 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %41 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %43 = load i32, i32* @s_9, align 4
  %44 = call i32 @eq_s(%struct.SN_env* %42, i32 2, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  br label %56

47:                                               ; preds = %33
  %48 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %49 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %52 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %55 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %77

56:                                               ; preds = %46
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %59 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %61 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %64 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %67 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @skip_utf8(i32 %62, i32 %65, i32 0, i32 %68, i32 1)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  br label %86

73:                                               ; preds = %56
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %76 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %33

77:                                               ; preds = %47
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = load i32, i32* @s_10, align 4
  %80 = call i32 @slice_from_s(%struct.SN_env* %78, i32 2, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %367

85:                                               ; preds = %77
  br label %29

86:                                               ; preds = %72
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %89 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = call i32 @r_mark_regions(%struct.SN_env* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %105

99:                                               ; preds = %90
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %2, align 4
  br label %367

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %98
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %112 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %115 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %117 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %120 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %118, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %367

126:                                              ; preds = %105
  %127 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %128 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %10, align 4
  %130 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %131 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %136 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %141 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %139, %142
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %146 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %149 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %147, %150
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %154 = call i32 @r_perfective_gerund(%struct.SN_env* %153)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %126
  br label %164

158:                                              ; preds = %126
  %159 = load i32, i32* %13, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %2, align 4
  br label %367

163:                                              ; preds = %158
  br label %257

164:                                              ; preds = %157
  %165 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %166 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %12, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %171 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %173 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %176 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %174, %177
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %181 = call i32 @r_reflexive(%struct.SN_env* %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %164
  %185 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %186 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %14, align 4
  %189 = sub nsw i32 %187, %188
  %190 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %191 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  br label %198

192:                                              ; preds = %164
  %193 = load i32, i32* %15, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32, i32* %15, align 4
  store i32 %196, i32* %2, align 4
  br label %367

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197, %184
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %203 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %201, %204
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %16, align 4
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = call i32 @r_adjectival(%struct.SN_env* %207)
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %17, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %198
  br label %218

212:                                              ; preds = %198
  %213 = load i32, i32* %17, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = load i32, i32* %17, align 4
  store i32 %216, i32* %2, align 4
  br label %367

217:                                              ; preds = %212
  br label %256

218:                                              ; preds = %211
  %219 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %220 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %16, align 4
  %223 = sub nsw i32 %221, %222
  %224 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %225 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %227 = call i32 @r_verb(%struct.SN_env* %226)
  store i32 %227, i32* %18, align 4
  %228 = load i32, i32* %18, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %218
  br label %237

231:                                              ; preds = %218
  %232 = load i32, i32* %18, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = load i32, i32* %18, align 4
  store i32 %235, i32* %2, align 4
  br label %367

236:                                              ; preds = %231
  br label %256

237:                                              ; preds = %230
  %238 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %239 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %16, align 4
  %242 = sub nsw i32 %240, %241
  %243 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %244 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 8
  %245 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %246 = call i32 @r_noun(%struct.SN_env* %245)
  store i32 %246, i32* %19, align 4
  %247 = load i32, i32* %19, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %237
  br label %258

250:                                              ; preds = %237
  %251 = load i32, i32* %19, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  %254 = load i32, i32* %19, align 4
  store i32 %254, i32* %2, align 4
  br label %367

255:                                              ; preds = %250
  br label %256

256:                                              ; preds = %255, %236, %217
  br label %257

257:                                              ; preds = %256, %163
  br label %258

258:                                              ; preds = %257, %249
  %259 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %260 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %11, align 4
  %263 = sub nsw i32 %261, %262
  %264 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %265 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %267 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %270 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = sub nsw i32 %268, %271
  store i32 %272, i32* %20, align 4
  %273 = load i32, i32* %20, align 4
  %274 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %275 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %278 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 8
  %279 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %280 = load i32, i32* @s_11, align 4
  %281 = call i32 @eq_s_b(%struct.SN_env* %279, i32 2, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %291, label %283

283:                                              ; preds = %258
  %284 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %285 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %20, align 4
  %288 = sub nsw i32 %286, %287
  %289 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %290 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  br label %304

291:                                              ; preds = %258
  %292 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %293 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 4
  %297 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %298 = call i32 @slice_del(%struct.SN_env* %297)
  store i32 %298, i32* %21, align 4
  %299 = load i32, i32* %21, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %291
  %302 = load i32, i32* %21, align 4
  store i32 %302, i32* %2, align 4
  br label %367

303:                                              ; preds = %291
  br label %304

304:                                              ; preds = %303, %283
  %305 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %306 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %309 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = sub nsw i32 %307, %310
  store i32 %311, i32* %22, align 4
  %312 = load i32, i32* %22, align 4
  %313 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %314 = call i32 @r_derivational(%struct.SN_env* %313)
  store i32 %314, i32* %23, align 4
  %315 = load i32, i32* %23, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %304
  br label %324

318:                                              ; preds = %304
  %319 = load i32, i32* %23, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  %322 = load i32, i32* %23, align 4
  store i32 %322, i32* %2, align 4
  br label %367

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %317
  %325 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %326 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %22, align 4
  %329 = sub nsw i32 %327, %328
  %330 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %331 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 8
  %332 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %333 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %336 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = sub nsw i32 %334, %337
  store i32 %338, i32* %24, align 4
  %339 = load i32, i32* %24, align 4
  %340 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %341 = call i32 @r_tidy_up(%struct.SN_env* %340)
  store i32 %341, i32* %25, align 4
  %342 = load i32, i32* %25, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %324
  br label %351

345:                                              ; preds = %324
  %346 = load i32, i32* %25, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %345
  %349 = load i32, i32* %25, align 4
  store i32 %349, i32* %2, align 4
  br label %367

350:                                              ; preds = %345
  br label %351

351:                                              ; preds = %350, %344
  %352 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %353 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* %24, align 4
  %356 = sub nsw i32 %354, %355
  %357 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %358 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %357, i32 0, i32 0
  store i32 %356, i32* %358, align 8
  %359 = load i32, i32* %10, align 4
  %360 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %361 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %360, i32 0, i32 4
  store i32 %359, i32* %361, align 8
  %362 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %363 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %366 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %365, i32 0, i32 0
  store i32 %364, i32* %366, align 8
  store i32 1, i32* %2, align 4
  br label %367

367:                                              ; preds = %351, %348, %321, %301, %253, %234, %215, %195, %161, %125, %102, %83
  %368 = load i32, i32* %2, align 4
  ret i32 %368
}

declare dso_local i32 @eq_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @skip_utf8(i32, i32, i32, i32, i32) #1

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_mark_regions(%struct.SN_env*) #1

declare dso_local i32 @r_perfective_gerund(%struct.SN_env*) #1

declare dso_local i32 @r_reflexive(%struct.SN_env*) #1

declare dso_local i32 @r_adjectival(%struct.SN_env*) #1

declare dso_local i32 @r_verb(%struct.SN_env*) #1

declare dso_local i32 @r_noun(%struct.SN_env*) #1

declare dso_local i32 @eq_s_b(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_derivational(%struct.SN_env*) #1

declare dso_local i32 @r_tidy_up(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
