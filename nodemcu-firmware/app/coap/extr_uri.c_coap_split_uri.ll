; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_uri.c_coap_split_uri.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_uri.c_coap_split_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@COAP_DEFAULT_PORT = common dso_local global i32 0, align 4
@COAP_DEFAULT_SCHEME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_split_uri(i8* %0, i64 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %3
  store i32 -1, i32* %4, align 4
  br label %335

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = call i32 @memset(%struct.TYPE_4__* %20, i32 0, i32 16)
  %22 = load i32, i32* @COAP_DEFAULT_PORT, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %9, align 8
  br label %264

32:                                               ; preds = %19
  %33 = load i64, i64* @COAP_DEFAULT_SCHEME, align 8
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %54, %32
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call zeroext i8 @tolower(i8 zeroext %45)
  %47 = zext i8 %46 to i32
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %47, %50
  br label %52

52:                                               ; preds = %43, %38, %35
  %53 = phi i1 [ false, %38 ], [ false, %35 ], [ %51, %43 ]
  br i1 %53, label %54, label %61

54:                                               ; preds = %52
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %6, align 8
  br label %35

61:                                               ; preds = %52
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 -1, i32* %11, align 4
  br label %333

66:                                               ; preds = %61
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call zeroext i8 @tolower(i8 zeroext %71)
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 115
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %10, align 4
  br i1 %74, label %76, label %81

76:                                               ; preds = %69
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %76, %69, %66
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %82

82:                                               ; preds = %101, %81
  %83 = load i64, i64* %6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load i8*, i8** %9, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i8*, i8** %8, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call zeroext i8 @tolower(i8 zeroext %92)
  %94 = zext i8 %93 to i32
  %95 = load i8*, i8** %9, align 8
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %94, %97
  br label %99

99:                                               ; preds = %90, %85, %82
  %100 = phi i1 [ false, %85 ], [ false, %82 ], [ %98, %90 ]
  br i1 %100, label %101, label %108

101:                                              ; preds = %99
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %8, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, -1
  store i64 %107, i64* %6, align 8
  br label %82

108:                                              ; preds = %99
  %109 = load i8*, i8** %9, align 8
  %110 = load i8, i8* %109, align 1
  %111 = icmp ne i8 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 -2, i32* %11, align 4
  br label %333

113:                                              ; preds = %108
  %114 = load i8*, i8** %8, align 8
  store i8* %114, i8** %9, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %167

117:                                              ; preds = %113
  %118 = load i8*, i8** %8, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 91
  br i1 %121, label %122, label %167

122:                                              ; preds = %117
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %8, align 8
  br label %125

125:                                              ; preds = %135, %122
  %126 = load i64, i64* %6, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i8*, i8** %9, align 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 93
  br label %133

133:                                              ; preds = %128, %125
  %134 = phi i1 [ false, %125 ], [ %132, %128 ]
  br i1 %134, label %135, label %140

135:                                              ; preds = %133
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %9, align 8
  %138 = load i64, i64* %6, align 8
  %139 = add i64 %138, -1
  store i64 %139, i64* %6, align 8
  br label %125

140:                                              ; preds = %133
  %141 = load i64, i64* %6, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load i8*, i8** %9, align 8
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp ne i32 %146, 93
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = load i8*, i8** %8, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = icmp eq i8* %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148, %143, %140
  store i32 -3, i32* %11, align 4
  br label %333

153:                                              ; preds = %148
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i8*, i8** %9, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @COAP_SET_STR(i32* %155, i64 %160, i8* %161)
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %9, align 8
  %165 = load i64, i64* %6, align 8
  %166 = add i64 %165, -1
  store i64 %166, i64* %6, align 8
  br label %212

167:                                              ; preds = %117, %113
  br label %168

168:                                              ; preds = %188, %167
  %169 = load i64, i64* %6, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %186

171:                                              ; preds = %168
  %172 = load i8*, i8** %9, align 8
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp ne i32 %174, 58
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load i8*, i8** %9, align 8
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp ne i32 %179, 47
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load i8*, i8** %9, align 8
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp ne i32 %184, 63
  br label %186

186:                                              ; preds = %181, %176, %171, %168
  %187 = phi i1 [ false, %176 ], [ false, %171 ], [ false, %168 ], [ %185, %181 ]
  br i1 %187, label %188, label %197

188:                                              ; preds = %186
  %189 = load i8*, i8** %9, align 8
  %190 = load i8, i8* %189, align 1
  %191 = call zeroext i8 @tolower(i8 zeroext %190)
  %192 = load i8*, i8** %9, align 8
  store i8 %191, i8* %192, align 1
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %9, align 8
  %195 = load i64, i64* %6, align 8
  %196 = add i64 %195, -1
  store i64 %196, i64* %6, align 8
  br label %168

197:                                              ; preds = %186
  %198 = load i8*, i8** %8, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = icmp eq i8* %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store i32 -3, i32* %11, align 4
  br label %333

202:                                              ; preds = %197
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 3
  %205 = load i8*, i8** %9, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = load i8*, i8** %8, align 8
  %211 = call i32 @COAP_SET_STR(i32* %204, i64 %209, i8* %210)
  br label %212

212:                                              ; preds = %202, %153
  %213 = load i64, i64* %6, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %263

215:                                              ; preds = %212
  %216 = load i8*, i8** %9, align 8
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp eq i32 %218, 58
  br i1 %219, label %220, label %263

220:                                              ; preds = %215
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %9, align 8
  store i8* %222, i8** %8, align 8
  %223 = load i64, i64* %6, align 8
  %224 = add i64 %223, -1
  store i64 %224, i64* %6, align 8
  br label %225

225:                                              ; preds = %235, %220
  %226 = load i64, i64* %6, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i8*, i8** %9, align 8
  %230 = load i8, i8* %229, align 1
  %231 = call i64 @isdigit(i8 zeroext %230)
  %232 = icmp ne i64 %231, 0
  br label %233

233:                                              ; preds = %228, %225
  %234 = phi i1 [ false, %225 ], [ %232, %228 ]
  br i1 %234, label %235, label %240

235:                                              ; preds = %233
  %236 = load i8*, i8** %9, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %9, align 8
  %238 = load i64, i64* %6, align 8
  %239 = add i64 %238, -1
  store i64 %239, i64* %6, align 8
  br label %225

240:                                              ; preds = %233
  %241 = load i8*, i8** %8, align 8
  %242 = load i8*, i8** %9, align 8
  %243 = icmp ult i8* %241, %242
  br i1 %243, label %244, label %262

244:                                              ; preds = %240
  store i32 0, i32* %12, align 4
  br label %245

245:                                              ; preds = %249, %244
  %246 = load i8*, i8** %8, align 8
  %247 = load i8*, i8** %9, align 8
  %248 = icmp ult i8* %246, %247
  br i1 %248, label %249, label %258

249:                                              ; preds = %245
  %250 = load i32, i32* %12, align 4
  %251 = mul nsw i32 %250, 10
  %252 = load i8*, i8** %8, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %8, align 8
  %254 = load i8, i8* %252, align 1
  %255 = zext i8 %254 to i32
  %256 = sub nsw i32 %255, 48
  %257 = add nsw i32 %251, %256
  store i32 %257, i32* %12, align 4
  br label %245

258:                                              ; preds = %245
  %259 = load i32, i32* %12, align 4
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %258, %240
  br label %263

263:                                              ; preds = %262, %215, %212
  br label %264

264:                                              ; preds = %263, %30
  %265 = load i64, i64* %6, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %264
  br label %328

268:                                              ; preds = %264
  %269 = load i8*, i8** %9, align 8
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = icmp eq i32 %271, 47
  br i1 %272, label %273, label %309

273:                                              ; preds = %268
  %274 = load i8*, i8** %9, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %9, align 8
  store i8* %275, i8** %8, align 8
  %276 = load i64, i64* %6, align 8
  %277 = add i64 %276, -1
  store i64 %277, i64* %6, align 8
  br label %278

278:                                              ; preds = %288, %273
  %279 = load i64, i64* %6, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %278
  %282 = load i8*, i8** %9, align 8
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = icmp ne i32 %284, 63
  br label %286

286:                                              ; preds = %281, %278
  %287 = phi i1 [ false, %278 ], [ %285, %281 ]
  br i1 %287, label %288, label %293

288:                                              ; preds = %286
  %289 = load i8*, i8** %9, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %9, align 8
  %291 = load i64, i64* %6, align 8
  %292 = add i64 %291, -1
  store i64 %292, i64* %6, align 8
  br label %278

293:                                              ; preds = %286
  %294 = load i8*, i8** %8, align 8
  %295 = load i8*, i8** %9, align 8
  %296 = icmp ult i8* %294, %295
  br i1 %296, label %297, label %308

297:                                              ; preds = %293
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 2
  %300 = load i8*, i8** %9, align 8
  %301 = load i8*, i8** %8, align 8
  %302 = ptrtoint i8* %300 to i64
  %303 = ptrtoint i8* %301 to i64
  %304 = sub i64 %302, %303
  %305 = load i8*, i8** %8, align 8
  %306 = call i32 @COAP_SET_STR(i32* %299, i64 %304, i8* %305)
  %307 = load i8*, i8** %9, align 8
  store i8* %307, i8** %8, align 8
  br label %308

308:                                              ; preds = %297, %293
  br label %309

309:                                              ; preds = %308, %268
  %310 = load i64, i64* %6, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %327

312:                                              ; preds = %309
  %313 = load i8*, i8** %8, align 8
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = icmp eq i32 %315, 63
  br i1 %316, label %317, label %327

317:                                              ; preds = %312
  %318 = load i8*, i8** %8, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %8, align 8
  %320 = load i64, i64* %6, align 8
  %321 = add i64 %320, -1
  store i64 %321, i64* %6, align 8
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  %324 = load i64, i64* %6, align 8
  %325 = load i8*, i8** %8, align 8
  %326 = call i32 @COAP_SET_STR(i32* %323, i64 %324, i8* %325)
  store i64 0, i64* %6, align 8
  br label %327

327:                                              ; preds = %317, %312, %309
  br label %328

328:                                              ; preds = %327, %267
  %329 = load i64, i64* %6, align 8
  %330 = icmp ne i64 %329, 0
  %331 = zext i1 %330 to i64
  %332 = select i1 %330, i32 -1, i32 0
  store i32 %332, i32* %4, align 4
  br label %335

333:                                              ; preds = %201, %152, %112, %65
  %334 = load i32, i32* %11, align 4
  store i32 %334, i32* %4, align 4
  br label %335

335:                                              ; preds = %333, %328, %18
  %336 = load i32, i32* %4, align 4
  ret i32 %336
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

declare dso_local i32 @COAP_SET_STR(i32*, i64, i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
