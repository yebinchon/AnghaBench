; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_EstimateStripByteCounts.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_EstimateStripByteCounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, i64, i64, i64, i32, i32*, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i64 }

@EstimateStripByteCounts.module = internal constant [24 x i8] c"EstimateStripByteCounts\00", align 16
@.str = private unnamed_addr constant [28 x i8] c"for \22StripByteCounts\22 array\00", align 1
@COMPRESSION_NONE = common dso_local global i64 0, align 8
@TIFF_BIGTIFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot determine size of unknown tag type %d\00", align 1
@PLANARCONFIG_SEPARATE = common dso_local global i64 0, align 8
@FIELD_STRIPBYTECOUNTS = common dso_local global i32 0, align 4
@FIELD_ROWSPERSTRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32)* @EstimateStripByteCounts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EstimateStripByteCounts(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %9, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = call i32 @_TIFFFillStrilesInternal(%struct.TYPE_16__* %21, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %275

25:                                               ; preds = %3
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @_TIFFfree(i32* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @_TIFFCheckMalloc(%struct.TYPE_16__* %36, i64 %39, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = inttoptr i64 %40 to i32*
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %275

49:                                               ; preds = %35
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @COMPRESSION_NONE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %204

55:                                               ; preds = %49
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = call i32 @TIFFGetFileSize(%struct.TYPE_16__* %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TIFF_BIGTIFF, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %65, 12
  %67 = sext i32 %66 to i64
  %68 = add i64 6, %67
  %69 = add i64 %68, 4
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  br label %78

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %72, 20
  %74 = sext i32 %73 to i64
  %75 = add i64 12, %74
  %76 = add i64 %75, 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %71, %64
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %79, %struct.TYPE_15__** %8, align 8
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %127, %78
  %82 = load i32, i32* %13, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %132

84:                                               ; preds = %81
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i64 @TIFFDataWidth(i32 %88)
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %14, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @TIFFErrorExt(i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @EstimateStripByteCounts.module, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %98)
  store i32 -1, i32* %4, align 4
  br label %275

100:                                              ; preds = %84
  %101 = load i64, i64* %14, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  store i32 %106, i32* %15, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @TIFF_BIGTIFF, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %100
  %114 = load i32, i32* %15, align 4
  %115 = icmp sle i32 %114, 4
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 0, i32* %15, align 4
  br label %117

117:                                              ; preds = %116, %113
  br label %123

118:                                              ; preds = %100
  %119 = load i32, i32* %15, align 4
  %120 = icmp sle i32 %119, 8
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %15, align 4
  br label %122

122:                                              ; preds = %121, %118
  br label %123

123:                                              ; preds = %122, %117
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %13, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 1
  store %struct.TYPE_15__* %131, %struct.TYPE_15__** %8, align 8
  br label %81

132:                                              ; preds = %81
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %11, align 4
  br label %142

138:                                              ; preds = %132
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %11, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %138, %136
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PLANARCONFIG_SEPARATE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sdiv i32 %152, %151
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %148, %142
  store i64 0, i64* %10, align 8
  br label %155

155:                                              ; preds = %168, %154
  %156 = load i64, i64* %10, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp slt i64 %156, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32 %162, i32* %167, align 4
  br label %168

168:                                              ; preds = %161
  %169 = load i64, i64* %10, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %10, align 8
  br label %155

171:                                              ; preds = %155
  %172 = load i64, i64* %10, align 8
  %173 = add nsw i64 %172, -1
  store i64 %173, i64* %10, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 5
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* %10, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %179, %185
  %187 = load i32, i32* %12, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %171
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 5
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* %10, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %190, %196
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %10, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32 %197, i32* %202, align 4
  br label %203

203:                                              ; preds = %189, %171
  br label %260

204:                                              ; preds = %49
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %206 = call i64 @isTiled(%struct.TYPE_16__* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %228

208:                                              ; preds = %204
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %210 = call i32 @TIFFTileSize64(%struct.TYPE_16__* %209)
  store i32 %210, i32* %16, align 4
  store i64 0, i64* %10, align 8
  br label %211

211:                                              ; preds = %224, %208
  %212 = load i64, i64* %10, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp slt i64 %212, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %211
  %218 = load i32, i32* %16, align 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* %10, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32 %218, i32* %223, align 4
  br label %224

224:                                              ; preds = %217
  %225 = load i64, i64* %10, align 8
  %226 = add nsw i64 %225, 1
  store i64 %226, i64* %10, align 8
  br label %211

227:                                              ; preds = %211
  br label %259

228:                                              ; preds = %204
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %230 = call i32 @TIFFScanlineSize64(%struct.TYPE_16__* %229)
  store i32 %230, i32* %17, align 4
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 6
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 7
  %236 = load i64, i64* %235, align 8
  %237 = sdiv i64 %233, %236
  store i64 %237, i64* %18, align 8
  store i64 0, i64* %10, align 8
  br label %238

238:                                              ; preds = %255, %228
  %239 = load i64, i64* %10, align 8
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp slt i64 %239, %242
  br i1 %243, label %244, label %258

244:                                              ; preds = %238
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  %247 = load i64, i64* %18, align 8
  %248 = mul nsw i64 %246, %247
  %249 = trunc i64 %248 to i32
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i64, i64* %10, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32 %249, i32* %254, align 4
  br label %255

255:                                              ; preds = %244
  %256 = load i64, i64* %10, align 8
  %257 = add nsw i64 %256, 1
  store i64 %257, i64* %10, align 8
  br label %238

258:                                              ; preds = %238
  br label %259

259:                                              ; preds = %258, %227
  br label %260

260:                                              ; preds = %259, %203
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %262 = load i32, i32* @FIELD_STRIPBYTECOUNTS, align 4
  %263 = call i32 @TIFFSetFieldBit(%struct.TYPE_16__* %261, i32 %262)
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %265 = load i32, i32* @FIELD_ROWSPERSTRIP, align 4
  %266 = call i32 @TIFFFieldSet(%struct.TYPE_16__* %264, i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %260
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 6
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 8
  store i64 %271, i64* %273, align 8
  br label %274

274:                                              ; preds = %268, %260
  store i32 1, i32* %4, align 4
  br label %275

275:                                              ; preds = %274, %92, %48, %24
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

declare dso_local i32 @_TIFFFillStrilesInternal(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @_TIFFfree(i32*) #1

declare dso_local i64 @_TIFFCheckMalloc(%struct.TYPE_16__*, i64, i32, i8*) #1

declare dso_local i32 @TIFFGetFileSize(%struct.TYPE_16__*) #1

declare dso_local i64 @TIFFDataWidth(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, i64) #1

declare dso_local i64 @isTiled(%struct.TYPE_16__*) #1

declare dso_local i32 @TIFFTileSize64(%struct.TYPE_16__*) #1

declare dso_local i32 @TIFFScanlineSize64(%struct.TYPE_16__*) #1

declare dso_local i32 @TIFFSetFieldBit(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @TIFFFieldSet(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
