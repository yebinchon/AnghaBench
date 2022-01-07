; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_lzx.c_LZXdecompress.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_lzx.c_LZXdecompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZXstate = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzx_bits = type { i32 }

@INIT_BITSTREAM = common dso_local global i32 0, align 4
@ALIGNED = common dso_local global i32 0, align 4
@MAINTREE = common dso_local global i32 0, align 4
@LENGTH = common dso_local global i32 0, align 4
@LZX_NUM_SECONDARY_LENGTHS = common dso_local global i32 0, align 4
@DECR_ILLEGALDATA = common dso_local global i32 0, align 4
@DECR_DATAFORMAT = common dso_local global i32 0, align 4
@LZX_NUM_CHARS = common dso_local global i32 0, align 4
@LZX_NUM_PRIMARY_LENGTHS = common dso_local global i32 0, align 4
@LZX_MIN_MATCH = common dso_local global i32 0, align 4
@extra_bits = common dso_local global i32* null, align 8
@position_base = common dso_local global i32* null, align 8
@DECR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZXdecompress(%struct.LZXstate* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.LZXstate*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
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
  %28 = alloca %struct.lzx_bits, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store %struct.LZXstate* %0, %struct.LZXstate** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %12, align 8
  %48 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %49 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %13, align 8
  %51 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %52 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %17, align 4
  %54 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %55 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %18, align 4
  %57 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %58 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %19, align 4
  %60 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %61 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %20, align 4
  %63 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %64 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %29, align 4
  %67 = load i32, i32* @INIT_BITSTREAM, align 4
  %68 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %69 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %5
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  %73 = load i32, i32* %27, align 4
  %74 = call i32 @READ_BITS(i32 %73, i32 1)
  %75 = load i32, i32* %27, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* %25, align 4
  %79 = call i32 @READ_BITS(i32 %78, i32 16)
  %80 = load i32, i32* %26, align 4
  %81 = call i32 @READ_BITS(i32 %80, i32 16)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %25, align 4
  %84 = shl i32 %83, 16
  %85 = load i32, i32* %26, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %88 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %90 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %89, i32 0, i32 6
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %82, %5
  br label %92

92:                                               ; preds = %692, %91
  %93 = load i32, i32* %29, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %693

95:                                               ; preds = %92
  %96 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %97 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %264

100:                                              ; preds = %95
  %101 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %102 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 129
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %107 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  br label %114

114:                                              ; preds = %111, %105
  %115 = load i32, i32* @INIT_BITSTREAM, align 4
  br label %116

116:                                              ; preds = %114, %100
  %117 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %118 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @READ_BITS(i32 %119, i32 3)
  %121 = load i32, i32* %25, align 4
  %122 = call i32 @READ_BITS(i32 %121, i32 16)
  %123 = load i32, i32* %26, align 4
  %124 = call i32 @READ_BITS(i32 %123, i32 8)
  %125 = load i32, i32* %25, align 4
  %126 = shl i32 %125, 8
  %127 = load i32, i32* %26, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %130 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %129, i32 0, i32 10
  store i32 %128, i32* %130, align 4
  %131 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %132 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %131, i32 0, i32 8
  store i32 %128, i32* %132, align 4
  %133 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %134 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %261 [
    i32 130, label %136
    i32 128, label %155
    i32 129, label %179
  ]

136:                                              ; preds = %116
  store i32 0, i32* %25, align 4
  br label %137

137:                                              ; preds = %149, %136
  %138 = load i32, i32* %25, align 4
  %139 = icmp slt i32 %138, 8
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load i32, i32* %26, align 4
  %142 = call i32 @READ_BITS(i32 %141, i32 3)
  %143 = load i32, i32* %26, align 4
  %144 = load i32, i32* @ALIGNED, align 4
  %145 = call i32* @LENTABLE(i32 %144)
  %146 = load i32, i32* %25, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %143, i32* %148, align 4
  br label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %25, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %25, align 4
  br label %137

152:                                              ; preds = %137
  %153 = load i32, i32* @ALIGNED, align 4
  %154 = call i32 @BUILD_TABLE(i32 %153)
  br label %155

155:                                              ; preds = %116, %152
  %156 = load i32, i32* @MAINTREE, align 4
  %157 = call i32 @READ_LENGTHS(i32 %156, i32 0, i32 256)
  %158 = load i32, i32* @MAINTREE, align 4
  %159 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %160 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %159, i32 0, i32 11
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @READ_LENGTHS(i32 %158, i32 256, i32 %161)
  %163 = load i32, i32* @MAINTREE, align 4
  %164 = call i32 @BUILD_TABLE(i32 %163)
  %165 = load i32, i32* @MAINTREE, align 4
  %166 = call i32* @LENTABLE(i32 %165)
  %167 = getelementptr inbounds i32, i32* %166, i64 232
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %155
  %171 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %172 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %171, i32 0, i32 12
  store i32 1, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %155
  %174 = load i32, i32* @LENGTH, align 4
  %175 = load i32, i32* @LZX_NUM_SECONDARY_LENGTHS, align 4
  %176 = call i32 @READ_LENGTHS(i32 %174, i32 0, i32 %175)
  %177 = load i32, i32* @LENGTH, align 4
  %178 = call i32 @BUILD_TABLE(i32 %177)
  br label %263

179:                                              ; preds = %116
  %180 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %181 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %180, i32 0, i32 12
  store i32 1, i32* %181, align 4
  %182 = call i32 @ENSURE_BITS(i32 16)
  %183 = load i32, i32* %23, align 4
  %184 = icmp sgt i32 %183, 16
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i8*, i8** %8, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 -2
  store i8* %187, i8** %8, align 8
  br label %188

188:                                              ; preds = %185, %179
  %189 = load i8*, i8** %8, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = load i8*, i8** %8, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = shl i32 %196, 8
  %198 = or i32 %192, %197
  %199 = load i8*, i8** %8, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 2
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = shl i32 %202, 16
  %204 = or i32 %198, %203
  %205 = load i8*, i8** %8, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 3
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = shl i32 %208, 24
  %210 = or i32 %204, %209
  store i32 %210, i32* %19, align 4
  %211 = load i8*, i8** %8, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 4
  store i8* %212, i8** %8, align 8
  %213 = load i8*, i8** %8, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 0
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = load i8*, i8** %8, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = shl i32 %220, 8
  %222 = or i32 %216, %221
  %223 = load i8*, i8** %8, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 2
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = shl i32 %226, 16
  %228 = or i32 %222, %227
  %229 = load i8*, i8** %8, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 3
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = shl i32 %232, 24
  %234 = or i32 %228, %233
  store i32 %234, i32* %20, align 4
  %235 = load i8*, i8** %8, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 4
  store i8* %236, i8** %8, align 8
  %237 = load i8*, i8** %8, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 0
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = load i8*, i8** %8, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = shl i32 %244, 8
  %246 = or i32 %240, %245
  %247 = load i8*, i8** %8, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 2
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = shl i32 %250, 16
  %252 = or i32 %246, %251
  %253 = load i8*, i8** %8, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 3
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = shl i32 %256, 24
  %258 = or i32 %252, %257
  store i32 %258, i32* %21, align 4
  %259 = load i8*, i8** %8, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 4
  store i8* %260, i8** %8, align 8
  br label %263

261:                                              ; preds = %116
  %262 = load i32, i32* @DECR_ILLEGALDATA, align 4
  store i32 %262, i32* %6, align 4
  br label %857

263:                                              ; preds = %188, %173
  br label %264

264:                                              ; preds = %263, %95
  %265 = load i8*, i8** %8, align 8
  %266 = load i8*, i8** %12, align 8
  %267 = icmp ugt i8* %265, %266
  br i1 %267, label %268, label %279

268:                                              ; preds = %264
  %269 = load i8*, i8** %8, align 8
  %270 = load i8*, i8** %12, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 2
  %272 = icmp ugt i8* %269, %271
  br i1 %272, label %276, label %273

273:                                              ; preds = %268
  %274 = load i32, i32* %23, align 4
  %275 = icmp slt i32 %274, 16
  br i1 %275, label %276, label %278

276:                                              ; preds = %273, %268
  %277 = load i32, i32* @DECR_ILLEGALDATA, align 4
  store i32 %277, i32* %6, align 4
  br label %857

278:                                              ; preds = %273
  br label %279

279:                                              ; preds = %278, %264
  br label %280

280:                                              ; preds = %691, %279
  %281 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %282 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %281, i32 0, i32 8
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %30, align 4
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load i32, i32* %29, align 4
  %287 = icmp sgt i32 %286, 0
  br label %288

288:                                              ; preds = %285, %280
  %289 = phi i1 [ false, %280 ], [ %287, %285 ]
  br i1 %289, label %290, label %692

290:                                              ; preds = %288
  %291 = load i32, i32* %30, align 4
  %292 = load i32, i32* %29, align 4
  %293 = icmp sgt i32 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %290
  %295 = load i32, i32* %29, align 4
  store i32 %295, i32* %30, align 4
  br label %296

296:                                              ; preds = %294, %290
  %297 = load i32, i32* %30, align 4
  %298 = load i32, i32* %29, align 4
  %299 = sub nsw i32 %298, %297
  store i32 %299, i32* %29, align 4
  %300 = load i32, i32* %30, align 4
  %301 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %302 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 4
  %304 = sub nsw i32 %303, %300
  store i32 %304, i32* %302, align 4
  %305 = load i32, i32* %18, align 4
  %306 = sub nsw i32 %305, 1
  %307 = load i32, i32* %17, align 4
  %308 = and i32 %307, %306
  store i32 %308, i32* %17, align 4
  %309 = load i32, i32* %17, align 4
  %310 = load i32, i32* %30, align 4
  %311 = add nsw i32 %309, %310
  %312 = load i32, i32* %18, align 4
  %313 = icmp sgt i32 %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %296
  %315 = load i32, i32* @DECR_DATAFORMAT, align 4
  store i32 %315, i32* %6, align 4
  br label %857

316:                                              ; preds = %296
  %317 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %318 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %317, i32 0, i32 9
  %319 = load i32, i32* %318, align 8
  switch i32 %319, label %689 [
    i32 128, label %320
    i32 130, label %476
    i32 129, label %664
  ]

320:                                              ; preds = %316
  br label %321

321:                                              ; preds = %474, %320
  %322 = load i32, i32* %30, align 4
  %323 = icmp sgt i32 %322, 0
  br i1 %323, label %324, label %475

324:                                              ; preds = %321
  %325 = load i32, i32* @MAINTREE, align 4
  %326 = load i32, i32* %31, align 4
  %327 = call i32 @READ_HUFFSYM(i32 %325, i32 %326)
  %328 = load i32, i32* %31, align 4
  %329 = load i32, i32* @LZX_NUM_CHARS, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %341

331:                                              ; preds = %324
  %332 = load i32, i32* %31, align 4
  %333 = trunc i32 %332 to i8
  %334 = load i8*, i8** %13, align 8
  %335 = load i32, i32* %17, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %17, align 4
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i8, i8* %334, i64 %337
  store i8 %333, i8* %338, align 1
  %339 = load i32, i32* %30, align 4
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %30, align 4
  br label %474

341:                                              ; preds = %324
  %342 = load i32, i32* @LZX_NUM_CHARS, align 4
  %343 = load i32, i32* %31, align 4
  %344 = sub nsw i32 %343, %342
  store i32 %344, i32* %31, align 4
  %345 = load i32, i32* %31, align 4
  %346 = load i32, i32* @LZX_NUM_PRIMARY_LENGTHS, align 4
  %347 = and i32 %345, %346
  store i32 %347, i32* %33, align 4
  %348 = load i32, i32* %33, align 4
  %349 = load i32, i32* @LZX_NUM_PRIMARY_LENGTHS, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %358

351:                                              ; preds = %341
  %352 = load i32, i32* @LENGTH, align 4
  %353 = load i32, i32* %34, align 4
  %354 = call i32 @READ_HUFFSYM(i32 %352, i32 %353)
  %355 = load i32, i32* %34, align 4
  %356 = load i32, i32* %33, align 4
  %357 = add nsw i32 %356, %355
  store i32 %357, i32* %33, align 4
  br label %358

358:                                              ; preds = %351, %341
  %359 = load i32, i32* @LZX_MIN_MATCH, align 4
  %360 = load i32, i32* %33, align 4
  %361 = add nsw i32 %360, %359
  store i32 %361, i32* %33, align 4
  %362 = load i32, i32* %31, align 4
  %363 = ashr i32 %362, 3
  store i32 %363, i32* %24, align 4
  %364 = load i32, i32* %24, align 4
  %365 = icmp sgt i32 %364, 2
  br i1 %365, label %366, label %391

366:                                              ; preds = %358
  %367 = load i32, i32* %24, align 4
  %368 = icmp ne i32 %367, 3
  br i1 %368, label %369, label %386

369:                                              ; preds = %366
  %370 = load i32*, i32** @extra_bits, align 8
  %371 = load i32, i32* %24, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  store i32 %374, i32* %35, align 4
  %375 = load i32, i32* %36, align 4
  %376 = load i32, i32* %35, align 4
  %377 = call i32 @READ_BITS(i32 %375, i32 %376)
  %378 = load i32*, i32** @position_base, align 8
  %379 = load i32, i32* %24, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = sub nsw i32 %382, 2
  %384 = load i32, i32* %36, align 4
  %385 = add nsw i32 %383, %384
  store i32 %385, i32* %24, align 4
  br label %387

386:                                              ; preds = %366
  store i32 1, i32* %24, align 4
  br label %387

387:                                              ; preds = %386, %369
  %388 = load i32, i32* %20, align 4
  store i32 %388, i32* %21, align 4
  %389 = load i32, i32* %19, align 4
  store i32 %389, i32* %20, align 4
  %390 = load i32, i32* %24, align 4
  store i32 %390, i32* %19, align 4
  br label %409

391:                                              ; preds = %358
  %392 = load i32, i32* %24, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %391
  %395 = load i32, i32* %19, align 4
  store i32 %395, i32* %24, align 4
  br label %408

396:                                              ; preds = %391
  %397 = load i32, i32* %24, align 4
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %403

399:                                              ; preds = %396
  %400 = load i32, i32* %20, align 4
  store i32 %400, i32* %24, align 4
  %401 = load i32, i32* %19, align 4
  store i32 %401, i32* %20, align 4
  %402 = load i32, i32* %24, align 4
  store i32 %402, i32* %19, align 4
  br label %407

403:                                              ; preds = %396
  %404 = load i32, i32* %21, align 4
  store i32 %404, i32* %24, align 4
  %405 = load i32, i32* %19, align 4
  store i32 %405, i32* %21, align 4
  %406 = load i32, i32* %24, align 4
  store i32 %406, i32* %19, align 4
  br label %407

407:                                              ; preds = %403, %399
  br label %408

408:                                              ; preds = %407, %394
  br label %409

409:                                              ; preds = %408, %387
  %410 = load i8*, i8** %13, align 8
  %411 = load i32, i32* %17, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, i8* %410, i64 %412
  store i8* %413, i8** %15, align 8
  %414 = load i32, i32* %33, align 4
  %415 = load i32, i32* %30, align 4
  %416 = sub nsw i32 %415, %414
  store i32 %416, i32* %30, align 4
  %417 = load i32, i32* %17, align 4
  %418 = load i32, i32* %24, align 4
  %419 = icmp sge i32 %417, %418
  br i1 %419, label %420, label %426

420:                                              ; preds = %409
  %421 = load i8*, i8** %15, align 8
  %422 = load i32, i32* %24, align 4
  %423 = sext i32 %422 to i64
  %424 = sub i64 0, %423
  %425 = getelementptr inbounds i8, i8* %421, i64 %424
  store i8* %425, i8** %14, align 8
  br label %459

426:                                              ; preds = %409
  %427 = load i8*, i8** %15, align 8
  %428 = load i32, i32* %18, align 4
  %429 = load i32, i32* %24, align 4
  %430 = sub nsw i32 %428, %429
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, i8* %427, i64 %431
  store i8* %432, i8** %14, align 8
  %433 = load i32, i32* %24, align 4
  %434 = load i32, i32* %17, align 4
  %435 = sub nsw i32 %433, %434
  store i32 %435, i32* %37, align 4
  %436 = load i32, i32* %37, align 4
  %437 = load i32, i32* %33, align 4
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %439, label %458

439:                                              ; preds = %426
  %440 = load i32, i32* %37, align 4
  %441 = load i32, i32* %33, align 4
  %442 = sub nsw i32 %441, %440
  store i32 %442, i32* %33, align 4
  %443 = load i32, i32* %37, align 4
  %444 = load i32, i32* %17, align 4
  %445 = add nsw i32 %444, %443
  store i32 %445, i32* %17, align 4
  br label %446

446:                                              ; preds = %450, %439
  %447 = load i32, i32* %37, align 4
  %448 = add nsw i32 %447, -1
  store i32 %448, i32* %37, align 4
  %449 = icmp sgt i32 %447, 0
  br i1 %449, label %450, label %456

450:                                              ; preds = %446
  %451 = load i8*, i8** %14, align 8
  %452 = getelementptr inbounds i8, i8* %451, i32 1
  store i8* %452, i8** %14, align 8
  %453 = load i8, i8* %451, align 1
  %454 = load i8*, i8** %15, align 8
  %455 = getelementptr inbounds i8, i8* %454, i32 1
  store i8* %455, i8** %15, align 8
  store i8 %453, i8* %454, align 1
  br label %446

456:                                              ; preds = %446
  %457 = load i8*, i8** %13, align 8
  store i8* %457, i8** %14, align 8
  br label %458

458:                                              ; preds = %456, %426
  br label %459

459:                                              ; preds = %458, %420
  %460 = load i32, i32* %33, align 4
  %461 = load i32, i32* %17, align 4
  %462 = add nsw i32 %461, %460
  store i32 %462, i32* %17, align 4
  br label %463

463:                                              ; preds = %467, %459
  %464 = load i32, i32* %33, align 4
  %465 = add nsw i32 %464, -1
  store i32 %465, i32* %33, align 4
  %466 = icmp sgt i32 %464, 0
  br i1 %466, label %467, label %473

467:                                              ; preds = %463
  %468 = load i8*, i8** %14, align 8
  %469 = getelementptr inbounds i8, i8* %468, i32 1
  store i8* %469, i8** %14, align 8
  %470 = load i8, i8* %468, align 1
  %471 = load i8*, i8** %15, align 8
  %472 = getelementptr inbounds i8, i8* %471, i32 1
  store i8* %472, i8** %15, align 8
  store i8 %470, i8* %471, align 1
  br label %463

473:                                              ; preds = %463
  br label %474

474:                                              ; preds = %473, %331
  br label %321

475:                                              ; preds = %321
  br label %691

476:                                              ; preds = %316
  br label %477

477:                                              ; preds = %662, %476
  %478 = load i32, i32* %30, align 4
  %479 = icmp sgt i32 %478, 0
  br i1 %479, label %480, label %663

480:                                              ; preds = %477
  %481 = load i32, i32* @MAINTREE, align 4
  %482 = load i32, i32* %31, align 4
  %483 = call i32 @READ_HUFFSYM(i32 %481, i32 %482)
  %484 = load i32, i32* %31, align 4
  %485 = load i32, i32* @LZX_NUM_CHARS, align 4
  %486 = icmp slt i32 %484, %485
  br i1 %486, label %487, label %497

487:                                              ; preds = %480
  %488 = load i32, i32* %31, align 4
  %489 = trunc i32 %488 to i8
  %490 = load i8*, i8** %13, align 8
  %491 = load i32, i32* %17, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %17, align 4
  %493 = sext i32 %491 to i64
  %494 = getelementptr inbounds i8, i8* %490, i64 %493
  store i8 %489, i8* %494, align 1
  %495 = load i32, i32* %30, align 4
  %496 = add nsw i32 %495, -1
  store i32 %496, i32* %30, align 4
  br label %662

497:                                              ; preds = %480
  %498 = load i32, i32* @LZX_NUM_CHARS, align 4
  %499 = load i32, i32* %31, align 4
  %500 = sub nsw i32 %499, %498
  store i32 %500, i32* %31, align 4
  %501 = load i32, i32* %31, align 4
  %502 = load i32, i32* @LZX_NUM_PRIMARY_LENGTHS, align 4
  %503 = and i32 %501, %502
  store i32 %503, i32* %33, align 4
  %504 = load i32, i32* %33, align 4
  %505 = load i32, i32* @LZX_NUM_PRIMARY_LENGTHS, align 4
  %506 = icmp eq i32 %504, %505
  br i1 %506, label %507, label %514

507:                                              ; preds = %497
  %508 = load i32, i32* @LENGTH, align 4
  %509 = load i32, i32* %34, align 4
  %510 = call i32 @READ_HUFFSYM(i32 %508, i32 %509)
  %511 = load i32, i32* %34, align 4
  %512 = load i32, i32* %33, align 4
  %513 = add nsw i32 %512, %511
  store i32 %513, i32* %33, align 4
  br label %514

514:                                              ; preds = %507, %497
  %515 = load i32, i32* @LZX_MIN_MATCH, align 4
  %516 = load i32, i32* %33, align 4
  %517 = add nsw i32 %516, %515
  store i32 %517, i32* %33, align 4
  %518 = load i32, i32* %31, align 4
  %519 = ashr i32 %518, 3
  store i32 %519, i32* %24, align 4
  %520 = load i32, i32* %24, align 4
  %521 = icmp sgt i32 %520, 2
  br i1 %521, label %522, label %579

522:                                              ; preds = %514
  %523 = load i32*, i32** @extra_bits, align 8
  %524 = load i32, i32* %24, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  %527 = load i32, i32* %526, align 4
  store i32 %527, i32* %35, align 4
  %528 = load i32*, i32** @position_base, align 8
  %529 = load i32, i32* %24, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %528, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = sub nsw i32 %532, 2
  store i32 %533, i32* %24, align 4
  %534 = load i32, i32* %35, align 4
  %535 = icmp sgt i32 %534, 3
  br i1 %535, label %536, label %552

536:                                              ; preds = %522
  %537 = load i32, i32* %35, align 4
  %538 = sub nsw i32 %537, 3
  store i32 %538, i32* %35, align 4
  %539 = load i32, i32* %36, align 4
  %540 = load i32, i32* %35, align 4
  %541 = call i32 @READ_BITS(i32 %539, i32 %540)
  %542 = load i32, i32* %36, align 4
  %543 = shl i32 %542, 3
  %544 = load i32, i32* %24, align 4
  %545 = add nsw i32 %544, %543
  store i32 %545, i32* %24, align 4
  %546 = load i32, i32* @ALIGNED, align 4
  %547 = load i32, i32* %32, align 4
  %548 = call i32 @READ_HUFFSYM(i32 %546, i32 %547)
  %549 = load i32, i32* %32, align 4
  %550 = load i32, i32* %24, align 4
  %551 = add nsw i32 %550, %549
  store i32 %551, i32* %24, align 4
  br label %575

552:                                              ; preds = %522
  %553 = load i32, i32* %35, align 4
  %554 = icmp eq i32 %553, 3
  br i1 %554, label %555, label %562

555:                                              ; preds = %552
  %556 = load i32, i32* @ALIGNED, align 4
  %557 = load i32, i32* %32, align 4
  %558 = call i32 @READ_HUFFSYM(i32 %556, i32 %557)
  %559 = load i32, i32* %32, align 4
  %560 = load i32, i32* %24, align 4
  %561 = add nsw i32 %560, %559
  store i32 %561, i32* %24, align 4
  br label %574

562:                                              ; preds = %552
  %563 = load i32, i32* %35, align 4
  %564 = icmp sgt i32 %563, 0
  br i1 %564, label %565, label %572

565:                                              ; preds = %562
  %566 = load i32, i32* %36, align 4
  %567 = load i32, i32* %35, align 4
  %568 = call i32 @READ_BITS(i32 %566, i32 %567)
  %569 = load i32, i32* %36, align 4
  %570 = load i32, i32* %24, align 4
  %571 = add nsw i32 %570, %569
  store i32 %571, i32* %24, align 4
  br label %573

572:                                              ; preds = %562
  store i32 1, i32* %24, align 4
  br label %573

573:                                              ; preds = %572, %565
  br label %574

574:                                              ; preds = %573, %555
  br label %575

575:                                              ; preds = %574, %536
  %576 = load i32, i32* %20, align 4
  store i32 %576, i32* %21, align 4
  %577 = load i32, i32* %19, align 4
  store i32 %577, i32* %20, align 4
  %578 = load i32, i32* %24, align 4
  store i32 %578, i32* %19, align 4
  br label %597

579:                                              ; preds = %514
  %580 = load i32, i32* %24, align 4
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %584

582:                                              ; preds = %579
  %583 = load i32, i32* %19, align 4
  store i32 %583, i32* %24, align 4
  br label %596

584:                                              ; preds = %579
  %585 = load i32, i32* %24, align 4
  %586 = icmp eq i32 %585, 1
  br i1 %586, label %587, label %591

587:                                              ; preds = %584
  %588 = load i32, i32* %20, align 4
  store i32 %588, i32* %24, align 4
  %589 = load i32, i32* %19, align 4
  store i32 %589, i32* %20, align 4
  %590 = load i32, i32* %24, align 4
  store i32 %590, i32* %19, align 4
  br label %595

591:                                              ; preds = %584
  %592 = load i32, i32* %21, align 4
  store i32 %592, i32* %24, align 4
  %593 = load i32, i32* %19, align 4
  store i32 %593, i32* %21, align 4
  %594 = load i32, i32* %24, align 4
  store i32 %594, i32* %19, align 4
  br label %595

595:                                              ; preds = %591, %587
  br label %596

596:                                              ; preds = %595, %582
  br label %597

597:                                              ; preds = %596, %575
  %598 = load i8*, i8** %13, align 8
  %599 = load i32, i32* %17, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i8, i8* %598, i64 %600
  store i8* %601, i8** %15, align 8
  %602 = load i32, i32* %33, align 4
  %603 = load i32, i32* %30, align 4
  %604 = sub nsw i32 %603, %602
  store i32 %604, i32* %30, align 4
  %605 = load i32, i32* %17, align 4
  %606 = load i32, i32* %24, align 4
  %607 = icmp sge i32 %605, %606
  br i1 %607, label %608, label %614

608:                                              ; preds = %597
  %609 = load i8*, i8** %15, align 8
  %610 = load i32, i32* %24, align 4
  %611 = sext i32 %610 to i64
  %612 = sub i64 0, %611
  %613 = getelementptr inbounds i8, i8* %609, i64 %612
  store i8* %613, i8** %14, align 8
  br label %647

614:                                              ; preds = %597
  %615 = load i8*, i8** %15, align 8
  %616 = load i32, i32* %18, align 4
  %617 = load i32, i32* %24, align 4
  %618 = sub nsw i32 %616, %617
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i8, i8* %615, i64 %619
  store i8* %620, i8** %14, align 8
  %621 = load i32, i32* %24, align 4
  %622 = load i32, i32* %17, align 4
  %623 = sub nsw i32 %621, %622
  store i32 %623, i32* %37, align 4
  %624 = load i32, i32* %37, align 4
  %625 = load i32, i32* %33, align 4
  %626 = icmp slt i32 %624, %625
  br i1 %626, label %627, label %646

627:                                              ; preds = %614
  %628 = load i32, i32* %37, align 4
  %629 = load i32, i32* %33, align 4
  %630 = sub nsw i32 %629, %628
  store i32 %630, i32* %33, align 4
  %631 = load i32, i32* %37, align 4
  %632 = load i32, i32* %17, align 4
  %633 = add nsw i32 %632, %631
  store i32 %633, i32* %17, align 4
  br label %634

634:                                              ; preds = %638, %627
  %635 = load i32, i32* %37, align 4
  %636 = add nsw i32 %635, -1
  store i32 %636, i32* %37, align 4
  %637 = icmp sgt i32 %635, 0
  br i1 %637, label %638, label %644

638:                                              ; preds = %634
  %639 = load i8*, i8** %14, align 8
  %640 = getelementptr inbounds i8, i8* %639, i32 1
  store i8* %640, i8** %14, align 8
  %641 = load i8, i8* %639, align 1
  %642 = load i8*, i8** %15, align 8
  %643 = getelementptr inbounds i8, i8* %642, i32 1
  store i8* %643, i8** %15, align 8
  store i8 %641, i8* %642, align 1
  br label %634

644:                                              ; preds = %634
  %645 = load i8*, i8** %13, align 8
  store i8* %645, i8** %14, align 8
  br label %646

646:                                              ; preds = %644, %614
  br label %647

647:                                              ; preds = %646, %608
  %648 = load i32, i32* %33, align 4
  %649 = load i32, i32* %17, align 4
  %650 = add nsw i32 %649, %648
  store i32 %650, i32* %17, align 4
  br label %651

651:                                              ; preds = %655, %647
  %652 = load i32, i32* %33, align 4
  %653 = add nsw i32 %652, -1
  store i32 %653, i32* %33, align 4
  %654 = icmp sgt i32 %652, 0
  br i1 %654, label %655, label %661

655:                                              ; preds = %651
  %656 = load i8*, i8** %14, align 8
  %657 = getelementptr inbounds i8, i8* %656, i32 1
  store i8* %657, i8** %14, align 8
  %658 = load i8, i8* %656, align 1
  %659 = load i8*, i8** %15, align 8
  %660 = getelementptr inbounds i8, i8* %659, i32 1
  store i8* %660, i8** %15, align 8
  store i8 %658, i8* %659, align 1
  br label %651

661:                                              ; preds = %651
  br label %662

662:                                              ; preds = %661, %487
  br label %477

663:                                              ; preds = %477
  br label %691

664:                                              ; preds = %316
  %665 = load i8*, i8** %8, align 8
  %666 = load i32, i32* %30, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i8, i8* %665, i64 %667
  %669 = load i8*, i8** %12, align 8
  %670 = icmp ugt i8* %668, %669
  br i1 %670, label %671, label %673

671:                                              ; preds = %664
  %672 = load i32, i32* @DECR_ILLEGALDATA, align 4
  store i32 %672, i32* %6, align 4
  br label %857

673:                                              ; preds = %664
  %674 = load i8*, i8** %13, align 8
  %675 = load i32, i32* %17, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i8, i8* %674, i64 %676
  %678 = load i8*, i8** %8, align 8
  %679 = load i32, i32* %30, align 4
  %680 = sext i32 %679 to i64
  %681 = call i32 @memcpy(i8* %677, i8* %678, i64 %680)
  %682 = load i32, i32* %30, align 4
  %683 = load i8*, i8** %8, align 8
  %684 = sext i32 %682 to i64
  %685 = getelementptr inbounds i8, i8* %683, i64 %684
  store i8* %685, i8** %8, align 8
  %686 = load i32, i32* %30, align 4
  %687 = load i32, i32* %17, align 4
  %688 = add nsw i32 %687, %686
  store i32 %688, i32* %17, align 4
  br label %691

689:                                              ; preds = %316
  %690 = load i32, i32* @DECR_ILLEGALDATA, align 4
  store i32 %690, i32* %6, align 4
  br label %857

691:                                              ; preds = %673, %663, %475
  br label %280

692:                                              ; preds = %288
  br label %92

693:                                              ; preds = %92
  %694 = load i32, i32* %29, align 4
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %698

696:                                              ; preds = %693
  %697 = load i32, i32* @DECR_ILLEGALDATA, align 4
  store i32 %697, i32* %6, align 4
  br label %857

698:                                              ; preds = %693
  %699 = load i8*, i8** %9, align 8
  %700 = load i8*, i8** %13, align 8
  %701 = load i32, i32* %17, align 4
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %705, label %703

703:                                              ; preds = %698
  %704 = load i32, i32* %18, align 4
  br label %707

705:                                              ; preds = %698
  %706 = load i32, i32* %17, align 4
  br label %707

707:                                              ; preds = %705, %703
  %708 = phi i32 [ %704, %703 ], [ %706, %705 ]
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i8, i8* %700, i64 %709
  %711 = load i32, i32* %11, align 4
  %712 = sext i32 %711 to i64
  %713 = sub i64 0, %712
  %714 = getelementptr inbounds i8, i8* %710, i64 %713
  %715 = load i32, i32* %11, align 4
  %716 = sext i32 %715 to i64
  %717 = call i32 @memcpy(i8* %699, i8* %714, i64 %716)
  %718 = load i32, i32* %17, align 4
  %719 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %720 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %719, i32 0, i32 1
  store i32 %718, i32* %720, align 8
  %721 = load i32, i32* %19, align 4
  %722 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %723 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %722, i32 0, i32 3
  store i32 %721, i32* %723, align 8
  %724 = load i32, i32* %20, align 4
  %725 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %726 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %725, i32 0, i32 4
  store i32 %724, i32* %726, align 4
  %727 = load i32, i32* %21, align 4
  %728 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %729 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %728, i32 0, i32 5
  store i32 %727, i32* %729, align 8
  %730 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %731 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %730, i32 0, i32 14
  %732 = load i32, i32* %731, align 4
  %733 = add nsw i32 %732, 1
  store i32 %733, i32* %731, align 4
  %734 = icmp slt i32 %732, 32768
  br i1 %734, label %735, label %855

735:                                              ; preds = %707
  %736 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %737 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %736, i32 0, i32 7
  %738 = load i32, i32* %737, align 8
  %739 = icmp ne i32 %738, 0
  br i1 %739, label %740, label %855

740:                                              ; preds = %735
  %741 = load i32, i32* %11, align 4
  %742 = icmp sle i32 %741, 6
  br i1 %742, label %748, label %743

743:                                              ; preds = %740
  %744 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %745 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %744, i32 0, i32 12
  %746 = load i32, i32* %745, align 4
  %747 = icmp ne i32 %746, 0
  br i1 %747, label %754, label %748

748:                                              ; preds = %743, %740
  %749 = load i32, i32* %11, align 4
  %750 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %751 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %750, i32 0, i32 13
  %752 = load i32, i32* %751, align 8
  %753 = add nsw i32 %752, %749
  store i32 %753, i32* %751, align 8
  br label %854

754:                                              ; preds = %743
  %755 = load i8*, i8** %9, align 8
  store i8* %755, i8** %38, align 8
  %756 = load i8*, i8** %38, align 8
  %757 = load i32, i32* %11, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds i8, i8* %756, i64 %758
  %760 = getelementptr inbounds i8, i8* %759, i64 -10
  store i8* %760, i8** %39, align 8
  %761 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %762 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %761, i32 0, i32 13
  %763 = load i32, i32* %762, align 8
  store i32 %763, i32* %40, align 4
  %764 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %765 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %764, i32 0, i32 7
  %766 = load i32, i32* %765, align 8
  store i32 %766, i32* %41, align 4
  %767 = load i32, i32* %40, align 4
  %768 = load i32, i32* %11, align 4
  %769 = add nsw i32 %767, %768
  %770 = load %struct.LZXstate*, %struct.LZXstate** %7, align 8
  %771 = getelementptr inbounds %struct.LZXstate, %struct.LZXstate* %770, i32 0, i32 13
  store i32 %769, i32* %771, align 8
  br label %772

772:                                              ; preds = %848, %782, %754
  %773 = load i8*, i8** %38, align 8
  %774 = load i8*, i8** %39, align 8
  %775 = icmp ult i8* %773, %774
  br i1 %775, label %776, label %853

776:                                              ; preds = %772
  %777 = load i8*, i8** %38, align 8
  %778 = getelementptr inbounds i8, i8* %777, i32 1
  store i8* %778, i8** %38, align 8
  %779 = load i8, i8* %777, align 1
  %780 = zext i8 %779 to i32
  %781 = icmp ne i32 %780, 232
  br i1 %781, label %782, label %785

782:                                              ; preds = %776
  %783 = load i32, i32* %40, align 4
  %784 = add nsw i32 %783, 1
  store i32 %784, i32* %40, align 4
  br label %772

785:                                              ; preds = %776
  %786 = load i8*, i8** %38, align 8
  %787 = getelementptr inbounds i8, i8* %786, i64 0
  %788 = load i8, i8* %787, align 1
  %789 = zext i8 %788 to i32
  %790 = load i8*, i8** %38, align 8
  %791 = getelementptr inbounds i8, i8* %790, i64 1
  %792 = load i8, i8* %791, align 1
  %793 = zext i8 %792 to i32
  %794 = shl i32 %793, 8
  %795 = or i32 %789, %794
  %796 = load i8*, i8** %38, align 8
  %797 = getelementptr inbounds i8, i8* %796, i64 2
  %798 = load i8, i8* %797, align 1
  %799 = zext i8 %798 to i32
  %800 = shl i32 %799, 16
  %801 = or i32 %795, %800
  %802 = load i8*, i8** %38, align 8
  %803 = getelementptr inbounds i8, i8* %802, i64 3
  %804 = load i8, i8* %803, align 1
  %805 = zext i8 %804 to i32
  %806 = shl i32 %805, 24
  %807 = or i32 %801, %806
  store i32 %807, i32* %42, align 4
  %808 = load i32, i32* %42, align 4
  %809 = load i32, i32* %40, align 4
  %810 = sub nsw i32 0, %809
  %811 = icmp sge i32 %808, %810
  br i1 %811, label %812, label %848

812:                                              ; preds = %785
  %813 = load i32, i32* %42, align 4
  %814 = load i32, i32* %41, align 4
  %815 = icmp slt i32 %813, %814
  br i1 %815, label %816, label %848

816:                                              ; preds = %812
  %817 = load i32, i32* %42, align 4
  %818 = icmp sge i32 %817, 0
  br i1 %818, label %819, label %823

819:                                              ; preds = %816
  %820 = load i32, i32* %42, align 4
  %821 = load i32, i32* %40, align 4
  %822 = sub nsw i32 %820, %821
  br label %827

823:                                              ; preds = %816
  %824 = load i32, i32* %42, align 4
  %825 = load i32, i32* %41, align 4
  %826 = add nsw i32 %824, %825
  br label %827

827:                                              ; preds = %823, %819
  %828 = phi i32 [ %822, %819 ], [ %826, %823 ]
  store i32 %828, i32* %43, align 4
  %829 = load i32, i32* %43, align 4
  %830 = trunc i32 %829 to i8
  %831 = load i8*, i8** %38, align 8
  %832 = getelementptr inbounds i8, i8* %831, i64 0
  store i8 %830, i8* %832, align 1
  %833 = load i32, i32* %43, align 4
  %834 = ashr i32 %833, 8
  %835 = trunc i32 %834 to i8
  %836 = load i8*, i8** %38, align 8
  %837 = getelementptr inbounds i8, i8* %836, i64 1
  store i8 %835, i8* %837, align 1
  %838 = load i32, i32* %43, align 4
  %839 = ashr i32 %838, 16
  %840 = trunc i32 %839 to i8
  %841 = load i8*, i8** %38, align 8
  %842 = getelementptr inbounds i8, i8* %841, i64 2
  store i8 %840, i8* %842, align 1
  %843 = load i32, i32* %43, align 4
  %844 = ashr i32 %843, 24
  %845 = trunc i32 %844 to i8
  %846 = load i8*, i8** %38, align 8
  %847 = getelementptr inbounds i8, i8* %846, i64 3
  store i8 %845, i8* %847, align 1
  br label %848

848:                                              ; preds = %827, %812, %785
  %849 = load i8*, i8** %38, align 8
  %850 = getelementptr inbounds i8, i8* %849, i64 4
  store i8* %850, i8** %38, align 8
  %851 = load i32, i32* %40, align 4
  %852 = add nsw i32 %851, 5
  store i32 %852, i32* %40, align 4
  br label %772

853:                                              ; preds = %772
  br label %854

854:                                              ; preds = %853, %748
  br label %855

855:                                              ; preds = %854, %735, %707
  %856 = load i32, i32* @DECR_OK, align 4
  store i32 %856, i32* %6, align 4
  br label %857

857:                                              ; preds = %855, %696, %689, %671, %314, %276, %261
  %858 = load i32, i32* %6, align 4
  ret i32 %858
}

declare dso_local i32 @READ_BITS(i32, i32) #1

declare dso_local i32* @LENTABLE(i32) #1

declare dso_local i32 @BUILD_TABLE(i32) #1

declare dso_local i32 @READ_LENGTHS(i32, i32, i32) #1

declare dso_local i32 @ENSURE_BITS(i32) #1

declare dso_local i32 @READ_HUFFSYM(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
