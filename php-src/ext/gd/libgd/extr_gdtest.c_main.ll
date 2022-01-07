; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdtest.c_main.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_50__ = type { i32 }
%struct.TYPE_51__ = type { i32 (%struct.TYPE_51__*)* }
%struct.TYPE_48__ = type { i32*, i32 }
%struct.TYPE_49__ = type { i32*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Usage: gdtest filename.png\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Input file does not exist!\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Reference File has %d Palette entries\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Initial Versions\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s.png\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"PNG Output file does not exist!\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"GD->PNG File->GD\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"GD->PNG ptr->GD\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s.gd2\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"GD2 Output file does not exist!\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"GD->GD2 File->GD\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"GD->GD2 ptr->GD\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s.gd\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"GD Output file does not exist!\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"GD->GD File->GD\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"GD->GD ptr->GD\00", align 1
@freadWrapper = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [62 x i8] c"GD Source: ERROR Null returned by gdImageCreateFromPngSource\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"GD Source\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%s.snk\00", align 1
@fwriteWrapper = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [54 x i8] c"GD Sink: ERROR - GD Sink Output file does not exist!\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"GD Sink\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"test/gdtest_200_300_150_100.png\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"gdtest_200_300_150_100.png does not exist!\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"test/gdtest.gd2\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"gdtest.gd2 does not exist!\0A\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"GD2Part (gdtest_200_300_150_100.png, gdtest.gd2(part))\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"test/gdtest.png\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"gdtest.png does not exist!\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"test/gdtest_merge.png\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"gdtest_merge.png does not exist!\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"[Merged Image has %d colours]\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Merged (gdtest.png, gdtest_merge.png)\00", align 1
@.str.34 = private unnamed_addr constant [114 x i8] c"NOTE: the WBMP output image will NOT match the original unless the original\0Ais also black and white. This is OK!\0A\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"Foreground index is %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"Source image has no colors, skipping wbmp test.\0A\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"test/gdtest.wbmp\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"Can't create file test/gdtest.wbmp.\0A\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"Can't open file test/gdtest.wbmp.\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"WBMP has %d colors\0A\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"WBMP colors are:\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"%02X%02X%02X\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"gdImageCreateFromWBMP failed.\0A\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"WBMP test (gdtest.png, gdtest.wbmp)\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"test/gdtest_wbmp_to_png.png\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"Can't create file test/gdtest_wbmp_to_png.png.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_50__*, align 8
  %7 = alloca %struct.TYPE_50__*, align 8
  %8 = alloca %struct.TYPE_50__*, align 8
  %9 = alloca %struct.TYPE_50__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_51__*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_48__, align 8
  %19 = alloca %struct.TYPE_49__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32* @fopen(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %28
  %40 = load i32*, i32** %10, align 8
  %41 = call %struct.TYPE_50__* @gdImageCreateFromPng(i32* %40)
  store %struct.TYPE_50__* %41, %struct.TYPE_50__** %6, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @rewind(i32* %42)
  %44 = load i32*, i32** %10, align 8
  %45 = call %struct.TYPE_50__* @gdImageCreateFromPng(i32* %44)
  store %struct.TYPE_50__* %45, %struct.TYPE_50__** %7, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %53 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %54 = call i32 @CompareImages(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_50__* %52, %struct.TYPE_50__* %53)
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @snprintf(i8* %55, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %61 = call i32* @fopen(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %61, i32** %11, align 8
  %62 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @gdImagePng(%struct.TYPE_50__* %62, i32* %63)
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %68 = call i32* @fopen(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %68, i32** %10, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %39
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %39
  %76 = load i32*, i32** %10, align 8
  %77 = call %struct.TYPE_50__* @gdImageCreateFromPng(i32* %76)
  store %struct.TYPE_50__* %77, %struct.TYPE_50__** %8, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @fclose(i32* %78)
  %80 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %81 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %82 = call i32 @CompareImages(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_50__* %80, %struct.TYPE_50__* %81)
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %84 = call i32 @unlink(i8* %83)
  %85 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %86 = call i32 @gdImageDestroy(%struct.TYPE_50__* %85)
  %87 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %88 = call i8* @gdImagePngPtr(%struct.TYPE_50__* %87, i32* %13)
  store i8* %88, i8** %12, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = call %struct.TYPE_51__* @gdNewDynamicCtx(i32 %89, i8* %90)
  store %struct.TYPE_51__* %91, %struct.TYPE_51__** %14, align 8
  %92 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %93 = call %struct.TYPE_50__* @gdImageCreateFromPngCtx(%struct.TYPE_51__* %92)
  store %struct.TYPE_50__* %93, %struct.TYPE_50__** %8, align 8
  %94 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %95 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %96 = call i32 @CompareImages(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_50__* %94, %struct.TYPE_50__* %95)
  %97 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %98 = call i32 @gdImageDestroy(%struct.TYPE_50__* %97)
  %99 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_51__*)*, i32 (%struct.TYPE_51__*)** %100, align 8
  %102 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %103 = call i32 %101(%struct.TYPE_51__* %102)
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @snprintf(i8* %104, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %107)
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %110 = call i32* @fopen(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %110, i32** %11, align 8
  %111 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @gdImageGd2(%struct.TYPE_50__* %111, i32* %112, i32 128, i32 2)
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @fclose(i32* %114)
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %117 = call i32* @fopen(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %117, i32** %10, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %75
  %121 = load i32, i32* @stderr, align 4
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %123 = call i32 @exit(i32 1) #3
  unreachable

124:                                              ; preds = %75
  %125 = load i32*, i32** %10, align 8
  %126 = call %struct.TYPE_50__* @gdImageCreateFromGd2(i32* %125)
  store %struct.TYPE_50__* %126, %struct.TYPE_50__** %8, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @fclose(i32* %127)
  %129 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %130 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %131 = call i32 @CompareImages(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_50__* %129, %struct.TYPE_50__* %130)
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %133 = call i32 @unlink(i8* %132)
  %134 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %135 = call i32 @gdImageDestroy(%struct.TYPE_50__* %134)
  %136 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %137 = call i8* @gdImageGd2Ptr(%struct.TYPE_50__* %136, i32 128, i32 2, i32* %13)
  store i8* %137, i8** %12, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load i8*, i8** %12, align 8
  %140 = call %struct.TYPE_51__* @gdNewDynamicCtx(i32 %138, i8* %139)
  store %struct.TYPE_51__* %140, %struct.TYPE_51__** %14, align 8
  %141 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %142 = call %struct.TYPE_50__* @gdImageCreateFromGd2Ctx(%struct.TYPE_51__* %141)
  store %struct.TYPE_50__* %142, %struct.TYPE_50__** %8, align 8
  %143 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %144 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %145 = call i32 @CompareImages(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_50__* %143, %struct.TYPE_50__* %144)
  %146 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %147 = call i32 @gdImageDestroy(%struct.TYPE_50__* %146)
  %148 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %148, i32 0, i32 0
  %150 = load i32 (%struct.TYPE_51__*)*, i32 (%struct.TYPE_51__*)** %149, align 8
  %151 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %152 = call i32 %150(%struct.TYPE_51__* %151)
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %154 = load i8**, i8*** %5, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @snprintf(i8* %153, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %156)
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %159 = call i32* @fopen(i8* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %159, i32** %11, align 8
  %160 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @gdImageGd(%struct.TYPE_50__* %160, i32* %161)
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @fclose(i32* %163)
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %166 = call i32* @fopen(i8* %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %166, i32** %10, align 8
  %167 = load i32*, i32** %10, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %124
  %170 = load i32, i32* @stderr, align 4
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %172 = call i32 @exit(i32 1) #3
  unreachable

173:                                              ; preds = %124
  %174 = load i32*, i32** %10, align 8
  %175 = call %struct.TYPE_50__* @gdImageCreateFromGd(i32* %174)
  store %struct.TYPE_50__* %175, %struct.TYPE_50__** %8, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = call i32 @fclose(i32* %176)
  %178 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %179 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %180 = call i32 @CompareImages(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), %struct.TYPE_50__* %178, %struct.TYPE_50__* %179)
  %181 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %182 = call i32 @unlink(i8* %181)
  %183 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %184 = call i32 @gdImageDestroy(%struct.TYPE_50__* %183)
  %185 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %186 = call i8* @gdImageGdPtr(%struct.TYPE_50__* %185, i32* %13)
  store i8* %186, i8** %12, align 8
  %187 = load i32, i32* %13, align 4
  %188 = load i8*, i8** %12, align 8
  %189 = call %struct.TYPE_51__* @gdNewDynamicCtx(i32 %187, i8* %188)
  store %struct.TYPE_51__* %189, %struct.TYPE_51__** %14, align 8
  %190 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %191 = call %struct.TYPE_50__* @gdImageCreateFromGdCtx(%struct.TYPE_51__* %190)
  store %struct.TYPE_50__* %191, %struct.TYPE_50__** %8, align 8
  %192 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %193 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %194 = call i32 @CompareImages(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %struct.TYPE_50__* %192, %struct.TYPE_50__* %193)
  %195 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %196 = call i32 @gdImageDestroy(%struct.TYPE_50__* %195)
  %197 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %197, i32 0, i32 0
  %199 = load i32 (%struct.TYPE_51__*)*, i32 (%struct.TYPE_51__*)** %198, align 8
  %200 = load %struct.TYPE_51__*, %struct.TYPE_51__** %14, align 8
  %201 = call i32 %199(%struct.TYPE_51__* %200)
  %202 = load i8**, i8*** %5, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i32* @fopen(i8* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %205, i32** %10, align 8
  %206 = load i32, i32* @freadWrapper, align 4
  %207 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %18, i32 0, i32 1
  store i32 %206, i32* %207, align 8
  %208 = load i32*, i32** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %18, i32 0, i32 0
  store i32* %208, i32** %209, align 8
  %210 = call %struct.TYPE_50__* @gdImageCreateFromPngSource(%struct.TYPE_48__* %18)
  store %struct.TYPE_50__* %210, %struct.TYPE_50__** %8, align 8
  %211 = load i32*, i32** %10, align 8
  %212 = call i32 @fclose(i32* %211)
  %213 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %214 = icmp eq %struct.TYPE_50__* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %173
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0))
  br label %223

217:                                              ; preds = %173
  %218 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %219 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %220 = call i32 @CompareImages(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), %struct.TYPE_50__* %218, %struct.TYPE_50__* %219)
  %221 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %222 = call i32 @gdImageDestroy(%struct.TYPE_50__* %221)
  br label %223

223:                                              ; preds = %217, %215
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %225 = load i8**, i8*** %5, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 1
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @snprintf(i8* %224, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %227)
  %229 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %230 = call i32* @fopen(i8* %229, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %230, i32** %11, align 8
  %231 = load i32, i32* @fwriteWrapper, align 4
  %232 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %19, i32 0, i32 1
  store i32 %231, i32* %232, align 8
  %233 = load i32*, i32** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %19, i32 0, i32 0
  store i32* %233, i32** %234, align 8
  %235 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %236 = call i32 @gdImagePngToSink(%struct.TYPE_50__* %235, %struct.TYPE_49__* %19)
  %237 = load i32*, i32** %11, align 8
  %238 = call i32 @fclose(i32* %237)
  %239 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %240 = call i32* @fopen(i8* %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %240, i32** %10, align 8
  %241 = load i32*, i32** %10, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %246, label %243

243:                                              ; preds = %223
  %244 = load i32, i32* @stderr, align 4
  %245 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0))
  br label %256

246:                                              ; preds = %223
  %247 = load i32*, i32** %10, align 8
  %248 = call %struct.TYPE_50__* @gdImageCreateFromPng(i32* %247)
  store %struct.TYPE_50__* %248, %struct.TYPE_50__** %8, align 8
  %249 = load i32*, i32** %10, align 8
  %250 = call i32 @fclose(i32* %249)
  %251 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %252 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %253 = call i32 @CompareImages(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), %struct.TYPE_50__* %251, %struct.TYPE_50__* %252)
  %254 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %255 = call i32 @gdImageDestroy(%struct.TYPE_50__* %254)
  br label %256

256:                                              ; preds = %246, %243
  %257 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %258 = call i32 @unlink(i8* %257)
  %259 = call i32* @fopen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %259, i32** %10, align 8
  %260 = load i32*, i32** %10, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %266, label %262

262:                                              ; preds = %256
  %263 = load i32, i32* @stderr, align 4
  %264 = call i32 (i32, i8*, ...) @fprintf(i32 %263, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0))
  %265 = call i32 @exit(i32 1) #3
  unreachable

266:                                              ; preds = %256
  %267 = load i32*, i32** %10, align 8
  %268 = call %struct.TYPE_50__* @gdImageCreateFromPng(i32* %267)
  store %struct.TYPE_50__* %268, %struct.TYPE_50__** %8, align 8
  %269 = load i32*, i32** %10, align 8
  %270 = call i32 @fclose(i32* %269)
  %271 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %271, i32** %10, align 8
  %272 = load i32*, i32** %10, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %278, label %274

274:                                              ; preds = %266
  %275 = load i32, i32* @stderr, align 4
  %276 = call i32 (i32, i8*, ...) @fprintf(i32 %275, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0))
  %277 = call i32 @exit(i32 1) #3
  unreachable

278:                                              ; preds = %266
  %279 = load i32*, i32** %10, align 8
  %280 = call %struct.TYPE_50__* @gdImageCreateFromGd2Part(i32* %279, i32 200, i32 300, i32 150, i32 100)
  store %struct.TYPE_50__* %280, %struct.TYPE_50__** %9, align 8
  %281 = load i32*, i32** %10, align 8
  %282 = call i32 @fclose(i32* %281)
  %283 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %284 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %285 = call i32 @CompareImages(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i64 0, i64 0), %struct.TYPE_50__* %283, %struct.TYPE_50__* %284)
  %286 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %287 = call i32 @gdImageDestroy(%struct.TYPE_50__* %286)
  %288 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %289 = call i32 @gdImageDestroy(%struct.TYPE_50__* %288)
  %290 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %290, i32** %10, align 8
  %291 = load i32*, i32** %10, align 8
  %292 = icmp ne i32* %291, null
  br i1 %292, label %297, label %293

293:                                              ; preds = %278
  %294 = load i32, i32* @stderr, align 4
  %295 = call i32 (i32, i8*, ...) @fprintf(i32 %294, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0))
  %296 = call i32 @exit(i32 1) #3
  unreachable

297:                                              ; preds = %278
  %298 = load i32*, i32** %10, align 8
  %299 = call %struct.TYPE_50__* @gdImageCreateFromPng(i32* %298)
  store %struct.TYPE_50__* %299, %struct.TYPE_50__** %8, align 8
  %300 = load i32*, i32** %10, align 8
  %301 = call i32 @fclose(i32* %300)
  %302 = call %struct.TYPE_50__* @gdImageCreate(i32 100, i32 60)
  store %struct.TYPE_50__* %302, %struct.TYPE_50__** %9, align 8
  %303 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %304 = call i32 @gdImageColorAllocate(%struct.TYPE_50__* %303, i32 255, i32 0, i32 0)
  store i32 %304, i32* %16, align 4
  %305 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %306 = call i32 @gdImageColorAllocate(%struct.TYPE_50__* %305, i32 0, i32 0, i32 255)
  store i32 %306, i32* %17, align 4
  %307 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %308 = load i32, i32* %16, align 4
  %309 = call i32 @gdImageFilledRectangle(%struct.TYPE_50__* %307, i32 0, i32 0, i32 49, i32 30, i32 %308)
  %310 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %311 = load i32, i32* %17, align 4
  %312 = call i32 @gdImageFilledRectangle(%struct.TYPE_50__* %310, i32 50, i32 30, i32 99, i32 59, i32 %311)
  %313 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %314 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %315 = call i32 @gdImageCopyMerge(%struct.TYPE_50__* %313, %struct.TYPE_50__* %314, i32 150, i32 200, i32 10, i32 10, i32 90, i32 50, i32 50)
  %316 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %317 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %318 = call i32 @gdImageCopyMerge(%struct.TYPE_50__* %316, %struct.TYPE_50__* %317, i32 180, i32 70, i32 10, i32 10, i32 90, i32 50, i32 50)
  %319 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %320 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %321 = call i32 @gdImageCopyMergeGray(%struct.TYPE_50__* %319, %struct.TYPE_50__* %320, i32 250, i32 160, i32 10, i32 10, i32 90, i32 50, i32 50)
  %322 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %323 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %324 = call i32 @gdImageCopyMergeGray(%struct.TYPE_50__* %322, %struct.TYPE_50__* %323, i32 80, i32 70, i32 10, i32 10, i32 90, i32 50, i32 50)
  %325 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %326 = call i32 @gdImageDestroy(%struct.TYPE_50__* %325)
  %327 = call i32* @fopen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %327, i32** %10, align 8
  %328 = load i32*, i32** %10, align 8
  %329 = icmp ne i32* %328, null
  br i1 %329, label %334, label %330

330:                                              ; preds = %297
  %331 = load i32, i32* @stderr, align 4
  %332 = call i32 (i32, i8*, ...) @fprintf(i32 %331, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i64 0, i64 0))
  %333 = call i32 @exit(i32 1) #3
  unreachable

334:                                              ; preds = %297
  %335 = load i32*, i32** %10, align 8
  %336 = call %struct.TYPE_50__* @gdImageCreateFromPng(i32* %335)
  store %struct.TYPE_50__* %336, %struct.TYPE_50__** %9, align 8
  %337 = load i32*, i32** %10, align 8
  %338 = call i32 @fclose(i32* %337)
  %339 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 %341)
  %343 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %344 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %345 = call i32 @CompareImages(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0), %struct.TYPE_50__* %343, %struct.TYPE_50__* %344)
  %346 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %347 = call i32 @gdImageDestroy(%struct.TYPE_50__* %346)
  %348 = load %struct.TYPE_50__*, %struct.TYPE_50__** %9, align 8
  %349 = call i32 @gdImageDestroy(%struct.TYPE_50__* %348)
  %350 = load i32, i32* @stderr, align 4
  %351 = call i32 (i32, i8*, ...) @fprintf(i32 %350, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.34, i64 0, i64 0))
  %352 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %353 = call i32 @gdImageColorClosest(%struct.TYPE_50__* %352, i32 0, i32 0, i32 0)
  store i32 %353, i32* %20, align 4
  %354 = load i32, i32* @stderr, align 4
  %355 = load i32, i32* %20, align 4
  %356 = call i32 (i32, i8*, ...) @fprintf(i32 %354, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i32 %355)
  %357 = load i32, i32* %20, align 4
  %358 = icmp eq i32 %357, -1
  br i1 %358, label %359, label %362

359:                                              ; preds = %334
  %360 = load i32, i32* @stderr, align 4
  %361 = call i32 (i32, i8*, ...) @fprintf(i32 %360, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.36, i64 0, i64 0))
  br label %441

362:                                              ; preds = %334
  %363 = call i32* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %363, i32** %11, align 8
  %364 = load i32*, i32** %11, align 8
  %365 = icmp ne i32* %364, null
  br i1 %365, label %370, label %366

366:                                              ; preds = %362
  %367 = load i32, i32* @stderr, align 4
  %368 = call i32 (i32, i8*, ...) @fprintf(i32 %367, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i64 0, i64 0))
  %369 = call i32 @exit(i32 1) #3
  unreachable

370:                                              ; preds = %362
  %371 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %372 = load i32, i32* %20, align 4
  %373 = load i32*, i32** %11, align 8
  %374 = call i32 @gdImageWBMP(%struct.TYPE_50__* %371, i32 %372, i32* %373)
  %375 = load i32*, i32** %11, align 8
  %376 = call i32 @fclose(i32* %375)
  %377 = call i32* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %377, i32** %10, align 8
  %378 = load i32*, i32** %10, align 8
  %379 = icmp ne i32* %378, null
  br i1 %379, label %384, label %380

380:                                              ; preds = %370
  %381 = load i32, i32* @stderr, align 4
  %382 = call i32 (i32, i8*, ...) @fprintf(i32 %381, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i64 0, i64 0))
  %383 = call i32 @exit(i32 1) #3
  unreachable

384:                                              ; preds = %370
  %385 = load i32*, i32** %10, align 8
  %386 = call %struct.TYPE_50__* @gdImageCreateFromWBMP(i32* %385)
  store %struct.TYPE_50__* %386, %struct.TYPE_50__** %8, align 8
  %387 = load i32, i32* @stderr, align 4
  %388 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %389 = call i32 @gdImageColorsTotal(%struct.TYPE_50__* %388)
  %390 = call i32 (i32, i8*, ...) @fprintf(i32 %387, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i32 %389)
  %391 = load i32, i32* @stderr, align 4
  %392 = call i32 (i32, i8*, ...) @fprintf(i32 %391, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %393

393:                                              ; preds = %410, %384
  %394 = load i32, i32* %21, align 4
  %395 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %396 = call i32 @gdImageColorsTotal(%struct.TYPE_50__* %395)
  %397 = icmp slt i32 %394, %396
  br i1 %397, label %398, label %413

398:                                              ; preds = %393
  %399 = load i32, i32* @stderr, align 4
  %400 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %401 = load i32, i32* %21, align 4
  %402 = call i32 @gdImageRed(%struct.TYPE_50__* %400, i32 %401)
  %403 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %404 = load i32, i32* %21, align 4
  %405 = call i32 @gdImageGreen(%struct.TYPE_50__* %403, i32 %404)
  %406 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %407 = load i32, i32* %21, align 4
  %408 = call i32 @gdImageBlue(%struct.TYPE_50__* %406, i32 %407)
  %409 = call i32 (i32, i8*, ...) @fprintf(i32 %399, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i32 %402, i32 %405, i32 %408)
  br label %410

410:                                              ; preds = %398
  %411 = load i32, i32* %21, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %21, align 4
  br label %393

413:                                              ; preds = %393
  %414 = load i32*, i32** %10, align 8
  %415 = call i32 @fclose(i32* %414)
  %416 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %417 = icmp ne %struct.TYPE_50__* %416, null
  br i1 %417, label %422, label %418

418:                                              ; preds = %413
  %419 = load i32, i32* @stderr, align 4
  %420 = call i32 (i32, i8*, ...) @fprintf(i32 %419, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0))
  %421 = call i32 @exit(i32 1) #3
  unreachable

422:                                              ; preds = %413
  %423 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %424 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %425 = call i32 @CompareImages(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i64 0, i64 0), %struct.TYPE_50__* %423, %struct.TYPE_50__* %424)
  %426 = call i32* @fopen(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %426, i32** %11, align 8
  %427 = load i32*, i32** %11, align 8
  %428 = icmp ne i32* %427, null
  br i1 %428, label %433, label %429

429:                                              ; preds = %422
  %430 = load i32, i32* @stderr, align 4
  %431 = call i32 (i32, i8*, ...) @fprintf(i32 %430, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.46, i64 0, i64 0))
  %432 = call i32 @exit(i32 1) #3
  unreachable

433:                                              ; preds = %422
  %434 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %435 = load i32*, i32** %11, align 8
  %436 = call i32 @gdImagePng(%struct.TYPE_50__* %434, i32* %435)
  %437 = load i32*, i32** %11, align 8
  %438 = call i32 @fclose(i32* %437)
  %439 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %440 = call i32 @gdImageDestroy(%struct.TYPE_50__* %439)
  br label %441

441:                                              ; preds = %433, %359
  %442 = load %struct.TYPE_50__*, %struct.TYPE_50__** %6, align 8
  %443 = call i32 @gdImageDestroy(%struct.TYPE_50__* %442)
  %444 = load %struct.TYPE_50__*, %struct.TYPE_50__** %7, align 8
  %445 = call i32 @gdImageDestroy(%struct.TYPE_50__* %444)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.TYPE_50__* @gdImageCreateFromPng(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @CompareImages(i8*, %struct.TYPE_50__*, %struct.TYPE_50__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @gdImagePng(%struct.TYPE_50__*, i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @gdImageDestroy(%struct.TYPE_50__*) #1

declare dso_local i8* @gdImagePngPtr(%struct.TYPE_50__*, i32*) #1

declare dso_local %struct.TYPE_51__* @gdNewDynamicCtx(i32, i8*) #1

declare dso_local %struct.TYPE_50__* @gdImageCreateFromPngCtx(%struct.TYPE_51__*) #1

declare dso_local i32 @gdImageGd2(%struct.TYPE_50__*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_50__* @gdImageCreateFromGd2(i32*) #1

declare dso_local i8* @gdImageGd2Ptr(%struct.TYPE_50__*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_50__* @gdImageCreateFromGd2Ctx(%struct.TYPE_51__*) #1

declare dso_local i32 @gdImageGd(%struct.TYPE_50__*, i32*) #1

declare dso_local %struct.TYPE_50__* @gdImageCreateFromGd(i32*) #1

declare dso_local i8* @gdImageGdPtr(%struct.TYPE_50__*, i32*) #1

declare dso_local %struct.TYPE_50__* @gdImageCreateFromGdCtx(%struct.TYPE_51__*) #1

declare dso_local %struct.TYPE_50__* @gdImageCreateFromPngSource(%struct.TYPE_48__*) #1

declare dso_local i32 @gdImagePngToSink(%struct.TYPE_50__*, %struct.TYPE_49__*) #1

declare dso_local %struct.TYPE_50__* @gdImageCreateFromGd2Part(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_50__* @gdImageCreate(i32, i32) #1

declare dso_local i32 @gdImageColorAllocate(%struct.TYPE_50__*, i32, i32, i32) #1

declare dso_local i32 @gdImageFilledRectangle(%struct.TYPE_50__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageCopyMerge(%struct.TYPE_50__*, %struct.TYPE_50__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageCopyMergeGray(%struct.TYPE_50__*, %struct.TYPE_50__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageColorClosest(%struct.TYPE_50__*, i32, i32, i32) #1

declare dso_local i32 @gdImageWBMP(%struct.TYPE_50__*, i32, i32*) #1

declare dso_local %struct.TYPE_50__* @gdImageCreateFromWBMP(i32*) #1

declare dso_local i32 @gdImageColorsTotal(%struct.TYPE_50__*) #1

declare dso_local i32 @gdImageRed(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @gdImageGreen(%struct.TYPE_50__*, i32) #1

declare dso_local i32 @gdImageBlue(%struct.TYPE_50__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
