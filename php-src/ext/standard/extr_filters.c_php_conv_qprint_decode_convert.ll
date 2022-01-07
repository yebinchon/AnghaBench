; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_qprint_decode_convert.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_qprint_decode_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64* }

@PHP_CONV_ERR_SUCCESS = common dso_local global i32 0, align 4
@PHP_CONV_ERR_UNEXPECTED_EOS = common dso_local global i32 0, align 4
@PHP_CONV_ERR_TOO_BIG = common dso_local global i32 0, align 4
@PHP_CONV_ERR_INVALID_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**, i64*, i8**, i64*)* @php_conv_qprint_decode_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_conv_qprint_decode_convert(%struct.TYPE_3__* %0, i8** %1, i64* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %21 = load i32, i32* @PHP_CONV_ERR_SUCCESS, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %19, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %20, align 4
  %28 = load i8**, i8*** %8, align 8
  %29 = icmp eq i8** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i64*, i64** %9, align 8
  %32 = icmp eq i64* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30, %5
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @PHP_CONV_ERR_UNEXPECTED_EOS, align 4
  store i32 %43, i32* %6, align 4
  br label %389

44:                                               ; preds = %37
  %45 = load i32, i32* @PHP_CONV_ERR_SUCCESS, align 4
  store i32 %45, i32* %6, align 4
  br label %389

46:                                               ; preds = %33, %30
  %47 = load i8**, i8*** %8, align 8
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %15, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load i8**, i8*** %10, align 8
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %16, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %14, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %17, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %366, %46
  %62 = load i32, i32* %17, align 4
  switch i32 %62, label %366 [
    i32 0, label %63
    i32 1, label %90
    i32 2, label %178
    i32 3, label %220
    i32 4, label %232
    i32 5, label %276
    i32 6, label %341
  ]

63:                                               ; preds = %61
  %64 = load i64, i64* %13, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %367

67:                                               ; preds = %63
  %68 = load i8*, i8** %15, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 61
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %17, align 4
  br label %85

73:                                               ; preds = %67
  %74 = load i64, i64* %14, align 8
  %75 = icmp ult i64 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store i32 %77, i32* %12, align 4
  br label %367

78:                                               ; preds = %73
  %79 = load i8*, i8** %15, align 8
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %16, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %16, align 8
  store i8 %80, i8* %81, align 1
  %83 = load i64, i64* %14, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %14, align 8
  br label %85

85:                                               ; preds = %78, %72
  %86 = load i8*, i8** %15, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %15, align 8
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %88, -1
  store i64 %89, i64* %13, align 8
  br label %366

90:                                               ; preds = %61
  %91 = load i64, i64* %13, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %367

94:                                               ; preds = %90
  %95 = load i8*, i8** %15, align 8
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %15, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 9
  br i1 %103, label %104, label %109

104:                                              ; preds = %99, %94
  store i32 4, i32* %17, align 4
  %105 = load i8*, i8** %15, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %15, align 8
  %107 = load i64, i64* %13, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %13, align 8
  br label %366

109:                                              ; preds = %99
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 5
  %112 = load i64*, i64** %111, align 8
  %113 = icmp ne i64* %112, null
  br i1 %113, label %129, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %20, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load i8*, i8** %15, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 13
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load i32, i32* %20, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %20, align 4
  store i32 5, i32* %17, align 4
  %125 = load i8*, i8** %15, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %15, align 8
  %127 = load i64, i64* %13, align 8
  %128 = add i64 %127, -1
  store i64 %128, i64* %13, align 8
  br label %366

129:                                              ; preds = %117, %114, %109
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 5
  %132 = load i64*, i64** %131, align 8
  %133 = icmp ne i64* %132, null
  br i1 %133, label %147, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %20, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load i8*, i8** %15, align 8
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 10
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  %143 = load i8*, i8** %15, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %15, align 8
  %145 = load i64, i64* %13, align 8
  %146 = add i64 %145, -1
  store i64 %146, i64* %13, align 8
  br label %366

147:                                              ; preds = %137, %134, %129
  %148 = load i32, i32* %20, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = icmp ult i32 %148, %151
  br i1 %152, label %153, label %174

153:                                              ; preds = %147
  %154 = load i8*, i8** %15, align 8
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 5
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %20, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i8
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %156, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %153
  %168 = load i32, i32* %20, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %20, align 4
  store i32 5, i32* %17, align 4
  %170 = load i8*, i8** %15, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %15, align 8
  %172 = load i64, i64* %13, align 8
  %173 = add i64 %172, -1
  store i64 %173, i64* %13, align 8
  br label %366

174:                                              ; preds = %153, %147
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %61, %177
  %179 = load i64, i64* %13, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %367

182:                                              ; preds = %178
  %183 = load i8*, i8** %15, align 8
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = call i32 @isxdigit(i32 %185) #2
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %182
  %189 = load i32, i32* @PHP_CONV_ERR_INVALID_SEQ, align 4
  store i32 %189, i32* %12, align 4
  br label %367

190:                                              ; preds = %182
  %191 = load i32, i32* %18, align 4
  %192 = shl i32 %191, 4
  %193 = load i8*, i8** %15, align 8
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp sge i32 %195, 65
  br i1 %196, label %197, label %202

197:                                              ; preds = %190
  %198 = load i8*, i8** %15, align 8
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = sub nsw i32 %200, 55
  br label %207

202:                                              ; preds = %190
  %203 = load i8*, i8** %15, align 8
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = sub nsw i32 %205, 48
  br label %207

207:                                              ; preds = %202, %197
  %208 = phi i32 [ %201, %197 ], [ %206, %202 ]
  %209 = or i32 %192, %208
  store i32 %209, i32* %18, align 4
  %210 = load i32, i32* %17, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %17, align 4
  %212 = load i8*, i8** %15, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %15, align 8
  %214 = load i64, i64* %13, align 8
  %215 = add i64 %214, -1
  store i64 %215, i64* %13, align 8
  %216 = load i32, i32* %17, align 4
  %217 = icmp ne i32 %216, 3
  br i1 %217, label %218, label %219

218:                                              ; preds = %207
  br label %366

219:                                              ; preds = %207
  br label %220

220:                                              ; preds = %61, %219
  %221 = load i64, i64* %14, align 8
  %222 = icmp ult i64 %221, 1
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store i32 %224, i32* %12, align 4
  br label %367

225:                                              ; preds = %220
  %226 = load i32, i32* %18, align 4
  %227 = trunc i32 %226 to i8
  %228 = load i8*, i8** %16, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %16, align 8
  store i8 %227, i8* %228, align 1
  %230 = load i64, i64* %14, align 8
  %231 = add i64 %230, -1
  store i64 %231, i64* %14, align 8
  store i32 0, i32* %17, align 4
  br label %366

232:                                              ; preds = %61
  %233 = load i64, i64* %13, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  br label %367

236:                                              ; preds = %232
  %237 = load i32, i32* %20, align 4
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = icmp ult i32 %237, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %236
  %243 = load i8*, i8** %15, align 8
  %244 = load i8, i8* %243, align 1
  %245 = zext i8 %244 to i32
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 5
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* %20, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i8
  %254 = zext i8 %253 to i32
  %255 = icmp eq i32 %245, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %242
  %257 = load i32, i32* %20, align 4
  %258 = add i32 %257, 1
  store i32 %258, i32* %20, align 4
  store i32 5, i32* %17, align 4
  br label %259

259:                                              ; preds = %256, %242, %236
  %260 = load i8*, i8** %15, align 8
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = icmp ne i32 %262, 9
  br i1 %263, label %264, label %271

264:                                              ; preds = %259
  %265 = load i8*, i8** %15, align 8
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp ne i32 %267, 32
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = load i32, i32* @PHP_CONV_ERR_INVALID_SEQ, align 4
  store i32 %270, i32* %12, align 4
  br label %367

271:                                              ; preds = %264, %259
  %272 = load i8*, i8** %15, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %15, align 8
  %274 = load i64, i64* %13, align 8
  %275 = add i64 %274, -1
  store i64 %275, i64* %13, align 8
  br label %366

276:                                              ; preds = %61
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 5
  %279 = load i64*, i64** %278, align 8
  %280 = icmp ne i64* %279, null
  br i1 %280, label %294, label %281

281:                                              ; preds = %276
  %282 = load i32, i32* %20, align 4
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %294

284:                                              ; preds = %281
  %285 = load i8*, i8** %15, align 8
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 %287, 10
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  %290 = load i8*, i8** %15, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %15, align 8
  %292 = load i64, i64* %13, align 8
  %293 = add i64 %292, -1
  store i64 %293, i64* %13, align 8
  br label %340

294:                                              ; preds = %284, %281, %276
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 5
  %297 = load i64*, i64** %296, align 8
  %298 = icmp ne i64* %297, null
  br i1 %298, label %303, label %299

299:                                              ; preds = %294
  %300 = load i32, i32* %20, align 4
  %301 = icmp ugt i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %299
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %339

303:                                              ; preds = %299, %294
  %304 = load i32, i32* %20, align 4
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = icmp uge i32 %304, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %303
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %338

310:                                              ; preds = %303
  %311 = load i64, i64* %13, align 8
  %312 = icmp ugt i64 %311, 0
  br i1 %312, label %313, label %336

313:                                              ; preds = %310
  %314 = load i8*, i8** %15, align 8
  %315 = load i8, i8* %314, align 1
  %316 = zext i8 %315 to i32
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 5
  %319 = load i64*, i64** %318, align 8
  %320 = load i32, i32* %20, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %319, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = trunc i64 %323 to i8
  %325 = zext i8 %324 to i32
  %326 = icmp eq i32 %316, %325
  br i1 %326, label %327, label %334

327:                                              ; preds = %313
  %328 = load i32, i32* %20, align 4
  %329 = add i32 %328, 1
  store i32 %329, i32* %20, align 4
  %330 = load i8*, i8** %15, align 8
  %331 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %331, i8** %15, align 8
  %332 = load i64, i64* %13, align 8
  %333 = add i64 %332, -1
  store i64 %333, i64* %13, align 8
  br label %335

334:                                              ; preds = %313
  store i32 6, i32* %17, align 4
  br label %335

335:                                              ; preds = %334, %327
  br label %337

336:                                              ; preds = %310
  br label %367

337:                                              ; preds = %335
  br label %338

338:                                              ; preds = %337, %309
  br label %339

339:                                              ; preds = %338, %302
  br label %340

340:                                              ; preds = %339, %289
  br label %366

341:                                              ; preds = %61
  %342 = load i32, i32* %19, align 4
  %343 = load i32, i32* %20, align 4
  %344 = icmp ult i32 %342, %343
  br i1 %344, label %345, label %364

345:                                              ; preds = %341
  %346 = load i64, i64* %14, align 8
  %347 = icmp ult i64 %346, 1
  br i1 %347, label %348, label %350

348:                                              ; preds = %345
  %349 = load i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store i32 %349, i32* %12, align 4
  br label %367

350:                                              ; preds = %345
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 5
  %353 = load i64*, i64** %352, align 8
  %354 = load i32, i32* %19, align 4
  %355 = add i32 %354, 1
  store i32 %355, i32* %19, align 4
  %356 = zext i32 %354 to i64
  %357 = getelementptr inbounds i64, i64* %353, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = trunc i64 %358 to i8
  %360 = load i8*, i8** %16, align 8
  %361 = getelementptr inbounds i8, i8* %360, i32 1
  store i8* %361, i8** %16, align 8
  store i8 %359, i8* %360, align 1
  %362 = load i64, i64* %14, align 8
  %363 = add i64 %362, -1
  store i64 %363, i64* %14, align 8
  br label %365

364:                                              ; preds = %341
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %365

365:                                              ; preds = %364, %350
  br label %366

366:                                              ; preds = %61, %365, %340, %271, %225, %218, %167, %142, %122, %104, %85
  br label %61

367:                                              ; preds = %348, %336, %269, %235, %223, %188, %181, %93, %76, %66
  %368 = load i8*, i8** %15, align 8
  %369 = load i8**, i8*** %8, align 8
  store i8* %368, i8** %369, align 8
  %370 = load i64, i64* %13, align 8
  %371 = load i64*, i64** %9, align 8
  store i64 %370, i64* %371, align 8
  %372 = load i8*, i8** %16, align 8
  %373 = load i8**, i8*** %10, align 8
  store i8* %372, i8** %373, align 8
  %374 = load i64, i64* %14, align 8
  %375 = load i64*, i64** %11, align 8
  store i64 %374, i64* %375, align 8
  %376 = load i32, i32* %17, align 4
  %377 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 2
  store i32 %376, i32* %378, align 8
  %379 = load i32, i32* %19, align 4
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 0
  store i32 %379, i32* %381, align 8
  %382 = load i32, i32* %20, align 4
  %383 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 1
  store i32 %382, i32* %384, align 4
  %385 = load i32, i32* %18, align 4
  %386 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %386, i32 0, i32 3
  store i32 %385, i32* %387, align 4
  %388 = load i32, i32* %12, align 4
  store i32 %388, i32* %6, align 4
  br label %389

389:                                              ; preds = %367, %44, %42
  %390 = load i32, i32* %6, align 4
  ret i32 %390
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
