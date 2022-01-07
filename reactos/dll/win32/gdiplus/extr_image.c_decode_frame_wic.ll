; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_decode_frame_wic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_decode_frame_wic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_22__, i32* }
%struct.TYPE_22__ = type { double, double, i32, i32, i32, %struct.TYPE_23__*, i32* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i64 }

@Ok = common dso_local global i64 0, align 8
@WICBitmapPaletteTypeFixedHalftone256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%p,%u,%p\0A\00", align 1
@pixel_formats = common dso_local global %struct.TYPE_25__* null, align 8
@GUID_WICPixelFormat32bppBGRA = common dso_local global i32 0, align 4
@PixelFormat32bppARGB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s => %#x\0A\00", align 1
@ImageLockModeWrite = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@IID_IWICMetadataBlockReader = common dso_local global i32 0, align 4
@ImageFlagsReadOnly = common dso_local global i32 0, align 4
@ImageFlagsHasRealPixelSize = common dso_local global i32 0, align 4
@ImageFlagsHasRealDPI = common dso_local global i32 0, align 4
@GUID_WICPixelFormat2bppGray = common dso_local global i32 0, align 4
@GUID_WICPixelFormat4bppGray = common dso_local global i32 0, align 4
@GUID_WICPixelFormat8bppGray = common dso_local global i32 0, align 4
@GUID_WICPixelFormat16bppGray = common dso_local global i32 0, align 4
@ImageFlagsColorSpaceGRAY = common dso_local global i32 0, align 4
@ImageFlagsColorSpaceRGB = common dso_local global i32 0, align 4
@GUID_WICPixelFormatBlackWhite = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"=> %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i32 (%struct.TYPE_20__*, i32*, i32)*, %struct.TYPE_22__**)* @decode_frame_wic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_frame_wic(i32* %0, i32 %1, i32 %2, i32 (%struct.TYPE_20__*, i32*, i32)* %3, %struct.TYPE_22__** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.TYPE_20__*, i32*, i32)*, align 8
  %10 = alloca %struct.TYPE_22__**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_24__, align 8
  %26 = alloca %struct.TYPE_21__, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 (%struct.TYPE_20__*, i32*, i32)* %3, i32 (%struct.TYPE_20__*, i32*, i32)** %9, align 8
  store %struct.TYPE_22__** %4, %struct.TYPE_22__*** %10, align 8
  %30 = load i64, i64* @Ok, align 8
  store i64 %30, i64* %11, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %18, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %19, align 8
  %31 = load i32, i32* @WICBitmapPaletteTypeFixedHalftone256, align 4
  store i32 %31, i32* %20, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = bitcast i32* %32 to %struct.TYPE_22__*
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %36 = call i32 (i8*, %struct.TYPE_22__*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %33, i32 %34, %struct.TYPE_22__** %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @IWICBitmapDecoder_GetFrameCount(i32* %37, i32* %24)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @IWICBitmapDecoder_GetFrame(i32* %39, i32 %40, i32** %14)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i64 @SUCCEEDED(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %268

45:                                               ; preds = %5
  %46 = load i32*, i32** %14, align 8
  %47 = call i64 @IWICBitmapFrameDecode_GetPixelFormat(i32* %46, i32* %17)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = call i64 @SUCCEEDED(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %106

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %93, label %54

54:                                               ; preds = %51
  store i32 0, i32* %21, align 4
  br label %55

55:                                               ; preds = %89, %54
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** @pixel_formats, align 8
  %57 = load i32, i32* %21, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %92

63:                                               ; preds = %55
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** @pixel_formats, align 8
  %65 = load i32, i32* %21, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @IsEqualGUID(i32* %17, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %63
  %73 = load i32*, i32** %14, align 8
  store i32* %73, i32** %15, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @IWICBitmapSource_AddRef(i32* %74)
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** @pixel_formats, align 8
  %77 = load i32, i32* %21, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %18, align 4
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** @pixel_formats, align 8
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %20, align 4
  br label %92

88:                                               ; preds = %63
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %21, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %21, align 4
  br label %55

92:                                               ; preds = %72, %55
  br label %93

93:                                               ; preds = %92, %51
  %94 = load i32*, i32** %15, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i32*, i32** %14, align 8
  %98 = call i64 @WICConvertBitmapSource(i32* @GUID_WICPixelFormat32bppBGRA, i32* %97, i32** %15)
  store i64 %98, i64* %13, align 8
  %99 = load i32, i32* @PixelFormat32bppARGB, align 4
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %96, %93
  %101 = call i32 @wine_dbgstr_guid(i32* %17)
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to %struct.TYPE_22__*
  %104 = load i32, i32* %18, align 4
  %105 = call i32 (i8*, %struct.TYPE_22__*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_22__* %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %45
  %107 = load i64, i64* %13, align 8
  %108 = call i64 @SUCCEEDED(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %223

110:                                              ; preds = %106
  %111 = load i32*, i32** %15, align 8
  %112 = call i64 @IWICBitmapSource_GetSize(i32* %111, i32* %22, i32* %23)
  store i64 %112, i64* %13, align 8
  %113 = load i64, i64* %13, align 8
  %114 = call i64 @SUCCEEDED(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %23, align 4
  %119 = load i32, i32* %18, align 4
  %120 = call i64 @GdipCreateBitmapFromScan0(i32 %117, i32 %118, i32 0, i32 %119, i32* null, %struct.TYPE_20__** %12)
  store i64 %120, i64* %11, align 8
  br label %121

121:                                              ; preds = %116, %110
  %122 = load i64, i64* %13, align 8
  %123 = call i64 @SUCCEEDED(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %220

125:                                              ; preds = %121
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @Ok, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %220

129:                                              ; preds = %125
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %131 = load i32, i32* @ImageLockModeWrite, align 4
  %132 = load i32, i32* %18, align 4
  %133 = call i64 @GdipBitmapLockBits(%struct.TYPE_20__* %130, i32* null, i32 %131, i32 %132, %struct.TYPE_24__* %25)
  store i64 %133, i64* %11, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* @Ok, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %177

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 3
  store i64 0, i64* %138, align 8
  %139 = load i32, i32* %22, align 4
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  store i32 %139, i32* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  store i32 1, i32* %141, align 4
  store i32 0, i32* %21, align 4
  br label %142

142:                                              ; preds = %171, %137
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %23, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %174

146:                                              ; preds = %142
  %147 = load i32, i32* %21, align 4
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  store i32 %147, i32* %148, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @abs(i32 %151) #3
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @abs(i32 %154) #3
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i32*
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %21, align 4
  %162 = mul nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %158, i64 %163
  %165 = call i64 @IWICBitmapSource_CopyPixels(i32* %149, %struct.TYPE_21__* %26, i32 %152, i32 %155, i32* %164)
  store i64 %165, i64* %13, align 8
  %166 = load i64, i64* %13, align 8
  %167 = call i64 @FAILED(i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %146
  br label %174

170:                                              ; preds = %146
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %21, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %21, align 4
  br label %142

174:                                              ; preds = %169, %142
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %176 = call i32 @GdipBitmapUnlockBits(%struct.TYPE_20__* %175, %struct.TYPE_24__* %25)
  br label %177

177:                                              ; preds = %174, %129
  %178 = load i64, i64* %13, align 8
  %179 = call i64 @SUCCEEDED(i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %177
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* @Ok, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  store %struct.TYPE_22__* %187, %struct.TYPE_22__** %188, align 8
  br label %194

189:                                              ; preds = %181, %177
  %190 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %190, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = call i32 @GdipDisposeImage(%struct.TYPE_22__* %192)
  br label %194

194:                                              ; preds = %189, %185
  %195 = load i64, i64* %13, align 8
  %196 = call i64 @SUCCEEDED(i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %194
  %199 = load i64, i64* %11, align 8
  %200 = load i64, i64* @Ok, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %219

202:                                              ; preds = %198
  %203 = load i32*, i32** %15, align 8
  %204 = call i64 @IWICBitmapSource_GetResolution(i32* %203, double* %27, double* %28)
  store i64 %204, i64* %13, align 8
  %205 = load i64, i64* %13, align 8
  %206 = call i64 @SUCCEEDED(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %202
  %209 = load double, double* %27, align 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  store double %209, double* %212, align 8
  %213 = load double, double* %28, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 1
  store double %213, double* %216, align 8
  br label %217

217:                                              ; preds = %208, %202
  %218 = load i64, i64* @S_OK, align 8
  store i64 %218, i64* %13, align 8
  br label %219

219:                                              ; preds = %217, %198, %194
  br label %220

220:                                              ; preds = %219, %125, %121
  %221 = load i32*, i32** %15, align 8
  %222 = call i32 @IWICBitmapSource_Release(i32* %221)
  br label %223

223:                                              ; preds = %220, %106
  %224 = load i64, i64* %13, align 8
  %225 = call i64 @SUCCEEDED(i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %267

227:                                              ; preds = %223
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  store i32* null, i32** %229, align 8
  %230 = load i32 (%struct.TYPE_20__*, i32*, i32)*, i32 (%struct.TYPE_20__*, i32*, i32)** %9, align 8
  %231 = icmp ne i32 (%struct.TYPE_20__*, i32*, i32)* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load i32 (%struct.TYPE_20__*, i32*, i32)*, i32 (%struct.TYPE_20__*, i32*, i32)** %9, align 8
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %235 = load i32*, i32** %6, align 8
  %236 = load i32, i32* %8, align 4
  %237 = call i32 %233(%struct.TYPE_20__* %234, i32* %235, i32 %236)
  br label %261

238:                                              ; preds = %227
  %239 = load i32*, i32** %14, align 8
  %240 = bitcast i32** %16 to i8**
  %241 = call i64 @IWICBitmapFrameDecode_QueryInterface(i32* %239, i32* @IID_IWICMetadataBlockReader, i8** %240)
  %242 = load i64, i64* @S_OK, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %260

244:                                              ; preds = %238
  store i32 0, i32* %29, align 4
  %245 = load i32*, i32** %16, align 8
  %246 = call i64 @IWICMetadataBlockReader_GetCount(i32* %245, i32* %29)
  %247 = load i64, i64* @S_OK, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %244
  %250 = load i32, i32* %29, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = load i32*, i32** %16, align 8
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 1
  %256 = call i32 @IWICMetadataBlockReader_GetReaderByIndex(i32* %253, i32 0, i32** %255)
  br label %257

257:                                              ; preds = %252, %249, %244
  %258 = load i32*, i32** %16, align 8
  %259 = call i32 @IWICMetadataBlockReader_Release(i32* %258)
  br label %260

260:                                              ; preds = %257, %238
  br label %261

261:                                              ; preds = %260, %232
  %262 = load i32*, i32** %14, align 8
  %263 = load i32, i32* %20, align 4
  %264 = call %struct.TYPE_23__* @get_palette(i32* %262, i32 %263)
  store %struct.TYPE_23__* %264, %struct.TYPE_23__** %19, align 8
  %265 = load i32*, i32** %14, align 8
  %266 = call i32 @IWICBitmapFrameDecode_Release(i32* %265)
  br label %267

267:                                              ; preds = %261, %223
  br label %268

268:                                              ; preds = %267, %5
  %269 = load i64, i64* %13, align 8
  %270 = call i64 @FAILED(i64 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %268
  %273 = load i64, i64* %11, align 8
  %274 = load i64, i64* @Ok, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load i64, i64* %13, align 8
  %278 = call i64 @hresult_to_status(i64 %277)
  store i64 %278, i64* %11, align 8
  br label %279

279:                                              ; preds = %276, %272, %268
  %280 = load i64, i64* %11, align 8
  %281 = load i64, i64* @Ok, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %360

283:                                              ; preds = %279
  %284 = load i32, i32* @ImageFlagsReadOnly, align 4
  %285 = load i32, i32* @ImageFlagsHasRealPixelSize, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @ImageFlagsHasRealDPI, align 4
  %288 = or i32 %286, %287
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %288
  store i32 %293, i32* %291, align 8
  %294 = call i64 @IsEqualGUID(i32* %17, i32* @GUID_WICPixelFormat2bppGray)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %305, label %296

296:                                              ; preds = %283
  %297 = call i64 @IsEqualGUID(i32* %17, i32* @GUID_WICPixelFormat4bppGray)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %305, label %299

299:                                              ; preds = %296
  %300 = call i64 @IsEqualGUID(i32* %17, i32* @GUID_WICPixelFormat8bppGray)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = call i64 @IsEqualGUID(i32* %17, i32* @GUID_WICPixelFormat16bppGray)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %302, %299, %296, %283
  %306 = load i32, i32* @ImageFlagsColorSpaceGRAY, align 4
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %310, %306
  store i32 %311, i32* %309, align 8
  br label %319

312:                                              ; preds = %302
  %313 = load i32, i32* @ImageFlagsColorSpaceRGB, align 4
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, %313
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %312, %305
  %320 = load i32, i32* %24, align 4
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 3
  store i32 %320, i32* %323, align 4
  %324 = load i32, i32* %8, align 4
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 4
  store i32 %324, i32* %327, align 8
  %328 = load i32*, i32** %6, align 8
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 6
  store i32* %328, i32** %331, align 8
  %332 = load i32*, i32** %6, align 8
  %333 = call i32 @IWICBitmapDecoder_AddRef(i32* %332)
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %335 = icmp ne %struct.TYPE_23__* %334, null
  br i1 %335, label %336, label %346

336:                                              ; preds = %319
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 5
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %339, align 8
  %341 = call i32 @heap_free(%struct.TYPE_23__* %340)
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 5
  store %struct.TYPE_23__* %342, %struct.TYPE_23__** %345, align 8
  br label %356

346:                                              ; preds = %319
  %347 = call i64 @IsEqualGUID(i32* %17, i32* @GUID_WICPixelFormatBlackWhite)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %355

349:                                              ; preds = %346
  %350 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %351 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i32 0, i32 5
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 0
  store i64 0, i64* %354, align 8
  br label %355

355:                                              ; preds = %349, %346
  br label %356

356:                                              ; preds = %355, %336
  %357 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %357, align 8
  %359 = call i32 (i8*, %struct.TYPE_22__*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_22__* %358)
  br label %360

360:                                              ; preds = %356, %279
  %361 = load i64, i64* %11, align 8
  ret i64 %361
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_22__*, ...) #1

declare dso_local i32 @IWICBitmapDecoder_GetFrameCount(i32*, i32*) #1

declare dso_local i64 @IWICBitmapDecoder_GetFrame(i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IWICBitmapFrameDecode_GetPixelFormat(i32*, i32*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @IWICBitmapSource_AddRef(i32*) #1

declare dso_local i64 @WICConvertBitmapSource(i32*, i32*, i32**) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i64 @IWICBitmapSource_GetSize(i32*, i32*, i32*) #1

declare dso_local i64 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, %struct.TYPE_20__**) #1

declare dso_local i64 @GdipBitmapLockBits(%struct.TYPE_20__*, i32*, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @IWICBitmapSource_CopyPixels(i32*, %struct.TYPE_21__*, i32, i32, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @GdipBitmapUnlockBits(%struct.TYPE_20__*, %struct.TYPE_24__*) #1

declare dso_local i32 @GdipDisposeImage(%struct.TYPE_22__*) #1

declare dso_local i64 @IWICBitmapSource_GetResolution(i32*, double*, double*) #1

declare dso_local i32 @IWICBitmapSource_Release(i32*) #1

declare dso_local i64 @IWICBitmapFrameDecode_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IWICMetadataBlockReader_GetCount(i32*, i32*) #1

declare dso_local i32 @IWICMetadataBlockReader_GetReaderByIndex(i32*, i32, i32**) #1

declare dso_local i32 @IWICMetadataBlockReader_Release(i32*) #1

declare dso_local %struct.TYPE_23__* @get_palette(i32*, i32) #1

declare dso_local i32 @IWICBitmapFrameDecode_Release(i32*) #1

declare dso_local i64 @hresult_to_status(i64) #1

declare dso_local i32 @IWICBitmapDecoder_AddRef(i32*) #1

declare dso_local i32 @heap_free(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
