; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFRGBAImageBegin.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFRGBAImageBegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64, i64 }

@ORIENTATION_BOTLEFT = common dso_local global i32 0, align 4
@TIFFTAG_BITSPERSAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Sorry, can not handle images with %d-bit samples\00", align 1
@TIFFTAG_SAMPLESPERPIXEL = common dso_local global i32 0, align 4
@TIFFTAG_EXTRASAMPLES = common dso_local global i32 0, align 4
@TIFFTAG_COMPRESSION = common dso_local global i32 0, align 4
@TIFFTAG_PLANARCONFIG = common dso_local global i32 0, align 4
@TIFFTAG_PHOTOMETRIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Missing needed %s tag\00", align 1
@photoTag = common dso_local global i8* null, align 8
@TIFFTAG_COLORMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Missing required \22Colormap\22 tag\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Out of memory for colormap copy\00", align 1
@PLANARCONFIG_CONTIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"Sorry, can not handle contiguous data with %s=%d, and %s=%d and Bits/Sample=%d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Samples/pixel\00", align 1
@TIFFTAG_JPEGCOLORMODE = common dso_local global i32 0, align 4
@JPEGCOLORMODE_RGB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Sorry, can not handle RGB image with %s=%d\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Color channels\00", align 1
@TIFFTAG_INKSET = common dso_local global i32 0, align 4
@INKSET_CMYK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"Sorry, can not handle separated image with %s=%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"InkSet\00", align 1
@COMPRESSION_SGILOG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Sorry, LogL data must have %s=%d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@TIFFTAG_SGILOGDATAFMT = common dso_local global i32 0, align 4
@SGILOGDATAFMT_8BIT = common dso_local global i32 0, align 4
@COMPRESSION_SGILOG24 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"Sorry, LogLuv data must have %s=%d or %d\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Sorry, can not handle LogLuv images with %s=%d\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Planarconfiguration\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Sorry, can not handle image with %s=%d\00", align 1
@TIFFTAG_IMAGEWIDTH = common dso_local global i32 0, align 4
@TIFFTAG_IMAGELENGTH = common dso_local global i32 0, align 4
@TIFFTAG_ORIENTATION = common dso_local global i32 0, align 4
@PLANARCONFIG_SEPARATE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"Sorry, can not handle image\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFRGBAImageBegin(%struct.TYPE_6__* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @TIFFRGBAImageOK(i32* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %410

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 22
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 21
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 20
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 19
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 18
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 17
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 16
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 15
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 14
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* @ORIENTATION_BOTLEFT, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 13
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 12
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @TIFFTAG_BITSPERSAMPLE, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %59, i32 %60, i32* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %68 [
    i32 1, label %67
    i32 2, label %67
    i32 4, label %67
    i32 8, label %67
    i32 16, label %67
  ]

67:                                               ; preds = %25, %25, %25, %25, %25
  br label %74

68:                                               ; preds = %25
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %407

74:                                               ; preds = %67
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  store i32 0, i32* %76, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* @TIFFTAG_SAMPLESPERPIXEL, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 6
  %81 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %77, i32 %78, i32* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @TIFFTAG_EXTRASAMPLES, align 4
  %84 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %82, i32 %83, i32* %11, i32** %10)
  %85 = load i32, i32* %11, align 4
  %86 = icmp sge i32 %85, 1
  br i1 %86, label %87, label %107

87:                                               ; preds = %74
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %106 [
    i32 137, label %91
    i32 139, label %100
    i32 138, label %100
  ]

91:                                               ; preds = %87
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 3
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  store i32 139, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %91
  br label %106

100:                                              ; preds = %87, %87
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %87, %100, %99
  br label %107

107:                                              ; preds = %106, %74
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %14, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* @TIFFTAG_COMPRESSION, align 4
  %115 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %113, i32 %114, i32* %13)
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* @TIFFTAG_PLANARCONFIG, align 4
  %118 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %116, i32 %117, i32* %12)
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 7
  %123 = call i32 (i32*, i32, ...) @TIFFGetField(i32* %119, i32 %120, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %146, label %125

125:                                              ; preds = %107
  %126 = load i32, i32* %14, align 4
  switch i32 %126, label %141 [
    i32 1, label %127
    i32 3, label %138
  ]

127:                                              ; preds = %125
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @isCCITTCompression(i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 7
  store i32 132, i32* %133, align 8
  br label %137

134:                                              ; preds = %127
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 7
  store i32 133, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %131
  br label %145

138:                                              ; preds = %125
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 7
  store i32 130, i32* %140, align 8
  br label %145

141:                                              ; preds = %125
  %142 = load i8*, i8** %9, align 8
  %143 = load i8*, i8** @photoTag, align 8
  %144 = call i32 (i8*, i8*, ...) @sprintf(i8* %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %143)
  br label %407

145:                                              ; preds = %138, %137
  br label %146

146:                                              ; preds = %145, %107
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %349 [
    i32 131, label %150
    i32 132, label %226
    i32 133, label %226
    i32 128, label %254
    i32 130, label %270
    i32 129, label %278
    i32 135, label %301
    i32 134, label %318
    i32 136, label %348
  ]

150:                                              ; preds = %146
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* @TIFFTAG_COLORMAP, align 4
  %153 = call i32 (i32*, i32, ...) @TIFFGetField(i32* %151, i32 %152, i32** %15, i32** %16, i32** %17)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i8*, i8** %9, align 8
  %157 = call i32 (i8*, i8*, ...) @sprintf(i8* %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %407

158:                                              ; preds = %150
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 1, %161
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 4, %164
  %166 = trunc i64 %165 to i32
  %167 = call i64 @_TIFFmalloc(i32 %166)
  %168 = inttoptr i64 %167 to i32*
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store i32* %168, i32** %170, align 8
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 4, %172
  %174 = trunc i64 %173 to i32
  %175 = call i64 @_TIFFmalloc(i32 %174)
  %176 = inttoptr i64 %175 to i32*
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  store i32* %176, i32** %178, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 4, %180
  %182 = trunc i64 %181 to i32
  %183 = call i64 @_TIFFmalloc(i32 %182)
  %184 = inttoptr i64 %183 to i32*
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  store i32* %184, i32** %186, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %158
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %196, %191, %158
  %202 = load i8*, i8** %9, align 8
  %203 = call i32 (i8*, i8*, ...) @sprintf(i8* %202, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %407

204:                                              ; preds = %196
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32*, i32** %15, align 8
  %209 = load i32, i32* %18, align 4
  %210 = mul nsw i32 %209, 2
  %211 = call i32 @_TIFFmemcpy(i32* %207, i32* %208, i32 %210)
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32*, i32** %16, align 8
  %216 = load i32, i32* %18, align 4
  %217 = mul nsw i32 %216, 2
  %218 = call i32 @_TIFFmemcpy(i32* %214, i32* %215, i32 %217)
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load i32*, i32** %17, align 8
  %223 = load i32, i32* %18, align 4
  %224 = mul nsw i32 %223, 2
  %225 = call i32 @_TIFFmemcpy(i32* %221, i32* %222, i32 %224)
  br label %226

226:                                              ; preds = %146, %146, %204
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* @PLANARCONFIG_CONTIG, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %253

230:                                              ; preds = %226
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 1
  br i1 %234, label %235, label %253

235:                                              ; preds = %230
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %238, 8
  br i1 %239, label %240, label %253

240:                                              ; preds = %235
  %241 = load i8*, i8** %9, align 8
  %242 = load i8*, i8** @photoTag, align 8
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (i8*, i8*, ...) @sprintf(i8* %241, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i8* %242, i32 %245, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %248, i32 %251)
  br label %407

253:                                              ; preds = %235, %230, %226
  br label %356

254:                                              ; preds = %146
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* @PLANARCONFIG_CONTIG, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %269

258:                                              ; preds = %254
  %259 = load i32, i32* %13, align 4
  switch i32 %259, label %267 [
    i32 140, label %260
  ]

260:                                              ; preds = %258
  %261 = load i32*, i32** %7, align 8
  %262 = load i32, i32* @TIFFTAG_JPEGCOLORMODE, align 4
  %263 = load i32, i32* @JPEGCOLORMODE_RGB, align 4
  %264 = call i32 @TIFFSetField(i32* %261, i32 %262, i32 %263)
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 7
  store i32 130, i32* %266, align 8
  br label %268

267:                                              ; preds = %258
  br label %268

268:                                              ; preds = %267, %260
  br label %269

269:                                              ; preds = %268, %254
  br label %356

270:                                              ; preds = %146
  %271 = load i32, i32* %14, align 4
  %272 = icmp slt i32 %271, 3
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load i8*, i8** %9, align 8
  %275 = load i32, i32* %14, align 4
  %276 = call i32 (i8*, i8*, ...) @sprintf(i8* %274, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %275)
  br label %407

277:                                              ; preds = %270
  br label %356

278:                                              ; preds = %146
  %279 = load i32*, i32** %7, align 8
  %280 = load i32, i32* @TIFFTAG_INKSET, align 4
  %281 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %279, i32 %280, i32* %19)
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* @INKSET_CMYK, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %278
  %286 = load i8*, i8** %9, align 8
  %287 = load i32, i32* %19, align 4
  %288 = call i32 (i8*, i8*, ...) @sprintf(i8* %286, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %287)
  br label %407

289:                                              ; preds = %278
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 4
  %293 = icmp slt i32 %292, 4
  br i1 %293, label %294, label %300

294:                                              ; preds = %289
  %295 = load i8*, i8** %9, align 8
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i8*, i8*, ...) @sprintf(i8* %295, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %298)
  br label %407

300:                                              ; preds = %289
  br label %356

301:                                              ; preds = %146
  %302 = load i32, i32* %13, align 4
  %303 = load i32, i32* @COMPRESSION_SGILOG, align 4
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %309

305:                                              ; preds = %301
  %306 = load i8*, i8** %9, align 8
  %307 = load i32, i32* @COMPRESSION_SGILOG, align 4
  %308 = call i32 (i8*, i8*, ...) @sprintf(i8* %306, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %307)
  br label %407

309:                                              ; preds = %301
  %310 = load i32*, i32** %7, align 8
  %311 = load i32, i32* @TIFFTAG_SGILOGDATAFMT, align 4
  %312 = load i32, i32* @SGILOGDATAFMT_8BIT, align 4
  %313 = call i32 @TIFFSetField(i32* %310, i32 %311, i32 %312)
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 7
  store i32 133, i32* %315, align 8
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 4
  store i32 8, i32* %317, align 4
  br label %356

318:                                              ; preds = %146
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* @COMPRESSION_SGILOG, align 4
  %321 = icmp ne i32 %319, %320
  br i1 %321, label %322, label %331

322:                                              ; preds = %318
  %323 = load i32, i32* %13, align 4
  %324 = load i32, i32* @COMPRESSION_SGILOG24, align 4
  %325 = icmp ne i32 %323, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %322
  %327 = load i8*, i8** %9, align 8
  %328 = load i32, i32* @COMPRESSION_SGILOG, align 4
  %329 = load i32, i32* @COMPRESSION_SGILOG24, align 4
  %330 = call i32 (i8*, i8*, ...) @sprintf(i8* %327, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %328, i32 %329)
  br label %407

331:                                              ; preds = %322, %318
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* @PLANARCONFIG_CONTIG, align 4
  %334 = icmp ne i32 %332, %333
  br i1 %334, label %335, label %339

335:                                              ; preds = %331
  %336 = load i8*, i8** %9, align 8
  %337 = load i32, i32* %12, align 4
  %338 = call i32 (i8*, i8*, ...) @sprintf(i8* %336, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %337)
  store i32 0, i32* %5, align 4
  br label %410

339:                                              ; preds = %331
  %340 = load i32*, i32** %7, align 8
  %341 = load i32, i32* @TIFFTAG_SGILOGDATAFMT, align 4
  %342 = load i32, i32* @SGILOGDATAFMT_8BIT, align 4
  %343 = call i32 @TIFFSetField(i32* %340, i32 %341, i32 %342)
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 7
  store i32 130, i32* %345, align 8
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 4
  store i32 8, i32* %347, align 4
  br label %356

348:                                              ; preds = %146
  br label %356

349:                                              ; preds = %146
  %350 = load i8*, i8** %9, align 8
  %351 = load i8*, i8** @photoTag, align 8
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 7
  %354 = load i32, i32* %353, align 8
  %355 = call i32 (i8*, i8*, ...) @sprintf(i8* %350, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8* %351, i32 %354)
  br label %407

356:                                              ; preds = %348, %339, %309, %300, %277, %269, %253
  %357 = load i32*, i32** %7, align 8
  %358 = load i32, i32* @TIFFTAG_IMAGEWIDTH, align 4
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 8
  %361 = call i32 (i32*, i32, ...) @TIFFGetField(i32* %357, i32 %358, i32* %360)
  %362 = load i32*, i32** %7, align 8
  %363 = load i32, i32* @TIFFTAG_IMAGELENGTH, align 4
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 9
  %366 = call i32 (i32*, i32, ...) @TIFFGetField(i32* %362, i32 %363, i32* %365)
  %367 = load i32*, i32** %7, align 8
  %368 = load i32, i32* @TIFFTAG_ORIENTATION, align 4
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 10
  %371 = call i32 (i32*, i32, i32*, ...) @TIFFGetFieldDefaulted(i32* %367, i32 %368, i32* %370)
  %372 = load i32, i32* %12, align 4
  %373 = load i32, i32* @PLANARCONFIG_SEPARATE, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %380

375:                                              ; preds = %356
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 4
  %379 = icmp sgt i32 %378, 1
  br label %380

380:                                              ; preds = %375, %356
  %381 = phi i1 [ false, %356 ], [ %379, %375 ]
  %382 = xor i1 %381, true
  %383 = zext i1 %382 to i32
  %384 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 11
  store i32 %383, i32* %385, align 8
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 11
  %388 = load i32, i32* %387, align 8
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %398

390:                                              ; preds = %380
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %392 = call i32 @PickContigCase(%struct.TYPE_6__* %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %390
  %395 = load i8*, i8** %9, align 8
  %396 = call i32 (i8*, i8*, ...) @sprintf(i8* %395, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  br label %407

397:                                              ; preds = %390
  br label %406

398:                                              ; preds = %380
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %400 = call i32 @PickSeparateCase(%struct.TYPE_6__* %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %398
  %403 = load i8*, i8** %9, align 8
  %404 = call i32 (i8*, i8*, ...) @sprintf(i8* %403, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  br label %407

405:                                              ; preds = %398
  br label %406

406:                                              ; preds = %405, %397
  store i32 1, i32* %5, align 4
  br label %410

407:                                              ; preds = %402, %394, %349, %326, %305, %294, %285, %273, %240, %201, %155, %141, %68
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %409 = call i32 @TIFFRGBAImageEnd(%struct.TYPE_6__* %408)
  store i32 0, i32* %5, align 4
  br label %410

410:                                              ; preds = %407, %406, %335, %24
  %411 = load i32, i32* %5, align 4
  ret i32 %411
}

declare dso_local i32 @TIFFRGBAImageOK(i32*, i8*) #1

declare dso_local i32 @TIFFGetFieldDefaulted(i32*, i32, i32*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @TIFFGetField(i32*, i32, ...) #1

declare dso_local i32 @isCCITTCompression(i32*) #1

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @_TIFFmemcpy(i32*, i32*, i32) #1

declare dso_local i32 @TIFFSetField(i32*, i32, i32) #1

declare dso_local i32 @PickContigCase(%struct.TYPE_6__*) #1

declare dso_local i32 @PickSeparateCase(%struct.TYPE_6__*) #1

declare dso_local i32 @TIFFRGBAImageEnd(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
