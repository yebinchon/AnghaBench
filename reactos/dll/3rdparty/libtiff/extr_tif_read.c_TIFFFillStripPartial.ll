; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_read.c_TIFFFillStripPartial.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_read.c_TIFFFillStripPartial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_11__, i64, i32, i32 }
%struct.TYPE_11__ = type { i64*, i64*, i64, i32 }

@TIFFFillStripPartial.module = internal constant [21 x i8] c"TIFFFillStripPartial\00", align 16
@TIFF_TMSIZE_T_MAX = common dso_local global i32 0, align 4
@NOSTRIP = common dso_local global i32 0, align 4
@TIFF_MYBUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Data buffer too small to hold part of strip %lu\00", align 1
@TIFF_BUFFERMMAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Seek error at scanline %lu, strip %lu\00", align 1
@TIFF_NOBITREV = common dso_local global i32 0, align 4
@COMPRESSION_JPEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32, i32)* @TIFFFillStripPartial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFFillStripPartial(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 7
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %10, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = call i32 @_TIFFFillStriles(%struct.TYPE_12__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20, %4
  store i32 0, i32* %5, align 4
  br label %277

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @TIFF_TMSIZE_T_MAX, align 4
  %30 = sdiv i32 %29, 2
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %14, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* @NOSTRIP, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TIFF_MYBUFFER, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %43
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 (i32, i8*, i8*, i64, ...) @TIFFErrorExt(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFFillStripPartial.module, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %60)
  store i32 0, i32* %5, align 4
  br label %277

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %66, %63
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %79, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %11, align 4
  br label %91

90:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %90, %76
  %92 = load i32, i32* %11, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TIFF_BUFFERMMAP, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @memmove(i32 %105, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %94, %91
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %118, %121
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  store i64 %126, i64* %12, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %128 = load i64, i64* %12, align 8
  %129 = call i32 @SeekOK(%struct.TYPE_12__* %127, i64 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %111
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 8
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = call i32 (i32, i8*, i8*, i64, ...) @TIFFErrorExt(i32 %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFFillStripPartial.module, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %137, i64 %139)
  store i32 0, i32* %5, align 4
  br label %277

141:                                              ; preds = %111
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %142, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %11, align 4
  %150 = sub nsw i32 %148, %149
  store i32 %150, i32* %13, align 4
  br label %157

151:                                              ; preds = %141
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sub nsw i32 %154, %155
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %151, %147
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %166, %169
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %170, %173
  %175 = icmp sgt i64 %159, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %157
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = sext i32 %184 to i64
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %185, %188
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %189, %192
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %176, %157
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @TIFF_BUFFERMMAP, align 4
  %200 = and i32 %198, %199
  %201 = icmp eq i32 %200, 0
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %11, align 4
  %207 = call i32 @TIFFReadAndRealloc(%struct.TYPE_12__* %204, i32 %205, i32 %206, i32 1, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFFillStripPartial.module, i64 0, i64 0))
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %195
  store i32 0, i32* %5, align 4
  br label %277

210:                                              ; preds = %195
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %213, %216
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = sub nsw i64 %217, %219
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 3
  store i64 %220, i64* %222, align 8
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  store i64 %226, i64* %228, align 8
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 6
  store i32 %232, i32* %234, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 4
  store i32 %237, i32* %239, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @isFillOrder(%struct.TYPE_12__* %240, i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %269, label %246

246:                                              ; preds = %210
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @TIFF_NOBITREV, align 4
  %251 = and i32 %249, %250
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %269

253:                                              ; preds = %246
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @TIFF_BUFFERMMAP, align 4
  %258 = and i32 %256, %257
  %259 = icmp eq i32 %258, 0
  %260 = zext i1 %259 to i32
  %261 = call i32 @assert(i32 %260)
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %264, %265
  %267 = load i32, i32* %13, align 4
  %268 = call i32 @TIFFReverseBits(i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %253, %246, %210
  %270 = load i32, i32* %9, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %274 = load i32, i32* %7, align 4
  %275 = call i32 @TIFFStartStrip(%struct.TYPE_12__* %273, i32 %274)
  store i32 %275, i32* %5, align 4
  br label %277

276:                                              ; preds = %269
  store i32 1, i32* %5, align 4
  br label %277

277:                                              ; preds = %276, %272, %209, %131, %55, %26
  %278 = load i32, i32* %5, align 4
  ret i32 %278
}

declare dso_local i32 @_TIFFFillStriles(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, i64, ...) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @SeekOK(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @TIFFReadAndRealloc(%struct.TYPE_12__*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @isFillOrder(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @TIFFReverseBits(i32, i32) #1

declare dso_local i32 @TIFFStartStrip(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
