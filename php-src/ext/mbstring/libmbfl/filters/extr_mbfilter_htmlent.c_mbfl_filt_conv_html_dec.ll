; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_htmlent.c_mbfl_filt_conv_html_dec.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_htmlent.c_mbfl_filt_conv_html_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 (i32, i32)*, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@mbfl_html_entity_list = common dso_local global i64 0, align 8
@html_entity_chars = common dso_local global i32 0, align 4
@html_enc_buffer_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_html_dec(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 38
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 38, i8* %26, align 1
  br label %37

27:                                               ; preds = %19
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %30(i32 %31, i32 %34)
  %36 = call i32 @CK(i32 %35)
  br label %37

37:                                               ; preds = %27, %22
  br label %339

38:                                               ; preds = %2
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 59
  br i1 %40, label %41, label %280

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %47, label %218

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 2
  br i1 %51, label %52, label %125

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 120
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 88
  br i1 %63, label %64, label %125

64:                                               ; preds = %58, %52
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 3
  br i1 %68, label %69, label %123

69:                                               ; preds = %64
  store i32 3, i32* %5, align 4
  br label %70

70:                                               ; preds = %119, %69
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %122

76:                                               ; preds = %70
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp sge i32 %83, 48
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  %87 = icmp sle i32 %86, 57
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %89, 48
  store i32 %90, i32* %9, align 4
  br label %114

91:                                               ; preds = %85, %76
  %92 = load i32, i32* %9, align 4
  %93 = icmp sge i32 %92, 65
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = icmp sle i32 %95, 70
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, 65
  %100 = add nsw i32 %99, 10
  store i32 %100, i32* %9, align 4
  br label %113

101:                                              ; preds = %94, %91
  %102 = load i32, i32* %9, align 4
  %103 = icmp sge i32 %102, 97
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = icmp sle i32 %105, 102
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, 97
  %110 = add nsw i32 %109, 10
  store i32 %110, i32* %9, align 4
  br label %112

111:                                              ; preds = %104, %101
  store i32 -1, i32* %6, align 4
  br label %122

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %97
  br label %114

114:                                              ; preds = %113, %88
  %115 = load i32, i32* %6, align 4
  %116 = mul nsw i32 %115, 16
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %70

122:                                              ; preds = %111, %70
  br label %124

123:                                              ; preds = %64
  store i32 -1, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %122
  br label %164

125:                                              ; preds = %58, %47
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 2
  br i1 %129, label %130, label %162

130:                                              ; preds = %125
  store i32 2, i32* %5, align 4
  br label %131

131:                                              ; preds = %158, %130
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %161

137:                                              ; preds = %131
  %138 = load i8*, i8** %8, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp sge i32 %144, 48
  br i1 %145, label %146, label %152

146:                                              ; preds = %137
  %147 = load i32, i32* %10, align 4
  %148 = icmp sle i32 %147, 57
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %10, align 4
  %151 = sub nsw i32 %150, 48
  store i32 %151, i32* %10, align 4
  br label %153

152:                                              ; preds = %146, %137
  store i32 -1, i32* %6, align 4
  br label %161

153:                                              ; preds = %149
  %154 = load i32, i32* %6, align 4
  %155 = mul nsw i32 %154, 10
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %155, %156
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %5, align 4
  br label %131

161:                                              ; preds = %152, %131
  br label %163

162:                                              ; preds = %125
  store i32 -1, i32* %6, align 4
  br label %163

163:                                              ; preds = %162, %161
  br label %164

164:                                              ; preds = %163, %124
  %165 = load i32, i32* %6, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 1114112
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i32 (i32, i32)*, i32 (i32, i32)** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 %173(i32 %174, i32 %177)
  %179 = call i32 @CK(i32 %178)
  br label %215

180:                                              ; preds = %167, %164
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %202, %180
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %205

187:                                              ; preds = %181
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 2
  %190 = load i32 (i32, i32)*, i32 (i32, i32)** %189, align 8
  %191 = load i8*, i8** %8, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 %190(i32 %196, i32 %199)
  %201 = call i32 @CK(i32 %200)
  br label %202

202:                                              ; preds = %187
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %181

205:                                              ; preds = %181
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = load i32 (i32, i32)*, i32 (i32, i32)** %207, align 8
  %209 = load i32, i32* %3, align 4
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 %208(i32 %209, i32 %212)
  %214 = call i32 @CK(i32 %213)
  br label %215

215:                                              ; preds = %205, %170
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  store i32 0, i32* %217, align 8
  br label %279

218:                                              ; preds = %41
  %219 = load i8*, i8** %8, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %219, i64 %223
  store i8 0, i8* %224, align 1
  %225 = load i64, i64* @mbfl_html_entity_list, align 8
  %226 = inttoptr i64 %225 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %226, %struct.TYPE_5__** %7, align 8
  br label %227

227:                                              ; preds = %244, %218
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %227
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @strcmp(i8* %234, i64 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %232
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  store i32 %243, i32* %6, align 4
  br label %247

244:                                              ; preds = %232
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 1
  store %struct.TYPE_5__* %246, %struct.TYPE_5__** %7, align 8
  br label %227

247:                                              ; preds = %240, %227
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %247
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 2
  %253 = load i32 (i32, i32)*, i32 (i32, i32)** %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 %253(i32 %254, i32 %257)
  %259 = call i32 @CK(i32 %258)
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  store i32 0, i32* %261, align 8
  br label %278

262:                                              ; preds = %247
  %263 = load i8*, i8** %8, align 8
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i8, i8* %263, i64 %268
  store i8 59, i8* %269, align 1
  %270 = load i8*, i8** %8, align 8
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %270, i64 %274
  store i8 0, i8* %275, align 1
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %277 = call i32 @mbfl_filt_conv_html_dec_flush(%struct.TYPE_6__* %276)
  br label %278

278:                                              ; preds = %262, %250
  br label %279

279:                                              ; preds = %278, %215
  br label %338

280:                                              ; preds = %38
  %281 = load i32, i32* %3, align 4
  %282 = trunc i32 %281 to i8
  %283 = load i8*, i8** %8, align 8
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i8, i8* %283, i64 %288
  store i8 %282, i8* %289, align 1
  %290 = load i32, i32* @html_entity_chars, align 4
  %291 = load i32, i32* %3, align 4
  %292 = call i32 @strchr(i32 %290, i32 %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %309

294:                                              ; preds = %280
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  %299 = load i32, i32* @html_enc_buffer_size, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %309, label %301

301:                                              ; preds = %294
  %302 = load i32, i32* %3, align 4
  %303 = icmp eq i32 %302, 35
  br i1 %303, label %304, label %337

304:                                              ; preds = %301
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp sgt i32 %307, 2
  br i1 %308, label %309, label %337

309:                                              ; preds = %304, %294, %280
  %310 = load i32, i32* %3, align 4
  %311 = icmp eq i32 %310, 38
  br i1 %311, label %312, label %317

312:                                              ; preds = %309
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %314, align 8
  br label %317

317:                                              ; preds = %312, %309
  %318 = load i8*, i8** %8, align 8
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %318, i64 %322
  store i8 0, i8* %323, align 1
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %325 = call i32 @mbfl_filt_conv_html_dec_flush(%struct.TYPE_6__* %324)
  %326 = load i32, i32* %3, align 4
  %327 = icmp eq i32 %326, 38
  br i1 %327, label %328, label %336

328:                                              ; preds = %317
  %329 = load i8*, i8** %8, align 8
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 8
  %334 = sext i32 %332 to i64
  %335 = getelementptr inbounds i8, i8* %329, i64 %334
  store i8 38, i8* %335, align 1
  br label %336

336:                                              ; preds = %328, %317
  br label %337

337:                                              ; preds = %336, %304, %301
  br label %338

338:                                              ; preds = %337, %279
  br label %339

339:                                              ; preds = %338, %37
  %340 = load i32, i32* %3, align 4
  ret i32 %340
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @mbfl_filt_conv_html_dec_flush(%struct.TYPE_6__*) #1

declare dso_local i32 @strchr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
