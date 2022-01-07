; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_filter_SDH.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_filter_SDH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.buffer = type { i8*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"SDH filtering not possible - format missing\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"SDH filtering not possible - cannot find text field\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @filter_SDH(%struct.sd* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.buffer, align 8
  %16 = alloca %struct.buffer*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %5
  %27 = load %struct.sd*, %struct.sd** %7, align 8
  %28 = call i32 @MP_VERBOSE(%struct.sd* %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i8* @talloc_strndup(i32* null, i8* %32, i32 %33)
  br label %38

35:                                               ; preds = %26
  %36 = load i8*, i8** %10, align 8
  %37 = call i8* @talloc_strdup(i32* null, i8* %36)
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i8* [ %34, %31 ], [ %37, %35 ]
  store i8* %39, i8** %6, align 8
  br label %349

40:                                               ; preds = %5
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i8* @talloc_strndup(i32* null, i8* %44, i32 %45)
  br label %49

47:                                               ; preds = %40
  %48 = load i8*, i8** %10, align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i8* [ %46, %43 ], [ %48, %47 ]
  store i8* %50, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %51 = load i8*, i8** %8, align 8
  store i8* %51, i8** %14, align 8
  br label %52

52:                                               ; preds = %71, %49
  %53 = load i8*, i8** %14, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i8*, i8** %14, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 44
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = call i64 @strncasecmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %74

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %14, align 8
  br label %52

74:                                               ; preds = %68, %52
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %13, align 4
  store %struct.buffer* %15, %struct.buffer** %16, align 8
  %78 = load %struct.buffer*, %struct.buffer** %16, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i64 @strlen(i8* %79)
  %81 = add nsw i64 %80, 1
  %82 = call i32 @init_buf(%struct.buffer* %78, i64 %81)
  %83 = load i8*, i8** %12, align 8
  store i8* %83, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %108, %74
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %106, %88
  %90 = load i8*, i8** %17, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load %struct.sd*, %struct.sd** %7, align 8
  %95 = load %struct.buffer*, %struct.buffer** %16, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = call signext i8 @append(%struct.sd* %94, %struct.buffer* %95, i8 signext %98)
  store i8 %99, i8* %19, align 1
  %100 = load i8*, i8** %17, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %17, align 8
  %102 = load i8, i8* %19, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 44
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %107

106:                                              ; preds = %93
  br label %89

107:                                              ; preds = %105, %89
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %18, align 4
  br label %84

111:                                              ; preds = %84
  %112 = load i8*, i8** %17, align 8
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %131, label %115

115:                                              ; preds = %111
  %116 = load %struct.buffer*, %struct.buffer** %16, align 8
  %117 = getelementptr inbounds %struct.buffer, %struct.buffer* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @talloc_free(i8* %118)
  %120 = load %struct.sd*, %struct.sd** %7, align 8
  %121 = call i32 @MP_VERBOSE(%struct.sd* %120, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i8*, i8** %12, align 8
  br label %129

126:                                              ; preds = %115
  %127 = load i8*, i8** %12, align 8
  %128 = call i8* @talloc_strdup(i32* null, i8* %127)
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi i8* [ %125, %124 ], [ %128, %126 ]
  store i8* %130, i8** %6, align 8
  br label %349

131:                                              ; preds = %111
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %132 = load %struct.buffer*, %struct.buffer** %16, align 8
  %133 = getelementptr inbounds %struct.buffer, %struct.buffer* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %22, align 4
  %135 = load %struct.buffer*, %struct.buffer** %16, align 8
  %136 = getelementptr inbounds %struct.buffer, %struct.buffer* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %23, align 4
  br label %138

138:                                              ; preds = %319, %131
  %139 = load i8*, i8** %17, align 8
  %140 = load i8, i8* %139, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %320

142:                                              ; preds = %138
  store i32 0, i32* %21, align 4
  %143 = load %struct.buffer*, %struct.buffer** %16, align 8
  %144 = getelementptr inbounds %struct.buffer, %struct.buffer* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %22, align 4
  %146 = load %struct.sd*, %struct.sd** %7, align 8
  %147 = load %struct.buffer*, %struct.buffer** %16, align 8
  %148 = call i32 @skip_speaker_label(%struct.sd* %146, i8** %17, %struct.buffer* %147)
  br label %149

149:                                              ; preds = %285, %142
  %150 = load i8*, i8** %17, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %169

154:                                              ; preds = %149
  %155 = load i8*, i8** %17, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 92
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load i8*, i8** %17, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 78
  br label %166

166:                                              ; preds = %160, %154
  %167 = phi i1 [ false, %154 ], [ %165, %160 ]
  %168 = xor i1 %167, true
  br label %169

169:                                              ; preds = %166, %149
  %170 = phi i1 [ false, %149 ], [ %168, %166 ]
  br i1 %170, label %171, label %286

171:                                              ; preds = %169
  %172 = load %struct.sd*, %struct.sd** %7, align 8
  %173 = load %struct.buffer*, %struct.buffer** %16, align 8
  %174 = call i32 @copy_ass(%struct.sd* %172, i8** %17, %struct.buffer* %173)
  %175 = load i8*, i8** %17, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 91
  br i1 %179, label %180, label %195

180:                                              ; preds = %171
  %181 = load %struct.sd*, %struct.sd** %7, align 8
  %182 = load %struct.buffer*, %struct.buffer** %16, align 8
  %183 = call i32 @skip_bracketed(%struct.sd* %181, i8** %17, %struct.buffer* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %180
  %186 = load %struct.sd*, %struct.sd** %7, align 8
  %187 = load %struct.buffer*, %struct.buffer** %16, align 8
  %188 = load i8*, i8** %17, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = call signext i8 @append(%struct.sd* %186, %struct.buffer* %187, i8 signext %190)
  %192 = load i8*, i8** %17, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %17, align 8
  store i32 1, i32* %21, align 4
  br label %194

194:                                              ; preds = %185, %180
  br label %285

195:                                              ; preds = %171
  %196 = load i8*, i8** %17, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 40
  br i1 %200, label %201, label %216

201:                                              ; preds = %195
  %202 = load %struct.sd*, %struct.sd** %7, align 8
  %203 = load %struct.buffer*, %struct.buffer** %16, align 8
  %204 = call i32 @skip_parenthesed(%struct.sd* %202, i8** %17, %struct.buffer* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %201
  %207 = load %struct.sd*, %struct.sd** %7, align 8
  %208 = load %struct.buffer*, %struct.buffer** %16, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 0
  %211 = load i8, i8* %210, align 1
  %212 = call signext i8 @append(%struct.sd* %207, %struct.buffer* %208, i8 signext %211)
  %213 = load i8*, i8** %17, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %17, align 8
  store i32 1, i32* %21, align 4
  br label %215

215:                                              ; preds = %206, %201
  br label %284

216:                                              ; preds = %195
  %217 = load i8*, i8** %17, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %261

221:                                              ; preds = %216
  %222 = load i8*, i8** %17, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 0
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %225, 92
  br i1 %226, label %227, label %261

227:                                              ; preds = %221
  %228 = load i8*, i8** %17, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 0
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp sgt i32 %231, 32
  br i1 %232, label %233, label %245

233:                                              ; preds = %227
  %234 = load i8*, i8** %17, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp slt i32 %237, 127
  br i1 %238, label %239, label %245

239:                                              ; preds = %233
  %240 = load i8*, i8** %17, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 0
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %243, 45
  br i1 %244, label %251, label %245

245:                                              ; preds = %239, %233, %227
  %246 = load i8*, i8** %17, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp sge i32 %249, 192
  br i1 %250, label %251, label %252

251:                                              ; preds = %245, %239
  store i32 1, i32* %21, align 4
  br label %252

252:                                              ; preds = %251, %245
  %253 = load %struct.sd*, %struct.sd** %7, align 8
  %254 = load %struct.buffer*, %struct.buffer** %16, align 8
  %255 = load i8*, i8** %17, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = call signext i8 @append(%struct.sd* %253, %struct.buffer* %254, i8 signext %257)
  %259 = load i8*, i8** %17, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %17, align 8
  br label %283

261:                                              ; preds = %221, %216
  %262 = load i8*, i8** %17, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 92
  br i1 %266, label %267, label %282

267:                                              ; preds = %261
  %268 = load i8*, i8** %17, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp ne i32 %271, 78
  br i1 %272, label %273, label %282

273:                                              ; preds = %267
  %274 = load %struct.sd*, %struct.sd** %7, align 8
  %275 = load %struct.buffer*, %struct.buffer** %16, align 8
  %276 = load i8*, i8** %17, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 0
  %278 = load i8, i8* %277, align 1
  %279 = call signext i8 @append(%struct.sd* %274, %struct.buffer* %275, i8 signext %278)
  %280 = load i8*, i8** %17, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %17, align 8
  br label %282

282:                                              ; preds = %273, %267, %261
  br label %283

283:                                              ; preds = %282, %252
  br label %284

284:                                              ; preds = %283, %215
  br label %285

285:                                              ; preds = %284, %194
  br label %149

286:                                              ; preds = %169
  %287 = load i8*, i8** %17, align 8
  %288 = load i8, i8* %287, align 1
  %289 = icmp ne i8 %288, 0
  br i1 %289, label %290, label %319

290:                                              ; preds = %286
  %291 = load i32, i32* %21, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %311

293:                                              ; preds = %290
  store i32 1, i32* %20, align 4
  %294 = load %struct.buffer*, %struct.buffer** %16, align 8
  %295 = getelementptr inbounds %struct.buffer, %struct.buffer* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  store i32 %296, i32* %23, align 4
  %297 = load %struct.sd*, %struct.sd** %7, align 8
  %298 = load %struct.buffer*, %struct.buffer** %16, align 8
  %299 = load i8*, i8** %17, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 0
  %301 = load i8, i8* %300, align 1
  %302 = call signext i8 @append(%struct.sd* %297, %struct.buffer* %298, i8 signext %301)
  %303 = load %struct.sd*, %struct.sd** %7, align 8
  %304 = load %struct.buffer*, %struct.buffer** %16, align 8
  %305 = load i8*, i8** %17, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 1
  %307 = load i8, i8* %306, align 1
  %308 = call signext i8 @append(%struct.sd* %303, %struct.buffer* %304, i8 signext %307)
  %309 = load i8*, i8** %17, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 2
  store i8* %310, i8** %17, align 8
  br label %318

311:                                              ; preds = %290
  %312 = load %struct.sd*, %struct.sd** %7, align 8
  %313 = load i32, i32* %22, align 4
  %314 = load %struct.buffer*, %struct.buffer** %16, align 8
  %315 = call i32 @remove_leading_hyphen_space(%struct.sd* %312, i32 %313, %struct.buffer* %314)
  %316 = load i8*, i8** %17, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 2
  store i8* %317, i8** %17, align 8
  br label %318

318:                                              ; preds = %311, %293
  br label %319

319:                                              ; preds = %318, %286
  br label %138

320:                                              ; preds = %138
  %321 = load i32, i32* %21, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %320
  %324 = load i32, i32* %23, align 4
  %325 = load %struct.buffer*, %struct.buffer** %16, align 8
  %326 = getelementptr inbounds %struct.buffer, %struct.buffer* %325, i32 0, i32 1
  store i32 %324, i32* %326, align 8
  br label %328

327:                                              ; preds = %320
  store i32 1, i32* %20, align 4
  br label %328

328:                                              ; preds = %327, %323
  %329 = load i32, i32* %11, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load i8*, i8** %12, align 8
  %333 = call i32 @talloc_free(i8* %332)
  br label %334

334:                                              ; preds = %331, %328
  %335 = load i32, i32* %20, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %334
  %338 = load %struct.sd*, %struct.sd** %7, align 8
  %339 = load %struct.buffer*, %struct.buffer** %16, align 8
  %340 = call signext i8 @append(%struct.sd* %338, %struct.buffer* %339, i8 signext 0)
  %341 = load %struct.buffer*, %struct.buffer** %16, align 8
  %342 = getelementptr inbounds %struct.buffer, %struct.buffer* %341, i32 0, i32 0
  %343 = load i8*, i8** %342, align 8
  store i8* %343, i8** %6, align 8
  br label %349

344:                                              ; preds = %334
  %345 = load %struct.buffer*, %struct.buffer** %16, align 8
  %346 = getelementptr inbounds %struct.buffer, %struct.buffer* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = call i32 @talloc_free(i8* %347)
  store i8* null, i8** %6, align 8
  br label %349

349:                                              ; preds = %344, %337, %129, %38
  %350 = load i8*, i8** %6, align 8
  ret i8* %350
}

declare dso_local i32 @MP_VERBOSE(%struct.sd*, i8*) #1

declare dso_local i8* @talloc_strndup(i32*, i8*, i32) #1

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @init_buf(%struct.buffer*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @append(%struct.sd*, %struct.buffer*, i8 signext) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @skip_speaker_label(%struct.sd*, i8**, %struct.buffer*) #1

declare dso_local i32 @copy_ass(%struct.sd*, i8**, %struct.buffer*) #1

declare dso_local i32 @skip_bracketed(%struct.sd*, i8**, %struct.buffer*) #1

declare dso_local i32 @skip_parenthesed(%struct.sd*, i8**, %struct.buffer*) #1

declare dso_local i32 @remove_leading_hyphen_space(%struct.sd*, i32, %struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
