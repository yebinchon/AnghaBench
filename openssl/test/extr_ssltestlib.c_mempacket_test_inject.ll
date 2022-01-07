; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_mempacket_test_inject.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_mempacket_test_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_12__* }

@RECORD_LEN_HI = common dso_local global i64 0, align 8
@RECORD_LEN_LO = common dso_local global i64 0, align 8
@DTLS1_RT_HEADER_LENGTH = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mempacket_test_inject(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca [3 x %struct.TYPE_12__*], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_11__* @BIO_get_data(i32* %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %19, align 8
  %24 = load i8*, i8** %19, align 8
  %25 = load i64, i64* @RECORD_LEN_HI, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 8
  %30 = load i8*, i8** %19, align 8
  %31 = load i64, i64* @RECORD_LEN_LO, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %29, %34
  %36 = load i8, i8* @DTLS1_RT_HEADER_LENGTH, align 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %20, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = icmp eq %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %313

43:                                               ; preds = %5
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %20, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 -1, i32* %6, align 4
  br label %313

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %20, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %18, align 4
  br label %61

55:                                               ; preds = %49
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %55, %54
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 -1, i32* %6, align 4
  br label %313

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %10, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 -1, i32* %6, align 4
  br label %313

77:                                               ; preds = %71
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 4
  br label %83

80:                                               ; preds = %68
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  store i32 0, i32* %17, align 4
  br label %84

84:                                               ; preds = %165, %83
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 3, i32 1
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %168

91:                                               ; preds = %84
  %92 = call %struct.TYPE_12__* @OPENSSL_malloc(i32 24)
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %16, i64 0, i64 %94
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %95, align 8
  %96 = call i32 @TEST_ptr(%struct.TYPE_12__* %92)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  br label %293

99:                                               ; preds = %91
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %16, i64 0, i64 %101
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %13, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call %struct.TYPE_12__* @OPENSSL_malloc(i32 %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %107, align 8
  %108 = call i32 @TEST_ptr(%struct.TYPE_12__* %105)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %99
  br label %293

111:                                              ; preds = %99
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %111
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 2
  br i1 %116, label %117, label %137

117:                                              ; preds = %114
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = load i64, i64* %20, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %20, align 8
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = call i32 @memcpy(%struct.TYPE_12__* %120, i8* %123, i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %20, align 8
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %147

137:                                              ; preds = %114, %111
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @memcpy(%struct.TYPE_12__* %140, i8* %141, i32 %142)
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %137, %117
  %148 = load i32, i32* %10, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* %10, align 4
  br label %158

152:                                              ; preds = %147
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %17, align 4
  %157 = add nsw i32 %155, %156
  br label %158

158:                                              ; preds = %152, %150
  %159 = phi i32 [ %151, %150 ], [ %157, %152 ]
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %17, align 4
  br label %84

168:                                              ; preds = %84
  store i32 0, i32* %17, align 4
  br label %169

169:                                              ; preds = %256, %168
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %17, align 4
  %174 = call %struct.TYPE_12__* @sk_MEMPACKET_value(i32 %172, i32 %173)
  store %struct.TYPE_12__* %174, %struct.TYPE_12__** %14, align 8
  %175 = icmp ne %struct.TYPE_12__* %174, null
  br i1 %175, label %176, label %259

176:                                              ; preds = %169
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ugt i32 %179, %182
  br i1 %183, label %184, label %231

184:                                              ; preds = %176
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %189 = load i32, i32* %17, align 4
  %190 = call i64 @sk_MEMPACKET_insert(i32 %187, %struct.TYPE_12__* %188, i32 %189)
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  br label %293

193:                                              ; preds = %184
  %194 = load i32, i32* %10, align 4
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %6, align 4
  br label %313

198:                                              ; preds = %193
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %229, %198
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %17, align 4
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %17, align 4
  %210 = call %struct.TYPE_12__* @sk_MEMPACKET_value(i32 %208, i32 %209)
  store %struct.TYPE_12__* %210, %struct.TYPE_12__** %15, align 8
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %212 = icmp ne %struct.TYPE_12__* %211, null
  br i1 %212, label %213, label %226

213:                                              ; preds = %203
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %216, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %213
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 8
  br label %228

226:                                              ; preds = %213, %203
  %227 = load i32, i32* %9, align 4
  store i32 %227, i32* %6, align 4
  br label %313

228:                                              ; preds = %221
  br label %229

229:                                              ; preds = %228
  br i1 true, label %203, label %230

230:                                              ; preds = %229
  br label %255

231:                                              ; preds = %176
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %234, %237
  br i1 %238, label %239, label %254

239:                                              ; preds = %231
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %239
  br label %293

245:                                              ; preds = %239
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %245, %231
  br label %255

255:                                              ; preds = %254, %230
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %17, align 4
  br label %169

259:                                              ; preds = %169
  store i32 0, i32* %17, align 4
  br label %260

260:                                              ; preds = %288, %259
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* %18, align 4
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i32 3, i32 1
  %266 = icmp slt i32 %261, %265
  br i1 %266, label %267, label %291

267:                                              ; preds = %260
  %268 = load i32, i32* %17, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %16, i64 0, i64 %269
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 8
  store %struct.TYPE_12__* %271, %struct.TYPE_12__** %13, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %276 = call i32 @sk_MEMPACKET_push(i32 %274, %struct.TYPE_12__* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %267
  br label %293

279:                                              ; preds = %267
  %280 = load i32, i32* %10, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %282, %279
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %17, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %17, align 4
  br label %260

291:                                              ; preds = %260
  %292 = load i32, i32* %9, align 4
  store i32 %292, i32* %6, align 4
  br label %313

293:                                              ; preds = %278, %244, %192, %110, %98
  store i32 0, i32* %17, align 4
  br label %294

294:                                              ; preds = %309, %293
  %295 = load i32, i32* %17, align 4
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp sgt i64 %298, 0
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i32 3, i32 1
  %302 = icmp slt i32 %295, %301
  br i1 %302, label %303, label %312

303:                                              ; preds = %294
  %304 = load i32, i32* %17, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %16, i64 0, i64 %305
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %306, align 8
  %308 = call i32 @mempacket_free(%struct.TYPE_12__* %307)
  br label %309

309:                                              ; preds = %303
  %310 = load i32, i32* %17, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %17, align 4
  br label %294

312:                                              ; preds = %294
  store i32 -1, i32* %6, align 4
  br label %313

313:                                              ; preds = %312, %291, %226, %196, %76, %67, %48, %42
  %314 = load i32, i32* %6, align 4
  ret i32 %314
}

declare dso_local %struct.TYPE_11__* @BIO_get_data(i32*) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @sk_MEMPACKET_value(i32, i32) #1

declare dso_local i64 @sk_MEMPACKET_insert(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @sk_MEMPACKET_push(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @mempacket_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
