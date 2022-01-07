; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_arabic_UTF_8_stem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_stem_UTF_8_arabic.c_arabic_UTF_8_stem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN_env = type { i32*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arabic_UTF_8_stem(%struct.SN_env* %0) #0 {
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
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  store %struct.SN_env* %0, %struct.SN_env** %3, align 8
  %49 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %50 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %54 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %58 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 0, i32* %60, align 4
  %61 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %62 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %4, align 4
  %64 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %65 = call i32 @r_Checks1(%struct.SN_env* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %1
  br label %75

69:                                               ; preds = %1
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %736

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %68
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %78 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %80 = call i32 @r_Normalize_pre(%struct.SN_env* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %90

84:                                               ; preds = %75
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %736

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %83
  %91 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %92 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %95 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %97 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %100 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %102 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %105 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %103, %106
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %110 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %113 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %111, %114
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %118 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %90
  br label %271

124:                                              ; preds = %90
  %125 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %126 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %129 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %127, %130
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %133

133:                                              ; preds = %124, %152
  %134 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %135 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %138 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %136, %139
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %143 = call i32 @r_Suffix_Verb_Step1(%struct.SN_env* %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %133
  br label %155

147:                                              ; preds = %133
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %2, align 4
  br label %736

152:                                              ; preds = %147
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %10, align 4
  br label %133

155:                                              ; preds = %146
  %156 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %157 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %162 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %155
  %164 = load i32, i32* %10, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %232

167:                                              ; preds = %163
  %168 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %169 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %172 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %170, %173
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %177 = call i32 @r_Suffix_Verb_Step2a(%struct.SN_env* %176)
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %167
  br label %187

181:                                              ; preds = %167
  %182 = load i32, i32* %14, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i32, i32* %14, align 4
  store i32 %185, i32* %2, align 4
  br label %736

186:                                              ; preds = %181
  br label %231

187:                                              ; preds = %180
  %188 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %189 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sub nsw i32 %190, %191
  %193 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %194 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 8
  %195 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %196 = call i32 @r_Suffix_Verb_Step2c(%struct.SN_env* %195)
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %15, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %187
  br label %206

200:                                              ; preds = %187
  %201 = load i32, i32* %15, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = load i32, i32* %15, align 4
  store i32 %204, i32* %2, align 4
  br label %736

205:                                              ; preds = %200
  br label %231

206:                                              ; preds = %199
  %207 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %208 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sub nsw i32 %209, %210
  %212 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %213 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 8
  %214 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %215 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %218 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %221 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @skip_utf8(i32 %216, i32 %219, i32 %222, i32 0, i32 -1)
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %16, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %206
  br label %232

227:                                              ; preds = %206
  %228 = load i32, i32* %16, align 4
  %229 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %230 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %227, %205, %186
  br label %270

232:                                              ; preds = %226, %166
  %233 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %234 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sub nsw i32 %235, %236
  %238 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %239 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  %240 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %241 = call i32 @r_Suffix_Verb_Step2b(%struct.SN_env* %240)
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
  br label %736

250:                                              ; preds = %245
  br label %270

251:                                              ; preds = %244
  %252 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %253 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sub nsw i32 %254, %255
  %257 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %258 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 8
  %259 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %260 = call i32 @r_Suffix_Verb_Step2a(%struct.SN_env* %259)
  store i32 %260, i32* %18, align 4
  %261 = load i32, i32* %18, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %251
  br label %271

264:                                              ; preds = %251
  %265 = load i32, i32* %18, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = load i32, i32* %18, align 4
  store i32 %268, i32* %2, align 4
  br label %736

269:                                              ; preds = %264
  br label %270

270:                                              ; preds = %269, %250, %231
  br label %588

271:                                              ; preds = %263, %123
  %272 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %273 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %8, align 4
  %276 = sub nsw i32 %274, %275
  %277 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %278 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 8
  %279 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %280 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %271
  br label %569

286:                                              ; preds = %271
  %287 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %288 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %291 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = sub nsw i32 %289, %292
  store i32 %293, i32* %19, align 4
  %294 = load i32, i32* %19, align 4
  %295 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %296 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %299 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = sub nsw i32 %297, %300
  store i32 %301, i32* %20, align 4
  %302 = load i32, i32* %20, align 4
  %303 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %304 = call i32 @r_Suffix_Noun_Step2c2(%struct.SN_env* %303)
  store i32 %304, i32* %21, align 4
  %305 = load i32, i32* %21, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %286
  br label %314

308:                                              ; preds = %286
  %309 = load i32, i32* %21, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %308
  %312 = load i32, i32* %21, align 4
  store i32 %312, i32* %2, align 4
  br label %736

313:                                              ; preds = %308
  br label %556

314:                                              ; preds = %307
  %315 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %316 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* %20, align 4
  %319 = sub nsw i32 %317, %318
  %320 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %321 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %320, i32 0, i32 1
  store i32 %319, i32* %321, align 8
  %322 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %323 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 2
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %314
  br label %330

329:                                              ; preds = %314
  br label %425

330:                                              ; preds = %328
  %331 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %332 = call i32 @r_Suffix_Noun_Step1a(%struct.SN_env* %331)
  store i32 %332, i32* %22, align 4
  %333 = load i32, i32* %22, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  br label %425

336:                                              ; preds = %330
  %337 = load i32, i32* %22, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  %340 = load i32, i32* %22, align 4
  store i32 %340, i32* %2, align 4
  br label %736

341:                                              ; preds = %336
  %342 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %343 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %346 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = sub nsw i32 %344, %347
  store i32 %348, i32* %23, align 4
  %349 = load i32, i32* %23, align 4
  %350 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %351 = call i32 @r_Suffix_Noun_Step2a(%struct.SN_env* %350)
  store i32 %351, i32* %24, align 4
  %352 = load i32, i32* %24, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %341
  br label %361

355:                                              ; preds = %341
  %356 = load i32, i32* %24, align 4
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  %359 = load i32, i32* %24, align 4
  store i32 %359, i32* %2, align 4
  br label %736

360:                                              ; preds = %355
  br label %424

361:                                              ; preds = %354
  %362 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %363 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* %23, align 4
  %366 = sub nsw i32 %364, %365
  %367 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %368 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %367, i32 0, i32 1
  store i32 %366, i32* %368, align 8
  %369 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %370 = call i32 @r_Suffix_Noun_Step2b(%struct.SN_env* %369)
  store i32 %370, i32* %25, align 4
  %371 = load i32, i32* %25, align 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %361
  br label %380

374:                                              ; preds = %361
  %375 = load i32, i32* %25, align 4
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %374
  %378 = load i32, i32* %25, align 4
  store i32 %378, i32* %2, align 4
  br label %736

379:                                              ; preds = %374
  br label %424

380:                                              ; preds = %373
  %381 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %382 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* %23, align 4
  %385 = sub nsw i32 %383, %384
  %386 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %387 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 8
  %388 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %389 = call i32 @r_Suffix_Noun_Step2c1(%struct.SN_env* %388)
  store i32 %389, i32* %26, align 4
  %390 = load i32, i32* %26, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %380
  br label %399

393:                                              ; preds = %380
  %394 = load i32, i32* %26, align 4
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %393
  %397 = load i32, i32* %26, align 4
  store i32 %397, i32* %2, align 4
  br label %736

398:                                              ; preds = %393
  br label %424

399:                                              ; preds = %392
  %400 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %401 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* %23, align 4
  %404 = sub nsw i32 %402, %403
  %405 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %406 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %405, i32 0, i32 1
  store i32 %404, i32* %406, align 8
  %407 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %408 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %411 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %414 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @skip_utf8(i32 %409, i32 %412, i32 %415, i32 0, i32 -1)
  store i32 %416, i32* %27, align 4
  %417 = load i32, i32* %27, align 4
  %418 = icmp slt i32 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %399
  br label %425

420:                                              ; preds = %399
  %421 = load i32, i32* %27, align 4
  %422 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %423 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %422, i32 0, i32 1
  store i32 %421, i32* %423, align 8
  br label %424

424:                                              ; preds = %420, %398, %379, %360
  br label %556

425:                                              ; preds = %419, %335, %329
  %426 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %427 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* %20, align 4
  %430 = sub nsw i32 %428, %429
  %431 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %432 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %431, i32 0, i32 1
  store i32 %430, i32* %432, align 8
  %433 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %434 = call i32 @r_Suffix_Noun_Step1b(%struct.SN_env* %433)
  store i32 %434, i32* %28, align 4
  %435 = load i32, i32* %28, align 4
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %425
  br label %502

438:                                              ; preds = %425
  %439 = load i32, i32* %28, align 4
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %441, label %443

441:                                              ; preds = %438
  %442 = load i32, i32* %28, align 4
  store i32 %442, i32* %2, align 4
  br label %736

443:                                              ; preds = %438
  %444 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %445 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %444, i32 0, i32 3
  %446 = load i32, i32* %445, align 8
  %447 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %448 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  %450 = sub nsw i32 %446, %449
  store i32 %450, i32* %29, align 4
  %451 = load i32, i32* %29, align 4
  %452 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %453 = call i32 @r_Suffix_Noun_Step2a(%struct.SN_env* %452)
  store i32 %453, i32* %30, align 4
  %454 = load i32, i32* %30, align 4
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %443
  br label %463

457:                                              ; preds = %443
  %458 = load i32, i32* %30, align 4
  %459 = icmp slt i32 %458, 0
  br i1 %459, label %460, label %462

460:                                              ; preds = %457
  %461 = load i32, i32* %30, align 4
  store i32 %461, i32* %2, align 4
  br label %736

462:                                              ; preds = %457
  br label %501

463:                                              ; preds = %456
  %464 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %465 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* %29, align 4
  %468 = sub nsw i32 %466, %467
  %469 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %470 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %469, i32 0, i32 1
  store i32 %468, i32* %470, align 8
  %471 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %472 = call i32 @r_Suffix_Noun_Step2b(%struct.SN_env* %471)
  store i32 %472, i32* %31, align 4
  %473 = load i32, i32* %31, align 4
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %463
  br label %482

476:                                              ; preds = %463
  %477 = load i32, i32* %31, align 4
  %478 = icmp slt i32 %477, 0
  br i1 %478, label %479, label %481

479:                                              ; preds = %476
  %480 = load i32, i32* %31, align 4
  store i32 %480, i32* %2, align 4
  br label %736

481:                                              ; preds = %476
  br label %501

482:                                              ; preds = %475
  %483 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %484 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* %29, align 4
  %487 = sub nsw i32 %485, %486
  %488 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %489 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %488, i32 0, i32 1
  store i32 %487, i32* %489, align 8
  %490 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %491 = call i32 @r_Suffix_Noun_Step2c1(%struct.SN_env* %490)
  store i32 %491, i32* %32, align 4
  %492 = load i32, i32* %32, align 4
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %495

494:                                              ; preds = %482
  br label %502

495:                                              ; preds = %482
  %496 = load i32, i32* %32, align 4
  %497 = icmp slt i32 %496, 0
  br i1 %497, label %498, label %500

498:                                              ; preds = %495
  %499 = load i32, i32* %32, align 4
  store i32 %499, i32* %2, align 4
  br label %736

500:                                              ; preds = %495
  br label %501

501:                                              ; preds = %500, %481, %462
  br label %556

502:                                              ; preds = %494, %437
  %503 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %504 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %503, i32 0, i32 3
  %505 = load i32, i32* %504, align 8
  %506 = load i32, i32* %20, align 4
  %507 = sub nsw i32 %505, %506
  %508 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %509 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %508, i32 0, i32 1
  store i32 %507, i32* %509, align 8
  %510 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %511 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %510, i32 0, i32 0
  %512 = load i32*, i32** %511, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 2
  %514 = load i32, i32* %513, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %517, label %516

516:                                              ; preds = %502
  br label %518

517:                                              ; preds = %502
  br label %530

518:                                              ; preds = %516
  %519 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %520 = call i32 @r_Suffix_Noun_Step2a(%struct.SN_env* %519)
  store i32 %520, i32* %33, align 4
  %521 = load i32, i32* %33, align 4
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %524

523:                                              ; preds = %518
  br label %530

524:                                              ; preds = %518
  %525 = load i32, i32* %33, align 4
  %526 = icmp slt i32 %525, 0
  br i1 %526, label %527, label %529

527:                                              ; preds = %524
  %528 = load i32, i32* %33, align 4
  store i32 %528, i32* %2, align 4
  br label %736

529:                                              ; preds = %524
  br label %556

530:                                              ; preds = %523, %517
  %531 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %532 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %531, i32 0, i32 3
  %533 = load i32, i32* %532, align 8
  %534 = load i32, i32* %20, align 4
  %535 = sub nsw i32 %533, %534
  %536 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %537 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %536, i32 0, i32 1
  store i32 %535, i32* %537, align 8
  %538 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %539 = call i32 @r_Suffix_Noun_Step2b(%struct.SN_env* %538)
  store i32 %539, i32* %34, align 4
  %540 = load i32, i32* %34, align 4
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %550

542:                                              ; preds = %530
  %543 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %544 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %543, i32 0, i32 3
  %545 = load i32, i32* %544, align 8
  %546 = load i32, i32* %19, align 4
  %547 = sub nsw i32 %545, %546
  %548 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %549 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %548, i32 0, i32 1
  store i32 %547, i32* %549, align 8
  br label %557

550:                                              ; preds = %530
  %551 = load i32, i32* %34, align 4
  %552 = icmp slt i32 %551, 0
  br i1 %552, label %553, label %555

553:                                              ; preds = %550
  %554 = load i32, i32* %34, align 4
  store i32 %554, i32* %2, align 4
  br label %736

555:                                              ; preds = %550
  br label %556

556:                                              ; preds = %555, %529, %501, %424, %313
  br label %557

557:                                              ; preds = %556, %542
  %558 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %559 = call i32 @r_Suffix_Noun_Step3(%struct.SN_env* %558)
  store i32 %559, i32* %35, align 4
  %560 = load i32, i32* %35, align 4
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %557
  br label %569

563:                                              ; preds = %557
  %564 = load i32, i32* %35, align 4
  %565 = icmp slt i32 %564, 0
  br i1 %565, label %566, label %568

566:                                              ; preds = %563
  %567 = load i32, i32* %35, align 4
  store i32 %567, i32* %2, align 4
  br label %736

568:                                              ; preds = %563
  br label %588

569:                                              ; preds = %562, %285
  %570 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %571 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %570, i32 0, i32 3
  %572 = load i32, i32* %571, align 8
  %573 = load i32, i32* %8, align 4
  %574 = sub nsw i32 %572, %573
  %575 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %576 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %575, i32 0, i32 1
  store i32 %574, i32* %576, align 8
  %577 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %578 = call i32 @r_Suffix_All_alef_maqsura(%struct.SN_env* %577)
  store i32 %578, i32* %36, align 4
  %579 = load i32, i32* %36, align 4
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %582

581:                                              ; preds = %569
  br label %589

582:                                              ; preds = %569
  %583 = load i32, i32* %36, align 4
  %584 = icmp slt i32 %583, 0
  br i1 %584, label %585, label %587

585:                                              ; preds = %582
  %586 = load i32, i32* %36, align 4
  store i32 %586, i32* %2, align 4
  br label %736

587:                                              ; preds = %582
  br label %588

588:                                              ; preds = %587, %568, %270
  br label %589

589:                                              ; preds = %588, %581
  %590 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %591 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %590, i32 0, i32 3
  %592 = load i32, i32* %591, align 8
  %593 = load i32, i32* %7, align 4
  %594 = sub nsw i32 %592, %593
  %595 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %596 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %595, i32 0, i32 1
  store i32 %594, i32* %596, align 8
  %597 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %598 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %597, i32 0, i32 2
  %599 = load i32, i32* %598, align 4
  %600 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %601 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %600, i32 0, i32 1
  store i32 %599, i32* %601, align 8
  %602 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %603 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %602, i32 0, i32 1
  %604 = load i32, i32* %603, align 8
  store i32 %604, i32* %37, align 4
  %605 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %606 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 8
  store i32 %607, i32* %38, align 4
  %608 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %609 = call i32 @r_Prefix_Step1(%struct.SN_env* %608)
  store i32 %609, i32* %39, align 4
  %610 = load i32, i32* %39, align 4
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %616

612:                                              ; preds = %589
  %613 = load i32, i32* %38, align 4
  %614 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %615 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %614, i32 0, i32 1
  store i32 %613, i32* %615, align 8
  br label %622

616:                                              ; preds = %589
  %617 = load i32, i32* %39, align 4
  %618 = icmp slt i32 %617, 0
  br i1 %618, label %619, label %621

619:                                              ; preds = %616
  %620 = load i32, i32* %39, align 4
  store i32 %620, i32* %2, align 4
  br label %736

621:                                              ; preds = %616
  br label %622

622:                                              ; preds = %621, %612
  %623 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %624 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %623, i32 0, i32 1
  %625 = load i32, i32* %624, align 8
  store i32 %625, i32* %40, align 4
  %626 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %627 = call i32 @r_Prefix_Step2(%struct.SN_env* %626)
  store i32 %627, i32* %41, align 4
  %628 = load i32, i32* %41, align 4
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %634

630:                                              ; preds = %622
  %631 = load i32, i32* %40, align 4
  %632 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %633 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %632, i32 0, i32 1
  store i32 %631, i32* %633, align 8
  br label %640

634:                                              ; preds = %622
  %635 = load i32, i32* %41, align 4
  %636 = icmp slt i32 %635, 0
  br i1 %636, label %637, label %639

637:                                              ; preds = %634
  %638 = load i32, i32* %41, align 4
  store i32 %638, i32* %2, align 4
  br label %736

639:                                              ; preds = %634
  br label %640

640:                                              ; preds = %639, %630
  %641 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %642 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %641, i32 0, i32 1
  %643 = load i32, i32* %642, align 8
  store i32 %643, i32* %42, align 4
  %644 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %645 = call i32 @r_Prefix_Step3a_Noun(%struct.SN_env* %644)
  store i32 %645, i32* %43, align 4
  %646 = load i32, i32* %43, align 4
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %649

648:                                              ; preds = %640
  br label %655

649:                                              ; preds = %640
  %650 = load i32, i32* %43, align 4
  %651 = icmp slt i32 %650, 0
  br i1 %651, label %652, label %654

652:                                              ; preds = %649
  %653 = load i32, i32* %43, align 4
  store i32 %653, i32* %2, align 4
  br label %736

654:                                              ; preds = %649
  br label %719

655:                                              ; preds = %648
  %656 = load i32, i32* %42, align 4
  %657 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %658 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %657, i32 0, i32 1
  store i32 %656, i32* %658, align 8
  %659 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %660 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %659, i32 0, i32 0
  %661 = load i32*, i32** %660, align 8
  %662 = getelementptr inbounds i32, i32* %661, i64 0
  %663 = load i32, i32* %662, align 4
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %666, label %665

665:                                              ; preds = %655
  br label %678

666:                                              ; preds = %655
  %667 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %668 = call i32 @r_Prefix_Step3b_Noun(%struct.SN_env* %667)
  store i32 %668, i32* %44, align 4
  %669 = load i32, i32* %44, align 4
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %672

671:                                              ; preds = %666
  br label %678

672:                                              ; preds = %666
  %673 = load i32, i32* %44, align 4
  %674 = icmp slt i32 %673, 0
  br i1 %674, label %675, label %677

675:                                              ; preds = %672
  %676 = load i32, i32* %44, align 4
  store i32 %676, i32* %2, align 4
  br label %736

677:                                              ; preds = %672
  br label %719

678:                                              ; preds = %671, %665
  %679 = load i32, i32* %42, align 4
  %680 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %681 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %680, i32 0, i32 1
  store i32 %679, i32* %681, align 8
  %682 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %683 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %682, i32 0, i32 0
  %684 = load i32*, i32** %683, align 8
  %685 = getelementptr inbounds i32, i32* %684, i64 1
  %686 = load i32, i32* %685, align 4
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %689, label %688

688:                                              ; preds = %678
  br label %720

689:                                              ; preds = %678
  %690 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %691 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %690, i32 0, i32 1
  %692 = load i32, i32* %691, align 8
  store i32 %692, i32* %45, align 4
  %693 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %694 = call i32 @r_Prefix_Step3_Verb(%struct.SN_env* %693)
  store i32 %694, i32* %46, align 4
  %695 = load i32, i32* %46, align 4
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %701

697:                                              ; preds = %689
  %698 = load i32, i32* %45, align 4
  %699 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %700 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %699, i32 0, i32 1
  store i32 %698, i32* %700, align 8
  br label %707

701:                                              ; preds = %689
  %702 = load i32, i32* %46, align 4
  %703 = icmp slt i32 %702, 0
  br i1 %703, label %704, label %706

704:                                              ; preds = %701
  %705 = load i32, i32* %46, align 4
  store i32 %705, i32* %2, align 4
  br label %736

706:                                              ; preds = %701
  br label %707

707:                                              ; preds = %706, %697
  %708 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %709 = call i32 @r_Prefix_Step4_Verb(%struct.SN_env* %708)
  store i32 %709, i32* %47, align 4
  %710 = load i32, i32* %47, align 4
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %712, label %713

712:                                              ; preds = %707
  br label %720

713:                                              ; preds = %707
  %714 = load i32, i32* %47, align 4
  %715 = icmp slt i32 %714, 0
  br i1 %715, label %716, label %718

716:                                              ; preds = %713
  %717 = load i32, i32* %47, align 4
  store i32 %717, i32* %2, align 4
  br label %736

718:                                              ; preds = %713
  br label %719

719:                                              ; preds = %718, %677, %654
  br label %720

720:                                              ; preds = %719, %712, %688
  %721 = load i32, i32* %37, align 4
  %722 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %723 = getelementptr inbounds %struct.SN_env, %struct.SN_env* %722, i32 0, i32 1
  store i32 %721, i32* %723, align 8
  %724 = load %struct.SN_env*, %struct.SN_env** %3, align 8
  %725 = call i32 @r_Normalize_post(%struct.SN_env* %724)
  store i32 %725, i32* %48, align 4
  %726 = load i32, i32* %48, align 4
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %729

728:                                              ; preds = %720
  br label %735

729:                                              ; preds = %720
  %730 = load i32, i32* %48, align 4
  %731 = icmp slt i32 %730, 0
  br i1 %731, label %732, label %734

732:                                              ; preds = %729
  %733 = load i32, i32* %48, align 4
  store i32 %733, i32* %2, align 4
  br label %736

734:                                              ; preds = %729
  br label %735

735:                                              ; preds = %734, %728
  store i32 1, i32* %2, align 4
  br label %736

736:                                              ; preds = %735, %732, %716, %704, %675, %652, %637, %619, %585, %566, %553, %527, %498, %479, %460, %441, %396, %377, %358, %339, %311, %267, %248, %203, %184, %150, %87, %72
  %737 = load i32, i32* %2, align 4
  ret i32 %737
}

declare dso_local i32 @r_Checks1(%struct.SN_env*) #1

declare dso_local i32 @r_Normalize_pre(%struct.SN_env*) #1

declare dso_local i32 @r_Suffix_Verb_Step1(%struct.SN_env*) #1

declare dso_local i32 @r_Suffix_Verb_Step2a(%struct.SN_env*) #1

declare dso_local i32 @r_Suffix_Verb_Step2c(%struct.SN_env*) #1

declare dso_local i32 @skip_utf8(i32, i32, i32, i32, i32) #1

declare dso_local i32 @r_Suffix_Verb_Step2b(%struct.SN_env*) #1

declare dso_local i32 @r_Suffix_Noun_Step2c2(%struct.SN_env*) #1

declare dso_local i32 @r_Suffix_Noun_Step1a(%struct.SN_env*) #1

declare dso_local i32 @r_Suffix_Noun_Step2a(%struct.SN_env*) #1

declare dso_local i32 @r_Suffix_Noun_Step2b(%struct.SN_env*) #1

declare dso_local i32 @r_Suffix_Noun_Step2c1(%struct.SN_env*) #1

declare dso_local i32 @r_Suffix_Noun_Step1b(%struct.SN_env*) #1

declare dso_local i32 @r_Suffix_Noun_Step3(%struct.SN_env*) #1

declare dso_local i32 @r_Suffix_All_alef_maqsura(%struct.SN_env*) #1

declare dso_local i32 @r_Prefix_Step1(%struct.SN_env*) #1

declare dso_local i32 @r_Prefix_Step2(%struct.SN_env*) #1

declare dso_local i32 @r_Prefix_Step3a_Noun(%struct.SN_env*) #1

declare dso_local i32 @r_Prefix_Step3b_Noun(%struct.SN_env*) #1

declare dso_local i32 @r_Prefix_Step3_Verb(%struct.SN_env*) #1

declare dso_local i32 @r_Prefix_Step4_Verb(%struct.SN_env*) #1

declare dso_local i32 @r_Normalize_post(%struct.SN_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
