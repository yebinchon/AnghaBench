; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteEncodedTile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteEncodedTile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i64, i64, i64, i64, i64, i32*, i32*, i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*, i32*, i64, i64)*, i32 (%struct.TYPE_16__*, i32*, i64)*, i32 (%struct.TYPE_16__*, i64)*, i32 (%struct.TYPE_16__*)*, i32, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64*, i64, i64, i64, i64, i32, i32, i32 }

@TIFFWriteEncodedTile.module = internal constant [21 x i8] c"TIFFWriteEncodedTile\00", align 16
@.str = private unnamed_addr constant [31 x i8] c"Tile %lu out of range, max %lu\00", align 1
@TIFF_BUF4WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Zero tiles\00", align 1
@TIFF_CODERSETUP = common dso_local global i32 0, align 4
@TIFF_POSTENCODE = common dso_local global i32 0, align 4
@COMPRESSION_NONE = common dso_local global i64 0, align 8
@TIFF_NOBITREV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TIFFWriteEncodedTile(%struct.TYPE_16__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = call i32 @WRITECHECKTILES(%struct.TYPE_16__* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFWriteEncodedTile.module, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i64 -1, i64* %5, align 8
  br label %316

17:                                               ; preds = %4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 16
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFWriteEncodedTile.module, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32)
  store i64 -1, i64* %5, align 8
  br label %316

34:                                               ; preds = %17
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = call i32 @BUFFERCHECK(%struct.TYPE_16__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i64 -1, i64* %5, align 8
  br label %316

39:                                               ; preds = %34
  %40 = load i32, i32* @TIFF_BUF4WRITE, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %39
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %58, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %55
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  %75 = trunc i64 %74 to i32
  %76 = call i64 @TIFFroundup_64(i32 %75, i32 1024)
  %77 = call i32 @TIFFWriteBufferSetup(%struct.TYPE_16__* %67, i32* null, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %66
  store i64 -1, i64* %5, align 8
  br label %316

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %55
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 15
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %39
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 7
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 8
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @TIFFhowmany_32(i32 %94, i64 %97)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %84
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 14
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFWriteEncodedTile.module, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i64 -1, i64* %5, align 8
  br label %316

106:                                              ; preds = %84
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %12, align 8
  %109 = urem i64 %107, %108
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = mul i64 %109, %112
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 4
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @TIFFhowmany_32(i32 %118, i64 %121)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %106
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 14
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFWriteEncodedTile.module, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i64 -1, i64* %5, align 8
  br label %316

130:                                              ; preds = %106
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* %12, align 8
  %133 = urem i64 %131, %132
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = mul i64 %133, %136
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 5
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @TIFF_CODERSETUP, align 4
  %144 = and i32 %142, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %130
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 13
  %149 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %148, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %151 = call i32 %149(%struct.TYPE_16__* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %146
  store i64 -1, i64* %5, align 8
  br label %316

154:                                              ; preds = %146
  %155 = load i32, i32* @TIFF_CODERSETUP, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %154, %130
  %161 = load i32, i32* @TIFF_POSTENCODE, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load i64, i64* %9, align 8
  %168 = icmp slt i64 %167, 1
  br i1 %168, label %175, label %169

169:                                              ; preds = %160
  %170 = load i64, i64* %9, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %170, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %169, %160
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %9, align 8
  br label %179

179:                                              ; preds = %175, %169
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @COMPRESSION_NONE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %226

185:                                              ; preds = %179
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 11
  %188 = load i32 (%struct.TYPE_16__*, i32*, i64)*, i32 (%struct.TYPE_16__*, i32*, i64)** %187, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = bitcast i8* %190 to i32*
  %192 = load i64, i64* %9, align 8
  %193 = call i32 %188(%struct.TYPE_16__* %189, i32* %191, i64 %192)
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @isFillOrder(%struct.TYPE_16__* %194, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %212, label %200

200:                                              ; preds = %185
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @TIFF_NOBITREV, align 4
  %205 = and i32 %203, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %200
  %208 = load i8*, i8** %8, align 8
  %209 = bitcast i8* %208 to i32*
  %210 = load i64, i64* %9, align 8
  %211 = call i32 @TIFFReverseBits(i32* %209, i64 %210)
  br label %212

212:                                              ; preds = %207, %200, %185
  %213 = load i64, i64* %9, align 8
  %214 = icmp sgt i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %217 = load i64, i64* %7, align 8
  %218 = load i8*, i8** %8, align 8
  %219 = bitcast i8* %218 to i32*
  %220 = load i64, i64* %9, align 8
  %221 = call i32 @TIFFAppendToStrip(%struct.TYPE_16__* %216, i64 %217, i32* %219, i64 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %215
  store i64 -1, i64* %5, align 8
  br label %316

224:                                              ; preds = %215, %212
  %225 = load i64, i64* %9, align 8
  store i64 %225, i64* %5, align 8
  br label %316

226:                                              ; preds = %179
  %227 = load i64, i64* %7, align 8
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = udiv i64 %227, %230
  store i64 %231, i64* %11, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 12
  %234 = load i32 (%struct.TYPE_16__*, i64)*, i32 (%struct.TYPE_16__*, i64)** %233, align 8
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %236 = load i64, i64* %11, align 8
  %237 = call i32 %234(%struct.TYPE_16__* %235, i64 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %226
  store i64 -1, i64* %5, align 8
  br label %316

240:                                              ; preds = %226
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 11
  %243 = load i32 (%struct.TYPE_16__*, i32*, i64)*, i32 (%struct.TYPE_16__*, i32*, i64)** %242, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %245 = load i8*, i8** %8, align 8
  %246 = bitcast i8* %245 to i32*
  %247 = load i64, i64* %9, align 8
  %248 = call i32 %243(%struct.TYPE_16__* %244, i32* %246, i64 %247)
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 10
  %251 = load i32 (%struct.TYPE_16__*, i32*, i64, i64)*, i32 (%struct.TYPE_16__*, i32*, i64, i64)** %250, align 8
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %253 = load i8*, i8** %8, align 8
  %254 = bitcast i8* %253 to i32*
  %255 = load i64, i64* %9, align 8
  %256 = load i64, i64* %11, align 8
  %257 = call i32 %251(%struct.TYPE_16__* %252, i32* %254, i64 %255, i64 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %240
  store i64 -1, i64* %5, align 8
  br label %316

260:                                              ; preds = %240
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 9
  %263 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %262, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %265 = call i32 %263(%struct.TYPE_16__* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %260
  store i64 -1, i64* %5, align 8
  br label %316

268:                                              ; preds = %260
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @isFillOrder(%struct.TYPE_16__* %269, i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %290, label %275

275:                                              ; preds = %268
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @TIFF_NOBITREV, align 4
  %280 = and i32 %278, %279
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %275
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 7
  %285 = load i32*, i32** %284, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @TIFFReverseBits(i32* %285, i64 %288)
  br label %290

290:                                              ; preds = %282, %275, %268
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = icmp sgt i64 %293, 0
  br i1 %294, label %295, label %307

295:                                              ; preds = %290
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %297 = load i64, i64* %7, align 8
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 7
  %300 = load i32*, i32** %299, align 8
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 3
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @TIFFAppendToStrip(%struct.TYPE_16__* %296, i64 %297, i32* %300, i64 %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %295
  store i64 -1, i64* %5, align 8
  br label %316

307:                                              ; preds = %295, %290
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 3
  store i64 0, i64* %309, align 8
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 7
  %312 = load i32*, i32** %311, align 8
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 8
  store i32* %312, i32** %314, align 8
  %315 = load i64, i64* %9, align 8
  store i64 %315, i64* %5, align 8
  br label %316

316:                                              ; preds = %307, %306, %267, %259, %239, %224, %223, %153, %125, %101, %79, %38, %25, %16
  %317 = load i64, i64* %5, align 8
  ret i64 %317
}

declare dso_local i32 @WRITECHECKTILES(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, ...) #1

declare dso_local i32 @BUFFERCHECK(%struct.TYPE_16__*) #1

declare dso_local i32 @TIFFWriteBufferSetup(%struct.TYPE_16__*, i32*, i64) #1

declare dso_local i64 @TIFFroundup_64(i32, i32) #1

declare dso_local i64 @TIFFhowmany_32(i32, i64) #1

declare dso_local i32 @isFillOrder(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @TIFFReverseBits(i32*, i64) #1

declare dso_local i32 @TIFFAppendToStrip(%struct.TYPE_16__*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
