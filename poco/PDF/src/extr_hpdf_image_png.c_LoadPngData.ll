; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_LoadPngData.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_LoadPngData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__*, i32, i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c" HPDF_Image_LoadPngImage\0A\00", align 1
@PNG_LIBPNG_VER_STRING = common dso_local global i32 0, align 4
@PngErrorFunc = common dso_local global i32 0, align 4
@HPDF_FAILD_TO_ALLOC_MEM = common dso_local global i64 0, align 8
@HPDF_PNG_BYTES_TO_CHECK = common dso_local global i32 0, align 4
@PngReadFunc = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@PNG_INFO_tRNS = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_XOBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"XObject\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"BitsPerComponent\00", align 1
@HPDF_INVALID_PNG_IMAGE = common dso_local global i64 0, align 8
@HPDF_FILE_IO_ERROR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"SMask\00", align 1
@PNG_COLOR_MASK_ALPHA = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@PNG_COLOR_TYPE_GRAY = common dso_local global i32 0, align 4
@PngBeforeWrite = common dso_local global i32 0, align 4
@PngAfterWrite = common dso_local global i32 0, align 4
@PNG_INTERLACE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i64, i64, i64)* @LoadPngData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LoadPngData(%struct.TYPE_18__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %23 = load i64, i64* @HPDF_OK, align 8
  store i64 %23, i64* %10, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %24 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @PNG_LIBPNG_VER_STRING, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = load i32, i32* @PngErrorFunc, align 4
  %30 = load i32, i32* @PngErrorFunc, align 4
  %31 = call i32* @png_create_read_struct(i32 %25, %struct.TYPE_19__* %28, i32 %29, i32 %30)
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = load i64, i64* @HPDF_FAILD_TO_ALLOC_MEM, align 8
  %39 = call i32 @HPDF_SetError(%struct.TYPE_19__* %37, i64 %38, i32 0)
  %40 = load i64, i64* @HPDF_FAILD_TO_ALLOC_MEM, align 8
  store i64 %40, i64* %5, align 8
  br label %493

41:                                               ; preds = %4
  %42 = load i32*, i32** %15, align 8
  %43 = call i32* @png_create_info_struct(i32* %42)
  store i32* %43, i32** %16, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = load i64, i64* @HPDF_FAILD_TO_ALLOC_MEM, align 8
  %51 = call i32 @HPDF_SetError(%struct.TYPE_19__* %49, i64 %50, i32 0)
  br label %480

52:                                               ; preds = %41
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* @HPDF_PNG_BYTES_TO_CHECK, align 4
  %55 = call i32 @png_set_sig_bytes(i32* %53, i32 %54)
  %56 = load i32*, i32** %15, align 8
  %57 = load i64, i64* %8, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @png_set_read_fn(i32* %56, i8* %58, i32 ptrtoint (i32* @PngReadFunc to i32))
  %60 = load i32*, i32** %15, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @png_read_info(i32* %60, i32* %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HPDF_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %52
  br label %480

71:                                               ; preds = %52
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @png_get_IHDR(i32* %72, i32* %73, i32* %11, i32* %12, i32* %13, i32* %14, i32* null, i32* null, i32* null)
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 16
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @png_set_strip_16(i32* %78)
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i32*, i32** %15, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @png_read_update_info(i32* %81, i32* %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @HPDF_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %480

92:                                               ; preds = %80
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %248

95:                                               ; preds = %92
  %96 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %97 = load i32, i32* %14, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %248

100:                                              ; preds = %95
  %101 = load i32*, i32** %15, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = load i32, i32* @PNG_INFO_tRNS, align 4
  %104 = call i32 @png_get_valid(i32* %101, i32* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i32*, i32** %15, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = call i32 @png_get_tRNS(i32* %107, i32* %108, i32* %17, i32* %18, i32* null)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106, %100
  br label %249

112:                                              ; preds = %106
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call %struct.TYPE_18__* @HPDF_DictStream_New(i32 %115, i64 %116)
  store %struct.TYPE_18__* %117, %struct.TYPE_18__** %19, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %119 = icmp ne %struct.TYPE_18__* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %112
  %121 = load i64, i64* @HPDF_FAILD_TO_ALLOC_MEM, align 8
  store i64 %121, i64* %10, align 8
  br label %480

122:                                              ; preds = %112
  %123 = load i32, i32* @HPDF_OSUBCLASS_XOBJECT, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %123
  store i32 %128, i32* %126, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %130 = call i64 @HPDF_Dict_AddName(%struct.TYPE_18__* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i64 %130, i64* %10, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %132 = call i64 @HPDF_Dict_AddName(%struct.TYPE_18__* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i64, i64* %10, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %10, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %136)
  %138 = load i64, i64* %10, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* %10, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  %143 = load i64, i64* %10, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %10, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %146 = call i64 @HPDF_Dict_AddName(%struct.TYPE_18__* %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %147 = load i64, i64* %10, align 8
  %148 = add nsw i64 %147, %146
  store i64 %148, i64* %10, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %150 = load i32, i32* %13, align 4
  %151 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %150)
  %152 = load i64, i64* %10, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %10, align 8
  %154 = load i64, i64* %10, align 8
  %155 = load i64, i64* @HPDF_OK, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %122
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %159 = call i32 @HPDF_Dict_Free(%struct.TYPE_18__* %158)
  %160 = load i64, i64* @HPDF_INVALID_PNG_IMAGE, align 8
  store i64 %160, i64* %10, align 8
  br label %480

161:                                              ; preds = %122
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = mul nsw i32 %165, %166
  %168 = call i32 @HPDF_GetMem(i32 %164, i32 %167)
  store i32 %168, i32* %20, align 4
  %169 = load i32, i32* %20, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %161
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %173 = call i32 @HPDF_Dict_Free(%struct.TYPE_18__* %172)
  %174 = load i64, i64* @HPDF_FAILD_TO_ALLOC_MEM, align 8
  store i64 %174, i64* %10, align 8
  br label %480

175:                                              ; preds = %161
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %177 = load i32*, i32** %15, align 8
  %178 = load i32*, i32** %16, align 8
  %179 = load i32, i32* %20, align 4
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %18, align 4
  %182 = call i64 @ReadTransparentPaletteData(%struct.TYPE_18__* %176, i32* %177, i32* %178, i32 %179, i32 %180, i32 %181)
  %183 = load i64, i64* @HPDF_OK, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %175
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %20, align 4
  %190 = call i32 @HPDF_FreeMem(i32 %188, i32 %189)
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %192 = call i32 @HPDF_Dict_Free(%struct.TYPE_18__* %191)
  %193 = load i64, i64* @HPDF_INVALID_PNG_IMAGE, align 8
  store i64 %193, i64* %10, align 8
  br label %480

194:                                              ; preds = %175
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %20, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %12, align 4
  %201 = mul nsw i32 %199, %200
  %202 = call i64 @HPDF_Stream_Write(i32 %197, i32 %198, i32 %201)
  %203 = load i64, i64* @HPDF_OK, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %194
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %20, align 4
  %210 = call i32 @HPDF_FreeMem(i32 %208, i32 %209)
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %212 = call i32 @HPDF_Dict_Free(%struct.TYPE_18__* %211)
  %213 = load i64, i64* @HPDF_FILE_IO_ERROR, align 8
  store i64 %213, i64* %10, align 8
  br label %480

214:                                              ; preds = %194
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %20, align 4
  %219 = call i32 @HPDF_FreeMem(i32 %217, i32 %218)
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %221 = load i32*, i32** %15, align 8
  %222 = load i32*, i32** %16, align 8
  %223 = call i64 @CreatePallet(%struct.TYPE_18__* %220, i32* %221, i32* %222)
  %224 = load i64, i64* %10, align 8
  %225 = add nsw i64 %224, %223
  store i64 %225, i64* %10, align 8
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %227 = load i32, i32* %11, align 4
  %228 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %227)
  %229 = load i64, i64* %10, align 8
  %230 = add nsw i64 %229, %228
  store i64 %230, i64* %10, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %232 = load i32, i32* %12, align 4
  %233 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %232)
  %234 = load i64, i64* %10, align 8
  %235 = add nsw i64 %234, %233
  store i64 %235, i64* %10, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %237 = load i32, i32* %13, align 4
  %238 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %236, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %237)
  %239 = load i64, i64* %10, align 8
  %240 = add nsw i64 %239, %238
  store i64 %240, i64* %10, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %243 = call i64 @HPDF_Dict_Add(%struct.TYPE_18__* %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_18__* %242)
  %244 = load i64, i64* %10, align 8
  %245 = add nsw i64 %244, %243
  store i64 %245, i64* %10, align 8
  %246 = call i32 @png_destroy_read_struct(i32** %15, i32** %16, i32* null)
  %247 = load i64, i64* @HPDF_OK, align 8
  store i64 %247, i64* %5, align 8
  br label %493

248:                                              ; preds = %95, %92
  br label %249

249:                                              ; preds = %248, %111
  %250 = load i64, i64* %7, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %399

252:                                              ; preds = %249
  %253 = load i32, i32* @PNG_COLOR_MASK_ALPHA, align 4
  %254 = load i32, i32* %14, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %399

257:                                              ; preds = %252
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = load i64, i64* %7, align 8
  %262 = call %struct.TYPE_18__* @HPDF_DictStream_New(i32 %260, i64 %261)
  store %struct.TYPE_18__* %262, %struct.TYPE_18__** %21, align 8
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %264 = icmp ne %struct.TYPE_18__* %263, null
  br i1 %264, label %267, label %265

265:                                              ; preds = %257
  %266 = load i64, i64* @HPDF_FAILD_TO_ALLOC_MEM, align 8
  store i64 %266, i64* %10, align 8
  br label %480

267:                                              ; preds = %257
  %268 = load i32, i32* @HPDF_OSUBCLASS_XOBJECT, align 4
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %268
  store i32 %273, i32* %271, align 8
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %275 = call i64 @HPDF_Dict_AddName(%struct.TYPE_18__* %274, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i64 %275, i64* %10, align 8
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %277 = call i64 @HPDF_Dict_AddName(%struct.TYPE_18__* %276, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %278 = load i64, i64* %10, align 8
  %279 = add nsw i64 %278, %277
  store i64 %279, i64* %10, align 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %281 = load i32, i32* %11, align 4
  %282 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %280, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %281)
  %283 = load i64, i64* %10, align 8
  %284 = add nsw i64 %283, %282
  store i64 %284, i64* %10, align 8
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %286 = load i32, i32* %12, align 4
  %287 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %285, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %286)
  %288 = load i64, i64* %10, align 8
  %289 = add nsw i64 %288, %287
  store i64 %289, i64* %10, align 8
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %291 = call i64 @HPDF_Dict_AddName(%struct.TYPE_18__* %290, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %292 = load i64, i64* %10, align 8
  %293 = add nsw i64 %292, %291
  store i64 %293, i64* %10, align 8
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %295 = load i32, i32* %13, align 4
  %296 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %294, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %295)
  %297 = load i64, i64* %10, align 8
  %298 = add nsw i64 %297, %296
  store i64 %298, i64* %10, align 8
  %299 = load i64, i64* %10, align 8
  %300 = load i64, i64* @HPDF_OK, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %267
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %304 = call i32 @HPDF_Dict_Free(%struct.TYPE_18__* %303)
  %305 = load i64, i64* @HPDF_INVALID_PNG_IMAGE, align 8
  store i64 %305, i64* %10, align 8
  br label %480

306:                                              ; preds = %267
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %11, align 4
  %311 = load i32, i32* %12, align 4
  %312 = mul nsw i32 %310, %311
  %313 = call i32 @HPDF_GetMem(i32 %309, i32 %312)
  store i32 %313, i32* %22, align 4
  %314 = load i32, i32* %22, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %306
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %318 = call i32 @HPDF_Dict_Free(%struct.TYPE_18__* %317)
  %319 = load i64, i64* @HPDF_FAILD_TO_ALLOC_MEM, align 8
  store i64 %319, i64* %10, align 8
  br label %480

320:                                              ; preds = %306
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %322 = load i32*, i32** %15, align 8
  %323 = load i32*, i32** %16, align 8
  %324 = load i32, i32* %22, align 4
  %325 = call i64 @ReadTransparentPngData(%struct.TYPE_18__* %321, i32* %322, i32* %323, i32 %324)
  %326 = load i64, i64* @HPDF_OK, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %337

328:                                              ; preds = %320
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* %22, align 4
  %333 = call i32 @HPDF_FreeMem(i32 %331, i32 %332)
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %335 = call i32 @HPDF_Dict_Free(%struct.TYPE_18__* %334)
  %336 = load i64, i64* @HPDF_INVALID_PNG_IMAGE, align 8
  store i64 %336, i64* %10, align 8
  br label %480

337:                                              ; preds = %320
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %22, align 4
  %342 = load i32, i32* %11, align 4
  %343 = load i32, i32* %12, align 4
  %344 = mul nsw i32 %342, %343
  %345 = call i64 @HPDF_Stream_Write(i32 %340, i32 %341, i32 %344)
  %346 = load i64, i64* @HPDF_OK, align 8
  %347 = icmp ne i64 %345, %346
  br i1 %347, label %348, label %357

348:                                              ; preds = %337
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* %22, align 4
  %353 = call i32 @HPDF_FreeMem(i32 %351, i32 %352)
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %355 = call i32 @HPDF_Dict_Free(%struct.TYPE_18__* %354)
  %356 = load i64, i64* @HPDF_FILE_IO_ERROR, align 8
  store i64 %356, i64* %10, align 8
  br label %480

357:                                              ; preds = %337
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* %22, align 4
  %362 = call i32 @HPDF_FreeMem(i32 %360, i32 %361)
  %363 = load i32, i32* %14, align 4
  %364 = load i32, i32* @PNG_COLOR_TYPE_GRAY_ALPHA, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %371

366:                                              ; preds = %357
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %368 = call i64 @HPDF_Dict_AddName(%struct.TYPE_18__* %367, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %369 = load i64, i64* %10, align 8
  %370 = add nsw i64 %369, %368
  store i64 %370, i64* %10, align 8
  br label %376

371:                                              ; preds = %357
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %373 = call i64 @HPDF_Dict_AddName(%struct.TYPE_18__* %372, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %374 = load i64, i64* %10, align 8
  %375 = add nsw i64 %374, %373
  store i64 %375, i64* %10, align 8
  br label %376

376:                                              ; preds = %371, %366
  %377 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %378 = load i32, i32* %11, align 4
  %379 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %377, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %378)
  %380 = load i64, i64* %10, align 8
  %381 = add nsw i64 %380, %379
  store i64 %381, i64* %10, align 8
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %383 = load i32, i32* %12, align 4
  %384 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %383)
  %385 = load i64, i64* %10, align 8
  %386 = add nsw i64 %385, %384
  store i64 %386, i64* %10, align 8
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %388 = load i32, i32* %13, align 4
  %389 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %387, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %388)
  %390 = load i64, i64* %10, align 8
  %391 = add nsw i64 %390, %389
  store i64 %391, i64* %10, align 8
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %394 = call i64 @HPDF_Dict_Add(%struct.TYPE_18__* %392, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_18__* %393)
  %395 = load i64, i64* %10, align 8
  %396 = add nsw i64 %395, %394
  store i64 %396, i64* %10, align 8
  %397 = call i32 @png_destroy_read_struct(i32** %15, i32** %16, i32* null)
  %398 = load i64, i64* @HPDF_OK, align 8
  store i64 %398, i64* %5, align 8
  br label %493

399:                                              ; preds = %252, %249
  %400 = load i32, i32* %14, align 4
  %401 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %408

403:                                              ; preds = %399
  %404 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %405 = load i32*, i32** %15, align 8
  %406 = load i32*, i32** %16, align 8
  %407 = call i64 @CreatePallet(%struct.TYPE_18__* %404, i32* %405, i32* %406)
  store i64 %407, i64* %10, align 8
  br label %419

408:                                              ; preds = %399
  %409 = load i32, i32* %14, align 4
  %410 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %411 = icmp eq i32 %409, %410
  br i1 %411, label %412, label %415

412:                                              ; preds = %408
  %413 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %414 = call i64 @HPDF_Dict_AddName(%struct.TYPE_18__* %413, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i64 %414, i64* %10, align 8
  br label %418

415:                                              ; preds = %408
  %416 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %417 = call i64 @HPDF_Dict_AddName(%struct.TYPE_18__* %416, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  store i64 %417, i64* %10, align 8
  br label %418

418:                                              ; preds = %415, %412
  br label %419

419:                                              ; preds = %418, %403
  %420 = load i64, i64* %10, align 8
  %421 = load i64, i64* @HPDF_OK, align 8
  %422 = icmp ne i64 %420, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %419
  br label %480

424:                                              ; preds = %419
  %425 = load i64, i64* %9, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %434

427:                                              ; preds = %424
  %428 = load i32, i32* @PngBeforeWrite, align 4
  %429 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %429, i32 0, i32 2
  store i32 %428, i32* %430, align 4
  %431 = load i32, i32* @PngAfterWrite, align 4
  %432 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %432, i32 0, i32 1
  store i32 %431, i32* %433, align 8
  br label %456

434:                                              ; preds = %424
  %435 = load i32*, i32** %15, align 8
  %436 = load i32*, i32** %16, align 8
  %437 = call i64 @png_get_interlace_type(i32* %435, i32* %436)
  %438 = load i64, i64* @PNG_INTERLACE_NONE, align 8
  %439 = icmp ne i64 %437, %438
  br i1 %439, label %440, label %445

440:                                              ; preds = %434
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %442 = load i32*, i32** %15, align 8
  %443 = load i32*, i32** %16, align 8
  %444 = call i64 @ReadPngData_Interlaced(%struct.TYPE_18__* %441, i32* %442, i32* %443)
  store i64 %444, i64* %10, align 8
  br label %450

445:                                              ; preds = %434
  %446 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %447 = load i32*, i32** %15, align 8
  %448 = load i32*, i32** %16, align 8
  %449 = call i64 @ReadPngData(%struct.TYPE_18__* %446, i32* %447, i32* %448)
  store i64 %449, i64* %10, align 8
  br label %450

450:                                              ; preds = %445, %440
  %451 = load i64, i64* %10, align 8
  %452 = load i64, i64* @HPDF_OK, align 8
  %453 = icmp ne i64 %451, %452
  br i1 %453, label %454, label %455

454:                                              ; preds = %450
  br label %480

455:                                              ; preds = %450
  br label %456

456:                                              ; preds = %455, %427
  %457 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %458 = load i32, i32* %11, align 4
  %459 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %457, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %458)
  %460 = load i64, i64* @HPDF_OK, align 8
  %461 = icmp ne i64 %459, %460
  br i1 %461, label %462, label %463

462:                                              ; preds = %456
  br label %480

463:                                              ; preds = %456
  %464 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %465 = load i32, i32* %12, align 4
  %466 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %464, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %465)
  %467 = load i64, i64* @HPDF_OK, align 8
  %468 = icmp ne i64 %466, %467
  br i1 %468, label %469, label %470

469:                                              ; preds = %463
  br label %480

470:                                              ; preds = %463
  %471 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %472 = load i32, i32* %13, align 4
  %473 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__* %471, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %472)
  %474 = load i64, i64* @HPDF_OK, align 8
  %475 = icmp ne i64 %473, %474
  br i1 %475, label %476, label %477

476:                                              ; preds = %470
  br label %480

477:                                              ; preds = %470
  %478 = call i32 @png_destroy_read_struct(i32** %15, i32** %16, i32* null)
  %479 = load i64, i64* @HPDF_OK, align 8
  store i64 %479, i64* %5, align 8
  br label %493

480:                                              ; preds = %476, %469, %462, %454, %423, %348, %328, %316, %302, %265, %205, %185, %171, %157, %120, %91, %70, %46
  %481 = call i32 @png_destroy_read_struct(i32** %15, i32** %16, i32* null)
  %482 = load i64, i64* %10, align 8
  %483 = load i64, i64* @HPDF_OK, align 8
  %484 = icmp ne i64 %482, %483
  br i1 %484, label %485, label %487

485:                                              ; preds = %480
  %486 = load i64, i64* %10, align 8
  store i64 %486, i64* %5, align 8
  br label %493

487:                                              ; preds = %480
  %488 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %488, i32 0, i32 0
  %490 = load %struct.TYPE_19__*, %struct.TYPE_19__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %5, align 8
  br label %493

493:                                              ; preds = %487, %485, %477, %376, %214, %34
  %494 = load i64, i64* %5, align 8
  ret i64 %494
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32* @png_create_read_struct(i32, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @HPDF_SetError(%struct.TYPE_19__*, i64, i32) #1

declare dso_local i32* @png_create_info_struct(i32*) #1

declare dso_local i32 @png_set_sig_bytes(i32*, i32) #1

declare dso_local i32 @png_set_read_fn(i32*, i8*, i32) #1

declare dso_local i32 @png_read_info(i32*, i32*) #1

declare dso_local i32 @png_get_IHDR(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @png_set_strip_16(i32*) #1

declare dso_local i32 @png_read_update_info(i32*, i32*) #1

declare dso_local i32 @png_get_valid(i32*, i32*, i32) #1

declare dso_local i32 @png_get_tRNS(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @HPDF_DictStream_New(i32, i64) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_18__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @HPDF_Dict_Free(%struct.TYPE_18__*) #1

declare dso_local i32 @HPDF_GetMem(i32, i32) #1

declare dso_local i64 @ReadTransparentPaletteData(%struct.TYPE_18__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @HPDF_FreeMem(i32, i32) #1

declare dso_local i64 @HPDF_Stream_Write(i32, i32, i32) #1

declare dso_local i64 @CreatePallet(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_18__*, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @png_destroy_read_struct(i32**, i32**, i32*) #1

declare dso_local i64 @ReadTransparentPngData(%struct.TYPE_18__*, i32*, i32*, i32) #1

declare dso_local i64 @png_get_interlace_type(i32*, i32*) #1

declare dso_local i64 @ReadPngData_Interlaced(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i64 @ReadPngData(%struct.TYPE_18__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
