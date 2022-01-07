; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoRead.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@SECTORSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"IsoRead() Buffer = %p, N = %lu\0A\00", align 1
@ESUCCESS = common dso_local global i64 0, align 8
@SeekAbsolute = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"IsoRead() done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @IsoRead(i64 %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.TYPE_5__* @FsGetDeviceSpecific(i64 %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %11, align 8
  %24 = load i32, i32* @SECTORSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %28, i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @FsGetDeviceId(i64 %31)
  store i64 %32, i64* %15, align 8
  %33 = load i64*, i64** %9, align 8
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i64, i64* @ESUCCESS, align 8
  store i64 %42, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %293

43:                                               ; preds = %4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp sgt i64 %49, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %43
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %58, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %55, %43
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SECTORSIZE, align 4
  %69 = srem i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %148

71:                                               ; preds = %64
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SECTORSIZE, align 4
  %79 = sdiv i32 %77, %78
  %80 = add nsw i32 %74, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %16, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SECTORSIZE, align 4
  %86 = srem i32 %84, %85
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %17, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i32, i32* @SECTORSIZE, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %17, align 8
  %92 = sub nsw i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = call i64 @min(i64 %88, i32 %93)
  store i64 %94, i64* %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load i32, i32* @SECTORSIZE, align 4
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %96, %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i64 %99, i64* %100, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i32, i32* @SeekAbsolute, align 4
  %103 = call i64 @ArcSeek(i64 %101, %struct.TYPE_6__* %14, i32 %102)
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @ESUCCESS, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %71
  %108 = load i64, i64* %10, align 8
  store i64 %108, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %293

109:                                              ; preds = %71
  %110 = load i64, i64* %15, align 8
  %111 = load i32, i32* @SECTORSIZE, align 4
  %112 = call i64 @ArcRead(i64 %110, i32* %27, i32 %111, i64* %20)
  store i64 %112, i64* %10, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @ESUCCESS, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %121, label %116

116:                                              ; preds = %109
  %117 = load i64, i64* %20, align 8
  %118 = load i32, i32* @SECTORSIZE, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ne i64 %117, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116, %109
  %122 = load i64, i64* @EIO, align 8
  store i64 %122, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %293

123:                                              ; preds = %116
  %124 = load i32*, i32** %7, align 8
  %125 = load i64, i64* %17, align 8
  %126 = getelementptr inbounds i32, i32* %27, i64 %125
  %127 = load i64, i64* %18, align 8
  %128 = call i32 @RtlCopyMemory(i32* %124, i32* %126, i64 %127)
  %129 = load i64, i64* %18, align 8
  %130 = load i64*, i64** %9, align 8
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %129
  store i64 %132, i64* %130, align 8
  %133 = load i64, i64* %18, align 8
  %134 = load i64, i64* %8, align 8
  %135 = sub nsw i64 %134, %133
  store i64 %135, i64* %8, align 8
  %136 = load i64, i64* %18, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = ptrtoint i32* %143 to i64
  %145 = load i64, i64* %18, align 8
  %146 = add nsw i64 %144, %145
  %147 = inttoptr i64 %146 to i32*
  store i32* %147, i32** %7, align 8
  br label %148

148:                                              ; preds = %123, %64
  %149 = load i64, i64* %8, align 8
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %233

151:                                              ; preds = %148
  %152 = load i64, i64* %8, align 8
  %153 = load i32, i32* @SECTORSIZE, align 4
  %154 = sext i32 %153 to i64
  %155 = sdiv i64 %152, %154
  store i64 %155, i64* %19, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @SECTORSIZE, align 4
  %163 = sdiv i32 %161, %162
  %164 = add nsw i32 %158, %163
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i64 0, i64* %166, align 8
  %167 = load i64, i64* %16, align 8
  %168 = load i32, i32* @SECTORSIZE, align 4
  %169 = sext i32 %168 to i64
  %170 = mul nsw i64 %167, %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i64 %170, i64* %171, align 8
  %172 = load i64, i64* %15, align 8
  %173 = load i32, i32* @SeekAbsolute, align 4
  %174 = call i64 @ArcSeek(i64 %172, %struct.TYPE_6__* %14, i32 %173)
  store i64 %174, i64* %10, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* @ESUCCESS, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %151
  %179 = load i64, i64* %10, align 8
  store i64 %179, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %293

180:                                              ; preds = %151
  %181 = load i64, i64* %15, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = load i64, i64* %19, align 8
  %184 = load i32, i32* @SECTORSIZE, align 4
  %185 = sext i32 %184 to i64
  %186 = mul nsw i64 %183, %185
  %187 = trunc i64 %186 to i32
  %188 = call i64 @ArcRead(i64 %181, i32* %182, i32 %187, i64* %20)
  store i64 %188, i64* %10, align 8
  %189 = load i64, i64* %10, align 8
  %190 = load i64, i64* @ESUCCESS, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %199, label %192

192:                                              ; preds = %180
  %193 = load i64, i64* %20, align 8
  %194 = load i64, i64* %19, align 8
  %195 = load i32, i32* @SECTORSIZE, align 4
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 %194, %196
  %198 = icmp ne i64 %193, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %192, %180
  %200 = load i64, i64* @EIO, align 8
  store i64 %200, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %293

201:                                              ; preds = %192
  %202 = load i64, i64* %19, align 8
  %203 = load i32, i32* @SECTORSIZE, align 4
  %204 = sext i32 %203 to i64
  %205 = mul nsw i64 %202, %204
  %206 = load i64*, i64** %9, align 8
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, %205
  store i64 %208, i64* %206, align 8
  %209 = load i64, i64* %19, align 8
  %210 = load i32, i32* @SECTORSIZE, align 4
  %211 = sext i32 %210 to i64
  %212 = mul nsw i64 %209, %211
  %213 = load i64, i64* %8, align 8
  %214 = sub nsw i64 %213, %212
  store i64 %214, i64* %8, align 8
  %215 = load i64, i64* %19, align 8
  %216 = load i32, i32* @SECTORSIZE, align 4
  %217 = sext i32 %216 to i64
  %218 = mul nsw i64 %215, %217
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %222, %218
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %220, align 4
  %225 = load i32*, i32** %7, align 8
  %226 = ptrtoint i32* %225 to i64
  %227 = load i64, i64* %19, align 8
  %228 = load i32, i32* @SECTORSIZE, align 4
  %229 = sext i32 %228 to i64
  %230 = mul nsw i64 %227, %229
  %231 = add nsw i64 %226, %230
  %232 = inttoptr i64 %231 to i32*
  store i32* %232, i32** %7, align 8
  br label %233

233:                                              ; preds = %201, %148
  %234 = load i64, i64* %8, align 8
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %290

236:                                              ; preds = %233
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @SECTORSIZE, align 4
  %244 = sdiv i32 %242, %243
  %245 = add nsw i32 %239, %244
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i64 0, i64* %247, align 8
  %248 = load i64, i64* %16, align 8
  %249 = load i32, i32* @SECTORSIZE, align 4
  %250 = sext i32 %249 to i64
  %251 = mul nsw i64 %248, %250
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i64 %251, i64* %252, align 8
  %253 = load i64, i64* %15, align 8
  %254 = load i32, i32* @SeekAbsolute, align 4
  %255 = call i64 @ArcSeek(i64 %253, %struct.TYPE_6__* %14, i32 %254)
  store i64 %255, i64* %10, align 8
  %256 = load i64, i64* %10, align 8
  %257 = load i64, i64* @ESUCCESS, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %236
  %260 = load i64, i64* %10, align 8
  store i64 %260, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %293

261:                                              ; preds = %236
  %262 = load i64, i64* %15, align 8
  %263 = load i32, i32* @SECTORSIZE, align 4
  %264 = call i64 @ArcRead(i64 %262, i32* %27, i32 %263, i64* %20)
  store i64 %264, i64* %10, align 8
  %265 = load i64, i64* %10, align 8
  %266 = load i64, i64* @ESUCCESS, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %273, label %268

268:                                              ; preds = %261
  %269 = load i64, i64* %20, align 8
  %270 = load i32, i32* @SECTORSIZE, align 4
  %271 = sext i32 %270 to i64
  %272 = icmp ne i64 %269, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %268, %261
  %274 = load i64, i64* @EIO, align 8
  store i64 %274, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %293

275:                                              ; preds = %268
  %276 = load i32*, i32** %7, align 8
  %277 = load i64, i64* %8, align 8
  %278 = call i32 @RtlCopyMemory(i32* %276, i32* %27, i64 %277)
  %279 = load i64, i64* %8, align 8
  %280 = load i64*, i64** %9, align 8
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %281, %279
  store i64 %282, i64* %280, align 8
  %283 = load i64, i64* %8, align 8
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %287, %283
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %285, align 4
  br label %290

290:                                              ; preds = %275, %233
  %291 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %292 = load i64, i64* @ESUCCESS, align 8
  store i64 %292, i64* %5, align 8
  store i32 1, i32* %21, align 4
  br label %293

293:                                              ; preds = %290, %273, %259, %199, %178, %121, %107, %41
  %294 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %294)
  %295 = load i64, i64* %5, align 8
  ret i64 %295
}

declare dso_local %struct.TYPE_5__* @FsGetDeviceSpecific(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @FsGetDeviceId(i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @ArcSeek(i64, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @ArcRead(i64, i32*, i32, i64*) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
