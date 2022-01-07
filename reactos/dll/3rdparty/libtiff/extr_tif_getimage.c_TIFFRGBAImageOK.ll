; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFRGBAImageOK.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFRGBAImageOK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Sorry, requested compression method is not configured\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Sorry, can not handle images with %d-bit samples\00", align 1
@SAMPLEFORMAT_IEEEFP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"Sorry, can not handle images with IEEE floating-point samples\00", align 1
@TIFFTAG_PHOTOMETRIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Missing needed %s tag\00", align 1
@photoTag = common dso_local global i8* null, align 8
@PLANARCONFIG_CONTIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"Sorry, can not handle contiguous data with %s=%d, and %s=%d and Bits/Sample=%d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Samples/pixel\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Sorry, can not handle RGB image with %s=%d\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Color channels\00", align 1
@TIFFTAG_INKSET = common dso_local global i32 0, align 4
@INKSET_CMYK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"Sorry, can not handle separated image with %s=%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"InkSet\00", align 1
@COMPRESSION_SGILOG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Sorry, LogL data must have %s=%d\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@COMPRESSION_SGILOG24 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"Sorry, LogLuv data must have %s=%d or %d\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Sorry, can not handle LogLuv images with %s=%d\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Planarconfiguration\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Sorry, can not handle image with %s=%d, %s=%d\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"colorchannels\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"Sorry, can not handle image with %s=%d, %s=%d and %s=%d\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Bits/sample\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Sorry, can not handle image with %s=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFRGBAImageOK(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %208

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %24 [
    i32 1, label %23
    i32 2, label %23
    i32 4, label %23
    i32 8, label %23
    i32 16, label %23
  ]

23:                                               ; preds = %19, %19, %19, %19, %19
  br label %30

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 0, i32* %3, align 4
  br label %208

30:                                               ; preds = %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SAMPLEFORMAT_IEEEFP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %208

39:                                               ; preds = %30
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = load i32, i32* @TIFFTAG_PHOTOMETRIC, align 4
  %49 = call i32 @TIFFGetField(%struct.TYPE_7__* %47, i32 %48, i32* %7)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %55 [
    i32 1, label %53
    i32 3, label %54
  ]

53:                                               ; preds = %51
  store i32 133, i32* %7, align 4
  br label %59

54:                                               ; preds = %51
  store i32 130, i32* %7, align 4
  br label %59

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** @photoTag, align 8
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  store i32 0, i32* %3, align 4
  br label %208

59:                                               ; preds = %54, %53
  br label %60

60:                                               ; preds = %59, %39
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %202 [
    i32 132, label %62
    i32 133, label %62
    i32 131, label %62
    i32 128, label %90
    i32 130, label %91
    i32 129, label %99
    i32 135, label %122
    i32 134, label %133
    i32 136, label %178
  ]

62:                                               ; preds = %60, %60, %60
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PLANARCONFIG_CONTIG, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %76, 8
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** @photoTag, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i8* %80, i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %87)
  store i32 0, i32* %3, align 4
  br label %208

89:                                               ; preds = %73, %68, %62
  br label %207

90:                                               ; preds = %60
  br label %207

91:                                               ; preds = %60
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 3
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  store i32 0, i32* %3, align 4
  br label %208

98:                                               ; preds = %91
  br label %207

99:                                               ; preds = %60
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = load i32, i32* @TIFFTAG_INKSET, align 4
  %102 = call i32 @TIFFGetFieldDefaulted(%struct.TYPE_7__* %100, i32 %101, i32* %9)
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @INKSET_CMYK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %108)
  store i32 0, i32* %3, align 4
  br label %208

110:                                              ; preds = %99
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i8*, i8** %5, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  store i32 0, i32* %3, align 4
  br label %208

121:                                              ; preds = %110
  br label %207

122:                                              ; preds = %60
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @COMPRESSION_SGILOG, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* @COMPRESSION_SGILOG, align 4
  %131 = call i32 (i8*, i8*, ...) @sprintf(i8* %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %130)
  store i32 0, i32* %3, align 4
  br label %208

132:                                              ; preds = %122
  br label %207

133:                                              ; preds = %60
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @COMPRESSION_SGILOG, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @COMPRESSION_SGILOG24, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* @COMPRESSION_SGILOG, align 4
  %148 = load i32, i32* @COMPRESSION_SGILOG24, align 4
  %149 = call i32 (i8*, i8*, ...) @sprintf(i8* %146, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %147, i32 %148)
  store i32 0, i32* %3, align 4
  br label %208

150:                                              ; preds = %139, %133
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @PLANARCONFIG_CONTIG, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i8*, i8** %5, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i8*, i8*, ...) @sprintf(i8* %157, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %160)
  store i32 0, i32* %3, align 4
  br label %208

162:                                              ; preds = %150
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 3
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 3
  br i1 %169, label %170, label %177

170:                                              ; preds = %167, %162
  %171 = load i8*, i8** %5, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 (i8*, i8*, ...) @sprintf(i8* %171, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %174, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %175)
  store i32 0, i32* %3, align 4
  br label %208

177:                                              ; preds = %167
  br label %207

178:                                              ; preds = %60
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 3
  br i1 %182, label %191, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 3
  br i1 %185, label %191, label %186

186:                                              ; preds = %183
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 8
  br i1 %190, label %191, label %201

191:                                              ; preds = %186, %183, %178
  %192 = load i8*, i8** %5, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (i8*, i8*, ...) @sprintf(i8* %192, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %199)
  store i32 0, i32* %3, align 4
  br label %208

201:                                              ; preds = %186
  br label %207

202:                                              ; preds = %60
  %203 = load i8*, i8** %5, align 8
  %204 = load i8*, i8** @photoTag, align 8
  %205 = load i32, i32* %7, align 4
  %206 = call i32 (i8*, i8*, ...) @sprintf(i8* %203, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i8* %204, i32 %205)
  store i32 0, i32* %3, align 4
  br label %208

207:                                              ; preds = %201, %177, %132, %121, %98, %90, %89
  store i32 1, i32* %3, align 4
  br label %208

208:                                              ; preds = %207, %202, %191, %170, %156, %145, %128, %115, %106, %94, %78, %55, %36, %24, %16
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @TIFFGetField(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @TIFFGetFieldDefaulted(%struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
