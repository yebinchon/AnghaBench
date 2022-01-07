; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_Uncompress_Phrases40.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_Uncompress_Phrases40.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64*, i64* }

@.str = private unnamed_addr constant [10 x i8] c"|PhrIndex\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"|PhrImage\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [95 x i8] c"Index: Magic=%08x #entries=%u CpsdSize=%u PhrImgSize=%u\0A\09PhrImgCprsdSize=%u 0=%u bc=%x ukn=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"size mismatch %u %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @HLPFILE_Uncompress_Phrases40 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HLPFILE_Uncompress_Phrases40(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = call i32 @HLPFILE_FindSubFile(%struct.TYPE_4__* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32** %7, i32** %8)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = call i32 @HLPFILE_FindSubFile(%struct.TYPE_4__* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32** %9, i32** %10)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %327

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 9
  %28 = getelementptr inbounds i32, i32* %27, i64 28
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @GET_USHORT(i32* %29, i32 33)
  %31 = and i32 %30, 15
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %14, align 2
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @GET_USHORT(i32* %33, i32 13)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 %34, i32* %4, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @GET_UINT(i32* %37, i32 9)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @GET_UINT(i32* %39, i32 13)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @GET_UINT(i32* %41, i32 17)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @GET_UINT(i32* %43, i32 21)
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @GET_UINT(i32* %45, i32 25)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @GET_UINT(i32* %47, i32 29)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @GET_USHORT(i32* %49, i32 33)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @GET_USHORT(i32* %51, i32 35)
  %53 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @GET_UINT(i32* %54, i32 21)
  store i32 %55, i32* %5, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @GET_UINT(i32* %56, i32 25)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %25
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 9
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @HLPFILE_UncompressedLZ77_Size(i32* %64, i32* %65)
  %67 = icmp ne i32 %62, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 9
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @HLPFILE_UncompressedLZ77_Size(i32* %71, i32* %72)
  %74 = call i32 @WINE_WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 9
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @HLPFILE_UncompressedLZ77_Size(i32* %77, i32* %78)
  %80 = call i32 @max(i32 %75, i32 %79)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %68, %61, %25
  %82 = call i32 (...) @GetProcessHeap()
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = trunc i64 %86 to i32
  %88 = call i8* @HeapAlloc(i32 %82, i32 0, i32 %87)
  %89 = bitcast i8* %88 to i64*
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  store i64* %89, i64** %91, align 8
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load i32, i32* %5, align 4
  %94 = call i8* @HeapAlloc(i32 %92, i32 0, i32 %93)
  %95 = bitcast i8* %94 to i64*
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i64* %95, i64** %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i64*, i64** %99, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %81
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i64*, i64** %104, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %119, label %107

107:                                              ; preds = %102, %81
  %108 = call i32 (...) @GetProcessHeap()
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = call i32 @HeapFree(i32 %108, i32 0, i64* %111)
  %113 = call i32 (...) @GetProcessHeap()
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = call i32 @HeapFree(i32 %113, i32 0, i64* %116)
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %2, align 4
  br label %327

119:                                              ; preds = %102
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  store i64 0, i64* %123, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 -1
  store i32* %125, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %298, %119
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %130, label %301

130:                                              ; preds = %126
  store i16 1, i16* %15, align 2
  br label %131

131:                                              ; preds = %153, %130
  %132 = load i32, i32* %12, align 4
  %133 = shl i32 %132, 1
  store i32 %133, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %12, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i32
  br label %149

142:                                              ; preds = %131
  %143 = load i32*, i32** %11, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %11, align 8
  %145 = load i32, i32* %144, align 4
  store i32 1, i32* %12, align 4
  %146 = and i32 %145, 1
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i32
  br label %149

149:                                              ; preds = %142, %135
  %150 = phi i32 [ %141, %135 ], [ %148, %142 ]
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %152
  %154 = load i16, i16* %14, align 2
  %155 = zext i16 %154 to i32
  %156 = shl i32 1, %155
  %157 = load i16, i16* %15, align 2
  %158 = zext i16 %157 to i32
  %159 = add nsw i32 %158, %156
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %15, align 2
  br label %131

161:                                              ; preds = %149
  %162 = load i32, i32* %12, align 4
  %163 = shl i32 %162, 1
  store i32 %163, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = load i32*, i32** %11, align 8
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %12, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %180

171:                                              ; preds = %161
  %172 = load i32*, i32** %11, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %11, align 8
  %174 = load i32, i32* %173, align 4
  store i32 1, i32* %12, align 4
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %171, %165
  %178 = load i16, i16* %15, align 2
  %179 = add i16 %178, 1
  store i16 %179, i16* %15, align 2
  br label %180

180:                                              ; preds = %177, %171, %165
  %181 = load i16, i16* %14, align 2
  %182 = zext i16 %181 to i32
  %183 = icmp sgt i32 %182, 1
  br i1 %183, label %184, label %205

184:                                              ; preds = %180
  %185 = load i32, i32* %12, align 4
  %186 = shl i32 %185, 1
  store i32 %186, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %12, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %200, label %205

194:                                              ; preds = %184
  %195 = load i32*, i32** %11, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %11, align 8
  %197 = load i32, i32* %196, align 4
  store i32 1, i32* %12, align 4
  %198 = and i32 %197, 1
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %194, %188
  %201 = load i16, i16* %15, align 2
  %202 = zext i16 %201 to i32
  %203 = add nsw i32 %202, 2
  %204 = trunc i32 %203 to i16
  store i16 %204, i16* %15, align 2
  br label %205

205:                                              ; preds = %200, %194, %188, %180
  %206 = load i16, i16* %14, align 2
  %207 = zext i16 %206 to i32
  %208 = icmp sgt i32 %207, 2
  br i1 %208, label %209, label %230

209:                                              ; preds = %205
  %210 = load i32, i32* %12, align 4
  %211 = shl i32 %210, 1
  store i32 %211, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load i32*, i32** %11, align 8
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %12, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %225, label %230

219:                                              ; preds = %209
  %220 = load i32*, i32** %11, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %11, align 8
  %222 = load i32, i32* %221, align 4
  store i32 1, i32* %12, align 4
  %223 = and i32 %222, 1
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %219, %213
  %226 = load i16, i16* %15, align 2
  %227 = zext i16 %226 to i32
  %228 = add nsw i32 %227, 4
  %229 = trunc i32 %228 to i16
  store i16 %229, i16* %15, align 2
  br label %230

230:                                              ; preds = %225, %219, %213, %205
  %231 = load i16, i16* %14, align 2
  %232 = zext i16 %231 to i32
  %233 = icmp sgt i32 %232, 3
  br i1 %233, label %234, label %255

234:                                              ; preds = %230
  %235 = load i32, i32* %12, align 4
  %236 = shl i32 %235, 1
  store i32 %236, i32* %12, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load i32*, i32** %11, align 8
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %12, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %250, label %255

244:                                              ; preds = %234
  %245 = load i32*, i32** %11, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %11, align 8
  %247 = load i32, i32* %246, align 4
  store i32 1, i32* %12, align 4
  %248 = and i32 %247, 1
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %244, %238
  %251 = load i16, i16* %15, align 2
  %252 = zext i16 %251 to i32
  %253 = add nsw i32 %252, 8
  %254 = trunc i32 %253 to i16
  store i16 %254, i16* %15, align 2
  br label %255

255:                                              ; preds = %250, %244, %238, %230
  %256 = load i16, i16* %14, align 2
  %257 = zext i16 %256 to i32
  %258 = icmp sgt i32 %257, 4
  br i1 %258, label %259, label %280

259:                                              ; preds = %255
  %260 = load i32, i32* %12, align 4
  %261 = shl i32 %260, 1
  store i32 %261, i32* %12, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %259
  %264 = load i32*, i32** %11, align 8
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %12, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %275, label %280

269:                                              ; preds = %259
  %270 = load i32*, i32** %11, align 8
  %271 = getelementptr inbounds i32, i32* %270, i32 1
  store i32* %271, i32** %11, align 8
  %272 = load i32, i32* %271, align 4
  store i32 1, i32* %12, align 4
  %273 = and i32 %272, 1
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %269, %263
  %276 = load i16, i16* %15, align 2
  %277 = zext i16 %276 to i32
  %278 = add nsw i32 %277, 16
  %279 = trunc i32 %278 to i16
  store i16 %279, i16* %15, align 2
  br label %280

280:                                              ; preds = %275, %269, %263, %255
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 3
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %13, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = load i16, i16* %15, align 2
  %289 = zext i16 %288 to i64
  %290 = add nsw i64 %287, %289
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 3
  %293 = load i64*, i64** %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = add i32 %294, 1
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %293, i64 %296
  store i64 %290, i64* %297, align 8
  br label %298

298:                                              ; preds = %280
  %299 = load i32, i32* %13, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %13, align 4
  br label %126

301:                                              ; preds = %126
  %302 = load i32, i32* %5, align 4
  %303 = load i32, i32* %6, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %313

305:                                              ; preds = %301
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 2
  %308 = load i64*, i64** %307, align 8
  %309 = load i32*, i32** %9, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 9
  %311 = load i32, i32* %5, align 4
  %312 = call i32 @memcpy(i64* %308, i32* %310, i32 %311)
  br label %322

313:                                              ; preds = %301
  %314 = load i32*, i32** %9, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 9
  %316 = load i32*, i32** %10, align 8
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 2
  %319 = load i64*, i64** %318, align 8
  %320 = bitcast i64* %319 to i32*
  %321 = call i32 @HLPFILE_UncompressLZ77(i32* %315, i32* %316, i32* %320)
  br label %322

322:                                              ; preds = %313, %305
  %323 = load i32, i32* @TRUE, align 4
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 1
  store i32 %323, i32* %325, align 4
  %326 = load i32, i32* @TRUE, align 4
  store i32 %326, i32* %2, align 4
  br label %327

327:                                              ; preds = %322, %107, %23
  %328 = load i32, i32* %2, align 4
  ret i32 %328
}

declare dso_local i32 @HLPFILE_FindSubFile(%struct.TYPE_4__*, i8*, i32**, i32**) #1

declare dso_local i32 @GET_USHORT(i32*, i32) #1

declare dso_local i32 @WINE_TRACE(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GET_UINT(i32*, i32) #1

declare dso_local i32 @HLPFILE_UncompressedLZ77_Size(i32*, i32*) #1

declare dso_local i32 @WINE_WARN(i8*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @HLPFILE_UncompressLZ77(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
