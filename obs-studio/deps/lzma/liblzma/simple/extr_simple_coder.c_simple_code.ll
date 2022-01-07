; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/simple/extr_simple_coder.c_simple_code.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/simple/extr_simple_coder.c_simple_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i64, i32* }

@LZMA_SYNC_FLUSH = common dso_local global i64 0, align 8
@LZMA_OPTIONS_ERROR = common dso_local global i64 0, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@LZMA_STREAM_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i32*, i64*, i64, i32*, i64*, i64, i64)* @simple_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simple_code(%struct.TYPE_5__* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  %28 = load i64, i64* %19, align 8
  %29 = load i64, i64* @LZMA_SYNC_FLUSH, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %9
  %32 = load i64, i64* @LZMA_OPTIONS_ERROR, align 8
  store i64 %32, i64* %10, align 8
  br label %320

33:                                               ; preds = %9
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %33
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = load i64*, i64** %17, align 8
  %52 = load i64, i64* %18, align 8
  %53 = call i32 @lzma_bufcpy(i32* %44, i64* %46, i64 %49, i32* %50, i64* %51, i64 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %41
  %62 = load i64, i64* @LZMA_OK, align 8
  store i64 %62, i64* %10, align 8
  br label %320

63:                                               ; preds = %41
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i64, i64* @LZMA_STREAM_END, align 8
  store i64 %78, i64* %10, align 8
  br label %320

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79, %33
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i64, i64* %18, align 8
  %91 = load i64*, i64** %17, align 8
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %90, %92
  store i64 %93, i64* %20, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %96, %99
  store i64 %100, i64* %21, align 8
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* %21, align 8
  %103 = icmp ugt i64 %101, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %80
  %105 = load i64, i64* %21, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %202

107:                                              ; preds = %104, %80
  %108 = load i64*, i64** %17, align 8
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %22, align 8
  %110 = load i32*, i32** %16, align 8
  %111 = load i64*, i64** %17, align 8
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i64, i64* %21, align 8
  %122 = call i32 @memcpy(i32* %113, i32* %120, i64 %121)
  %123 = load i64, i64* %21, align 8
  %124 = load i64*, i64** %17, align 8
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, %123
  store i64 %126, i64* %124, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = load i64*, i64** %14, align 8
  %131 = load i64, i64* %15, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = load i64*, i64** %17, align 8
  %134 = load i64, i64* %18, align 8
  %135 = load i64, i64* %19, align 8
  %136 = call i64 @copy_or_code(%struct.TYPE_5__* %127, i32* %128, i32* %129, i64* %130, i64 %131, i32* %132, i64* %133, i64 %134, i64 %135)
  store i64 %136, i64* %23, align 8
  %137 = load i64, i64* %23, align 8
  %138 = load i64, i64* @LZMA_STREAM_END, align 8
  %139 = icmp ne i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i64, i64* %23, align 8
  %143 = load i64, i64* @LZMA_OK, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %107
  %146 = load i64, i64* %23, align 8
  store i64 %146, i64* %10, align 8
  br label %320

147:                                              ; preds = %107
  %148 = load i64*, i64** %17, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %22, align 8
  %151 = sub i64 %149, %150
  store i64 %151, i64* %24, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %153 = load i32*, i32** %16, align 8
  %154 = load i64, i64* %22, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i64, i64* %24, align 8
  %157 = call i8* @call_filter(%struct.TYPE_5__* %152, i32* %155, i64 %156)
  %158 = ptrtoint i8* %157 to i64
  store i64 %158, i64* %25, align 8
  %159 = load i64, i64* %24, align 8
  %160 = load i64, i64* %25, align 8
  %161 = sub i64 %159, %160
  store i64 %161, i64* %26, align 8
  %162 = load i64, i64* %26, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = sdiv i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = icmp ule i64 %162, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i64 0, i64* %172, align 8
  %173 = load i64, i64* %26, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %147
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  store i64 0, i64* %182, align 8
  br label %201

183:                                              ; preds = %147
  %184 = load i64, i64* %26, align 8
  %185 = icmp ugt i64 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load i64, i64* %26, align 8
  %188 = load i64*, i64** %17, align 8
  %189 = load i64, i64* %188, align 8
  %190 = sub i64 %189, %187
  store i64 %190, i64* %188, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 5
  %193 = load i32*, i32** %192, align 8
  %194 = load i32*, i32** %16, align 8
  %195 = load i64*, i64** %17, align 8
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i64, i64* %26, align 8
  %199 = call i32 @memcpy(i32* %193, i32* %197, i64 %198)
  br label %200

200:                                              ; preds = %186, %183
  br label %201

201:                                              ; preds = %200, %180
  br label %230

202:                                              ; preds = %104
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ugt i64 %205, 0
  br i1 %206, label %207, label %229

207:                                              ; preds = %202
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 5
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i64, i64* %21, align 8
  %219 = call i32 @memmove(i32* %210, i32* %217, i64 %218)
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = sub i64 %225, %222
  store i64 %226, i64* %224, align 8
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  store i64 0, i64* %228, align 8
  br label %229

229:                                              ; preds = %207, %202
  br label %230

230:                                              ; preds = %229, %201
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %233, 0
  %235 = zext i1 %234 to i32
  %236 = call i32 @assert(i32 %235)
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = icmp ugt i64 %239, 0
  br i1 %240, label %241, label %303

241:                                              ; preds = %230
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %243 = load i32*, i32** %12, align 8
  %244 = load i32*, i32** %13, align 8
  %245 = load i64*, i64** %14, align 8
  %246 = load i64, i64* %15, align 8
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 5
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* %19, align 8
  %257 = call i64 @copy_or_code(%struct.TYPE_5__* %242, i32* %243, i32* %244, i64* %245, i64 %246, i32* %249, i64* %251, i64 %255, i64 %256)
  store i64 %257, i64* %27, align 8
  %258 = load i64, i64* %27, align 8
  %259 = load i64, i64* @LZMA_STREAM_END, align 8
  %260 = icmp ne i64 %258, %259
  %261 = zext i1 %260 to i32
  %262 = call i32 @assert(i32 %261)
  %263 = load i64, i64* %27, align 8
  %264 = load i64, i64* @LZMA_OK, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %241
  %267 = load i64, i64* %27, align 8
  store i64 %267, i64* %10, align 8
  br label %320

268:                                              ; preds = %241
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 5
  %272 = load i32*, i32** %271, align 8
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = call i8* @call_filter(%struct.TYPE_5__* %269, i32* %272, i64 %275)
  %277 = ptrtoint i8* %276 to i64
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 1
  store i64 %277, i64* %279, align 8
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 4
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %268
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 1
  store i64 %287, i64* %289, align 8
  br label %290

290:                                              ; preds = %284, %268
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 5
  %293 = load i32*, i32** %292, align 8
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load i32*, i32** %16, align 8
  %300 = load i64*, i64** %17, align 8
  %301 = load i64, i64* %18, align 8
  %302 = call i32 @lzma_bufcpy(i32* %293, i64* %295, i64 %298, i32* %299, i64* %300, i64 %301)
  br label %303

303:                                              ; preds = %290, %230
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %318

308:                                              ; preds = %303
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = icmp eq i64 %311, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %308
  %317 = load i64, i64* @LZMA_STREAM_END, align 8
  store i64 %317, i64* %10, align 8
  br label %320

318:                                              ; preds = %308, %303
  %319 = load i64, i64* @LZMA_OK, align 8
  store i64 %319, i64* %10, align 8
  br label %320

320:                                              ; preds = %318, %316, %266, %145, %68, %61, %31
  %321 = load i64, i64* %10, align 8
  ret i64 %321
}

declare dso_local i32 @lzma_bufcpy(i32*, i64*, i64, i32*, i64*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @copy_or_code(%struct.TYPE_5__*, i32*, i32*, i64*, i64, i32*, i64*, i64, i64) #1

declare dso_local i8* @call_filter(%struct.TYPE_5__*, i32*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
