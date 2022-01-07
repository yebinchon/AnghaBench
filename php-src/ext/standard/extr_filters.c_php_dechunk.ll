; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_dechunk.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_dechunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.TYPE_3__*)* @php_dechunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @php_dechunk(i8* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %347, %322, %319, %314, %202, %189, %124, %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %348

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %347 [
    i32 129, label %25
    i32 133, label %28
    i32 131, label %133
    i32 132, label %160
    i32 130, label %177
    i32 137, label %206
    i32 136, label %292
    i32 135, label %309
    i32 128, label %322
    i32 134, label %324
  ]

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %25
  br label %29

29:                                               ; preds = %114, %28
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %119

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sge i32 %36, 48
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 16
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 48
  %52 = add nsw i32 %47, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %114

55:                                               ; preds = %38, %33
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sge i32 %58, 65
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 %63, 70
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 16
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = sub nsw i32 %72, 65
  %74 = add nsw i32 %73, 10
  %75 = add nsw i32 %69, %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %113

78:                                               ; preds = %60, %55
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sge i32 %81, 97
  br i1 %82, label %83, label %101

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sle i32 %86, 102
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 16
  %93 = load i8*, i8** %8, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = sub nsw i32 %95, 97
  %97 = add nsw i32 %96, 10
  %98 = add nsw i32 %92, %97
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %112

101:                                              ; preds = %83, %78
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 129
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i32 134, i32* %108, align 4
  br label %119

109:                                              ; preds = %101
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i32 131, i32* %111, align 4
  br label %119

112:                                              ; preds = %88
  br label %113

113:                                              ; preds = %112, %65
  br label %114

114:                                              ; preds = %113, %43
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32 133, i32* %116, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %8, align 8
  br label %29

119:                                              ; preds = %109, %106, %29
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 134
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %17

125:                                              ; preds = %119
  %126 = load i8*, i8** %8, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = icmp eq i8* %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i64, i64* %11, align 8
  store i64 %130, i64* %4, align 8
  br label %350

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %21, %132
  br label %134

134:                                              ; preds = %150, %133
  %135 = load i8*, i8** %8, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = icmp ult i8* %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 13
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i8*, i8** %8, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 10
  br label %148

148:                                              ; preds = %143, %138, %134
  %149 = phi i1 [ false, %138 ], [ false, %134 ], [ %147, %143 ]
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %8, align 8
  br label %134

153:                                              ; preds = %148
  %154 = load i8*, i8** %8, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = icmp eq i8* %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i64, i64* %11, align 8
  store i64 %158, i64* %4, align 8
  br label %350

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %21, %159
  %161 = load i8*, i8** %8, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 13
  br i1 %164, label %165, label %176

165:                                              ; preds = %160
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %8, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = load i8*, i8** %9, align 8
  %170 = icmp eq i8* %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i32 130, i32* %173, align 4
  %174 = load i64, i64* %11, align 8
  store i64 %174, i64* %4, align 8
  br label %350

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175, %160
  br label %177

177:                                              ; preds = %21, %176
  %178 = load i8*, i8** %8, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 10
  br i1 %181, label %182, label %202

182:                                              ; preds = %177
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %8, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  store i32 128, i32* %191, align 4
  br label %17

192:                                              ; preds = %182
  %193 = load i8*, i8** %8, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = icmp eq i8* %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  store i32 137, i32* %198, align 4
  %199 = load i64, i64* %11, align 8
  store i64 %199, i64* %4, align 8
  br label %350

200:                                              ; preds = %192
  br label %201

201:                                              ; preds = %200
  br label %205

202:                                              ; preds = %177
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  store i32 134, i32* %204, align 4
  br label %17

205:                                              ; preds = %201
  br label %206

206:                                              ; preds = %21, %205
  %207 = load i8*, i8** %9, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = ptrtoint i8* %207 to i64
  %210 = ptrtoint i8* %208 to i64
  %211 = sub i64 %209, %210
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = icmp uge i64 %211, %215
  br i1 %216, label %217, label %255

217:                                              ; preds = %206
  %218 = load i8*, i8** %8, align 8
  %219 = load i8*, i8** %10, align 8
  %220 = icmp ne i8* %218, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %217
  %222 = load i8*, i8** %10, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @memmove(i8* %222, i8* %223, i32 %226)
  br label %228

228:                                              ; preds = %221, %217
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i8*, i8** %10, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i8, i8* %232, i64 %233
  store i8* %234, i8** %10, align 8
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* %11, align 8
  %240 = add i64 %239, %238
  store i64 %240, i64* %11, align 8
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i8*, i8** %8, align 8
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8* %246, i8** %8, align 8
  %247 = load i8*, i8** %8, align 8
  %248 = load i8*, i8** %9, align 8
  %249 = icmp eq i8* %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %228
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  store i32 136, i32* %252, align 4
  %253 = load i64, i64* %11, align 8
  store i64 %253, i64* %4, align 8
  br label %350

254:                                              ; preds = %228
  br label %291

255:                                              ; preds = %206
  %256 = load i8*, i8** %8, align 8
  %257 = load i8*, i8** %10, align 8
  %258 = icmp ne i8* %256, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %255
  %260 = load i8*, i8** %10, align 8
  %261 = load i8*, i8** %8, align 8
  %262 = load i8*, i8** %9, align 8
  %263 = load i8*, i8** %8, align 8
  %264 = ptrtoint i8* %262 to i64
  %265 = ptrtoint i8* %263 to i64
  %266 = sub i64 %264, %265
  %267 = trunc i64 %266 to i32
  %268 = call i32 @memmove(i8* %260, i8* %261, i32 %267)
  br label %269

269:                                              ; preds = %259, %255
  %270 = load i8*, i8** %9, align 8
  %271 = load i8*, i8** %8, align 8
  %272 = ptrtoint i8* %270 to i64
  %273 = ptrtoint i8* %271 to i64
  %274 = sub i64 %272, %273
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = sub nsw i64 %278, %274
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %276, align 4
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 0
  store i32 137, i32* %282, align 4
  %283 = load i8*, i8** %9, align 8
  %284 = load i8*, i8** %8, align 8
  %285 = ptrtoint i8* %283 to i64
  %286 = ptrtoint i8* %284 to i64
  %287 = sub i64 %285, %286
  %288 = load i64, i64* %11, align 8
  %289 = add i64 %288, %287
  store i64 %289, i64* %11, align 8
  %290 = load i64, i64* %11, align 8
  store i64 %290, i64* %4, align 8
  br label %350

291:                                              ; preds = %254
  br label %292

292:                                              ; preds = %21, %291
  %293 = load i8*, i8** %8, align 8
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp eq i32 %295, 13
  br i1 %296, label %297, label %308

297:                                              ; preds = %292
  %298 = load i8*, i8** %8, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %8, align 8
  %300 = load i8*, i8** %8, align 8
  %301 = load i8*, i8** %9, align 8
  %302 = icmp eq i8* %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %297
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 0
  store i32 135, i32* %305, align 4
  %306 = load i64, i64* %11, align 8
  store i64 %306, i64* %4, align 8
  br label %350

307:                                              ; preds = %297
  br label %308

308:                                              ; preds = %307, %292
  br label %309

309:                                              ; preds = %21, %308
  %310 = load i8*, i8** %8, align 8
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp eq i32 %312, 10
  br i1 %313, label %314, label %319

314:                                              ; preds = %309
  %315 = load i8*, i8** %8, align 8
  %316 = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %316, i8** %8, align 8
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  store i32 129, i32* %318, align 4
  br label %17

319:                                              ; preds = %309
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 0
  store i32 134, i32* %321, align 4
  br label %17

322:                                              ; preds = %21
  %323 = load i8*, i8** %9, align 8
  store i8* %323, i8** %8, align 8
  br label %17

324:                                              ; preds = %21
  %325 = load i8*, i8** %8, align 8
  %326 = load i8*, i8** %10, align 8
  %327 = icmp ne i8* %325, %326
  br i1 %327, label %328, label %338

328:                                              ; preds = %324
  %329 = load i8*, i8** %10, align 8
  %330 = load i8*, i8** %8, align 8
  %331 = load i8*, i8** %9, align 8
  %332 = load i8*, i8** %8, align 8
  %333 = ptrtoint i8* %331 to i64
  %334 = ptrtoint i8* %332 to i64
  %335 = sub i64 %333, %334
  %336 = trunc i64 %335 to i32
  %337 = call i32 @memmove(i8* %329, i8* %330, i32 %336)
  br label %338

338:                                              ; preds = %328, %324
  %339 = load i8*, i8** %9, align 8
  %340 = load i8*, i8** %8, align 8
  %341 = ptrtoint i8* %339 to i64
  %342 = ptrtoint i8* %340 to i64
  %343 = sub i64 %341, %342
  %344 = load i64, i64* %11, align 8
  %345 = add i64 %344, %343
  store i64 %345, i64* %11, align 8
  %346 = load i64, i64* %11, align 8
  store i64 %346, i64* %4, align 8
  br label %350

347:                                              ; preds = %21
  br label %17

348:                                              ; preds = %17
  %349 = load i64, i64* %11, align 8
  store i64 %349, i64* %4, align 8
  br label %350

350:                                              ; preds = %348, %338, %303, %269, %250, %196, %171, %157, %129
  %351 = load i64, i64* %4, align 8
  ret i64 %351
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
