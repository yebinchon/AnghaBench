; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_KOI8_R_russian.c_russian_KOI8_R_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_KOI8_R_russian.c_russian_KOI8_R_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32, i32, i32, i32*, i64, i32, i32* }

@s_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @russian_KOI8_R_stem(%struct.SN_env* %0) #0 {
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
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %25 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %26 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %1, %99
  %29 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %30 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %86
  %33 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %34 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  %36 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %37 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %40 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %42 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %45 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %32
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %53 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 163
  br i1 %58, label %59, label %60

59:                                               ; preds = %48, %32
  br label %74

60:                                               ; preds = %48
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %66 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %70 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %69, i32 0, i32 4
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %73 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %91

74:                                               ; preds = %59
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %77 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %79 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %82 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %100

86:                                               ; preds = %74
  %87 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %88 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %32

91:                                               ; preds = %60
  %92 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %93 = load i32, i32* @s_0, align 4
  %94 = call i32 @slice_from_s(%struct.SN_env* %92, i32 1, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %401

99:                                               ; preds = %91
  br label %28

100:                                              ; preds = %85
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %103 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %107 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %109 = call i32 @r_mark_regions(%struct.SN_env* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %119

113:                                              ; preds = %104
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %401

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %112
  %120 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %121 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %124 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %131 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %134 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %132, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %401

140:                                              ; preds = %119
  %141 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %142 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %9, align 4
  %144 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %145 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %144, i32 0, i32 6
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %150 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  %151 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %152 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %155 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %153, %156
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %160 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %163 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %161, %164
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %168 = call i32 @r_perfective_gerund(%struct.SN_env* %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %140
  br label %178

172:                                              ; preds = %140
  %173 = load i32, i32* %12, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %2, align 4
  br label %401

177:                                              ; preds = %172
  br label %271

178:                                              ; preds = %171
  %179 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %180 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sub nsw i32 %181, %182
  %184 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %185 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %187 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %190 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %188, %191
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %195 = call i32 @r_reflexive(%struct.SN_env* %194)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %178
  %199 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %200 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sub nsw i32 %201, %202
  %204 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %205 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  br label %212

206:                                              ; preds = %178
  %207 = load i32, i32* %14, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* %14, align 4
  store i32 %210, i32* %2, align 4
  br label %401

211:                                              ; preds = %206
  br label %212

212:                                              ; preds = %211, %198
  %213 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %214 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %217 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %215, %218
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %222 = call i32 @r_adjectival(%struct.SN_env* %221)
  store i32 %222, i32* %16, align 4
  %223 = load i32, i32* %16, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %212
  br label %232

226:                                              ; preds = %212
  %227 = load i32, i32* %16, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = load i32, i32* %16, align 4
  store i32 %230, i32* %2, align 4
  br label %401

231:                                              ; preds = %226
  br label %270

232:                                              ; preds = %225
  %233 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %234 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %15, align 4
  %237 = sub nsw i32 %235, %236
  %238 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %239 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = call i32 @r_verb(%struct.SN_env* %240)
  store i32 %241, i32* %17, align 4
  %242 = load i32, i32* %17, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %232
  br label %251

245:                                              ; preds = %232
  %246 = load i32, i32* %17, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = load i32, i32* %17, align 4
  store i32 %249, i32* %2, align 4
  br label %401

250:                                              ; preds = %245
  br label %270

251:                                              ; preds = %244
  %252 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %253 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %15, align 4
  %256 = sub nsw i32 %254, %255
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  %259 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %260 = call i32 @r_noun(%struct.SN_env* %259)
  store i32 %260, i32* %18, align 4
  %261 = load i32, i32* %18, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %251
  br label %272

264:                                              ; preds = %251
  %265 = load i32, i32* %18, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = load i32, i32* %18, align 4
  store i32 %268, i32* %2, align 4
  br label %401

269:                                              ; preds = %264
  br label %270

270:                                              ; preds = %269, %250, %231
  br label %271

271:                                              ; preds = %270, %177
  br label %272

272:                                              ; preds = %271, %263
  %273 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %274 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sub nsw i32 %275, %276
  %278 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %279 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  %280 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %281 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %284 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sub nsw i32 %282, %285
  store i32 %286, i32* %19, align 4
  %287 = load i32, i32* %19, align 4
  %288 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %289 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %293 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %292, i32 0, i32 4
  store i64 %291, i64* %293, align 8
  %294 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %295 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %298 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 8
  %300 = icmp sle i32 %296, %299
  br i1 %300, label %313, label %301

301:                                              ; preds = %272
  %302 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %303 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %302, i32 0, i32 3
  %304 = load i32*, i32** %303, align 8
  %305 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %306 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %304, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 201
  br i1 %312, label %313, label %321

313:                                              ; preds = %301, %272
  %314 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %315 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %19, align 4
  %318 = sub nsw i32 %316, %317
  %319 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %320 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %319, i32 0, i32 0
  store i32 %318, i32* %320, align 8
  br label %338

321:                                              ; preds = %301
  %322 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %323 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = add nsw i32 %324, -1
  store i32 %325, i32* %323, align 8
  %326 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %327 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %330 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %329, i32 0, i32 1
  store i32 %328, i32* %330, align 4
  %331 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %332 = call i32 @slice_del(%struct.SN_env* %331)
  store i32 %332, i32* %20, align 4
  %333 = load i32, i32* %20, align 4
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %321
  %336 = load i32, i32* %20, align 4
  store i32 %336, i32* %2, align 4
  br label %401

337:                                              ; preds = %321
  br label %338

338:                                              ; preds = %337, %313
  %339 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %340 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %343 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = sub nsw i32 %341, %344
  store i32 %345, i32* %21, align 4
  %346 = load i32, i32* %21, align 4
  %347 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %348 = call i32 @r_derivational(%struct.SN_env* %347)
  store i32 %348, i32* %22, align 4
  %349 = load i32, i32* %22, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %338
  br label %358

352:                                              ; preds = %338
  %353 = load i32, i32* %22, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %352
  %356 = load i32, i32* %22, align 4
  store i32 %356, i32* %2, align 4
  br label %401

357:                                              ; preds = %352
  br label %358

358:                                              ; preds = %357, %351
  %359 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %360 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* %21, align 4
  %363 = sub nsw i32 %361, %362
  %364 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %365 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %364, i32 0, i32 0
  store i32 %363, i32* %365, align 8
  %366 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %367 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %370 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = sub nsw i32 %368, %371
  store i32 %372, i32* %23, align 4
  %373 = load i32, i32* %23, align 4
  %374 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %375 = call i32 @r_tidy_up(%struct.SN_env* %374)
  store i32 %375, i32* %24, align 4
  %376 = load i32, i32* %24, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %358
  br label %385

379:                                              ; preds = %358
  %380 = load i32, i32* %24, align 4
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %379
  %383 = load i32, i32* %24, align 4
  store i32 %383, i32* %2, align 4
  br label %401

384:                                              ; preds = %379
  br label %385

385:                                              ; preds = %384, %378
  %386 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %387 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* %23, align 4
  %390 = sub nsw i32 %388, %389
  %391 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %392 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %391, i32 0, i32 0
  store i32 %390, i32* %392, align 8
  %393 = load i32, i32* %9, align 4
  %394 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %395 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %394, i32 0, i32 5
  store i32 %393, i32* %395, align 8
  %396 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %397 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %396, i32 0, i32 5
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %400 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %399, i32 0, i32 0
  store i32 %398, i32* %400, align 8
  store i32 1, i32* %2, align 4
  br label %401

401:                                              ; preds = %385, %382, %355, %335, %267, %248, %229, %209, %175, %139, %116, %97
  %402 = load i32, i32* %2, align 4
  ret i32 %402
}

declare dso_local i32 @slice_from_s(%struct.SN_env*, i32, i32) #1

declare dso_local i32 @r_mark_regions(%struct.SN_env*) #1

declare dso_local i32 @r_perfective_gerund(%struct.SN_env*) #1

declare dso_local i32 @r_reflexive(%struct.SN_env*) #1

declare dso_local i32 @r_adjectival(%struct.SN_env*) #1

declare dso_local i32 @r_verb(%struct.SN_env*) #1

declare dso_local i32 @r_noun(%struct.SN_env*) #1

declare dso_local i32 @slice_del(%struct.SN_env*) #1

declare dso_local i32 @r_derivational(%struct.SN_env*) #1

declare dso_local i32 @r_tidy_up(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
