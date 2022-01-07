; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_yuvjpeg.c_main.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_yuvjpeg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { i32, i32, i32, i32, i8*, %struct.TYPE_2__*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.jpeg_error_mgr = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Required arguments:\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"1. JPEG quality value, 0-100\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"2. Image size (e.g. '512x512')\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"3. Path to YUV input file\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"4. Path to JPG output file\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Invalid JPEG quality value!\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Invalid image size input!\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Invalid path to YUV file!\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"Unexpected input format!\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Memory allocation failure!\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Error reading yuv file\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Invalid path to JPEG file!\0A\00", align 1
@JCS_YCbCr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.jpeg_compress_struct, align 8
  %21 = alloca %struct.jpeg_error_mgr, align 4
  %22 = alloca i32*, align 8
  %23 = alloca [16 x i8*], align 16
  %24 = alloca [8 x i8*], align 16
  %25 = alloca [8 x i8*], align 16
  %26 = alloca [3 x i8**], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 5
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %366

42:                                               ; preds = %2
  store i64 0, i64* @errno, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strtol(i8* %45, i32* null, i32 10)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* @errno, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %6, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  %54 = icmp sgt i64 %53, 100
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %49, %42
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %366

58:                                               ; preds = %52
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @sscanf(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %8, i32* %9)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %366

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %366

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = ashr i32 %82, 1
  store i32 %83, i32* %11, align 4
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 3
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %14, align 8
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 4
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %15, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = call i32* @fopen(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %91, i32** %16, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %77
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %366

97:                                               ; preds = %77
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* @SEEK_END, align 4
  %100 = call i32 @fseek(i32* %98, i32 0, i32 %99)
  %101 = load i32*, i32** %16, align 8
  %102 = call i64 @ftell(i32* %101)
  store i64 %102, i64* %17, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = load i32, i32* @SEEK_SET, align 4
  %105 = call i32 @fseek(i32* %103, i32 0, i32 %104)
  %106 = load i64, i64* %17, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %108, %110
  %112 = load i32, i32* %10, align 4
  %113 = mul nsw i32 2, %112
  %114 = load i32, i32* %11, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = add i64 %111, %116
  %118 = icmp ne i64 %106, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %97
  %120 = load i32*, i32** %16, align 8
  %121 = call i32 @fclose(i32* %120)
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 @fprintf(i32 %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %366

124:                                              ; preds = %97
  %125 = load i64, i64* %17, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i8* @malloc(i32 %126)
  store i8* %127, i8** %18, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %124
  %131 = load i32*, i32** %16, align 8
  %132 = call i32 @fclose(i32* %131)
  %133 = load i32, i32* @stderr, align 4
  %134 = call i32 @fprintf(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %366

135:                                              ; preds = %124
  %136 = load i8*, i8** %18, align 8
  %137 = load i64, i64* %17, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = call i32 @fread(i8* %136, i64 %137, i32 1, i32* %138)
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* @stderr, align 4
  %143 = call i32 @fprintf(i32 %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %135
  %145 = load i32*, i32** %16, align 8
  %146 = call i32 @fclose(i32* %145)
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 15
  %149 = and i32 %148, -16
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 15
  %152 = and i32 %151, -16
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %13, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* %12, align 4
  %157 = sdiv i32 %156, 2
  %158 = mul nsw i32 2, %157
  %159 = load i32, i32* %13, align 4
  %160 = sdiv i32 %159, 2
  %161 = mul nsw i32 %158, %160
  %162 = add nsw i32 %155, %161
  %163 = call i8* @malloc(i32 %162)
  store i8* %163, i8** %19, align 8
  %164 = load i8*, i8** %19, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %171, label %166

166:                                              ; preds = %144
  %167 = load i8*, i8** %18, align 8
  %168 = call i32 @free(i8* %167)
  %169 = load i32, i32* @stderr, align 4
  %170 = call i32 @fprintf(i32 %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %366

171:                                              ; preds = %144
  %172 = load i8*, i8** %19, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i8*, i8** %18, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @extend_edge(i8* %172, i32 %173, i32 %174, i8* %175, i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load i8*, i8** %18, align 8
  %182 = call i32 @free(i8* %181)
  %183 = call i32 @jpeg_std_error(%struct.jpeg_error_mgr* %21)
  %184 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 8
  store i32 %183, i32* %184, align 4
  %185 = call i32 @jpeg_create_compress(%struct.jpeg_compress_struct* %20)
  %186 = load i8*, i8** %15, align 8
  %187 = call i32* @fopen(i8* %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i32* %187, i32** %22, align 8
  %188 = load i32*, i32** %22, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %195, label %190

190:                                              ; preds = %171
  %191 = load i8*, i8** %19, align 8
  %192 = call i32 @free(i8* %191)
  %193 = load i32, i32* @stderr, align 4
  %194 = call i32 @fprintf(i32 %193, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %366

195:                                              ; preds = %171
  %196 = load i32*, i32** %22, align 8
  %197 = call i32 @jpeg_stdio_dest(%struct.jpeg_compress_struct* %20, i32* %196)
  %198 = load i32, i32* %8, align 4
  %199 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 0
  store i32 %198, i32* %199, align 8
  %200 = load i32, i32* %9, align 4
  %201 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 1
  store i32 %200, i32* %201, align 4
  %202 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 2
  store i32 3, i32* %202, align 8
  %203 = load i32, i32* @JCS_YCbCr, align 4
  %204 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 7
  store i32 %203, i32* %204, align 8
  %205 = call i32 @jpeg_set_defaults(%struct.jpeg_compress_struct* %20)
  %206 = load i8*, i8** @TRUE, align 8
  %207 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 6
  store i8* %206, i8** %207, align 8
  %208 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  store i32 2, i32* %211, align 4
  %212 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 1
  store i32 2, i32* %215, align 4
  %216 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i64 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 2
  store i32 0, i32* %219, align 4
  %220 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 3
  store i32 0, i32* %223, align 4
  %224 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 4
  store i32 0, i32* %227, align 4
  %228 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i64 1
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  store i32 1, i32* %231, align 4
  %232 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i64 1
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 1
  store i32 1, i32* %235, align 4
  %236 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i64 1
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 2
  store i32 1, i32* %239, align 4
  %240 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i64 1
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 3
  store i32 1, i32* %243, align 4
  %244 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i64 1
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 4
  store i32 1, i32* %247, align 4
  %248 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i64 2
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 0
  store i32 1, i32* %251, align 4
  %252 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 2
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 1
  store i32 1, i32* %255, align 4
  %256 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i64 2
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 2
  store i32 1, i32* %259, align 4
  %260 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i64 2
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 3
  store i32 1, i32* %263, align 4
  %264 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 5
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i64 2
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 4
  store i32 1, i32* %267, align 4
  %268 = load i64, i64* %6, align 8
  %269 = load i8*, i8** @TRUE, align 8
  %270 = call i32 @jpeg_set_quality(%struct.jpeg_compress_struct* %20, i64 %268, i8* %269)
  %271 = load i8*, i8** @TRUE, align 8
  %272 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 4
  store i8* %271, i8** %272, align 8
  %273 = load i8*, i8** @TRUE, align 8
  %274 = call i32 @jpeg_start_compress(%struct.jpeg_compress_struct* %20, i8* %273)
  %275 = getelementptr inbounds [16 x i8*], [16 x i8*]* %23, i64 0, i64 0
  %276 = getelementptr inbounds [3 x i8**], [3 x i8**]* %26, i64 0, i64 0
  store i8** %275, i8*** %276, align 16
  %277 = getelementptr inbounds [8 x i8*], [8 x i8*]* %24, i64 0, i64 0
  %278 = getelementptr inbounds [3 x i8**], [3 x i8**]* %26, i64 0, i64 1
  store i8** %277, i8*** %278, align 8
  %279 = getelementptr inbounds [8 x i8*], [8 x i8*]* %25, i64 0, i64 0
  %280 = getelementptr inbounds [3 x i8**], [3 x i8**]* %26, i64 0, i64 2
  store i8** %279, i8*** %280, align 16
  br label %281

281:                                              ; preds = %356, %195
  %282 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %283, %285
  br i1 %286, label %287, label %359

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %290

290:                                              ; preds = %305, %287
  %291 = load i32, i32* %27, align 4
  %292 = icmp slt i32 %291, 16
  br i1 %292, label %293, label %308

293:                                              ; preds = %290
  %294 = load i8*, i8** %19, align 8
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* %28, align 4
  %297 = load i32, i32* %27, align 4
  %298 = add nsw i32 %296, %297
  %299 = mul nsw i32 %295, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %294, i64 %300
  %302 = load i32, i32* %27, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [16 x i8*], [16 x i8*]* %23, i64 0, i64 %303
  store i8* %301, i8** %304, align 8
  br label %305

305:                                              ; preds = %293
  %306 = load i32, i32* %27, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %27, align 4
  br label %290

308:                                              ; preds = %290
  store i32 0, i32* %27, align 4
  br label %309

309:                                              ; preds = %353, %308
  %310 = load i32, i32* %27, align 4
  %311 = icmp slt i32 %310, 8
  br i1 %311, label %312, label %356

312:                                              ; preds = %309
  %313 = load i8*, i8** %19, align 8
  %314 = load i32, i32* %12, align 4
  %315 = load i32, i32* %13, align 4
  %316 = mul nsw i32 %314, %315
  %317 = load i32, i32* %12, align 4
  %318 = sdiv i32 %317, 2
  %319 = load i32, i32* %28, align 4
  %320 = sdiv i32 %319, 2
  %321 = load i32, i32* %27, align 4
  %322 = add nsw i32 %320, %321
  %323 = mul nsw i32 %318, %322
  %324 = add nsw i32 %316, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %313, i64 %325
  %327 = load i32, i32* %27, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [8 x i8*], [8 x i8*]* %24, i64 0, i64 %328
  store i8* %326, i8** %329, align 8
  %330 = load i8*, i8** %19, align 8
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %13, align 4
  %333 = mul nsw i32 %331, %332
  %334 = load i32, i32* %12, align 4
  %335 = sdiv i32 %334, 2
  %336 = load i32, i32* %13, align 4
  %337 = sdiv i32 %336, 2
  %338 = mul nsw i32 %335, %337
  %339 = add nsw i32 %333, %338
  %340 = load i32, i32* %12, align 4
  %341 = sdiv i32 %340, 2
  %342 = load i32, i32* %28, align 4
  %343 = sdiv i32 %342, 2
  %344 = load i32, i32* %27, align 4
  %345 = add nsw i32 %343, %344
  %346 = mul nsw i32 %341, %345
  %347 = add nsw i32 %339, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %330, i64 %348
  %350 = load i32, i32* %27, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [8 x i8*], [8 x i8*]* %25, i64 0, i64 %351
  store i8* %349, i8** %352, align 8
  br label %353

353:                                              ; preds = %312
  %354 = load i32, i32* %27, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %27, align 4
  br label %309

356:                                              ; preds = %309
  %357 = getelementptr inbounds [3 x i8**], [3 x i8**]* %26, i64 0, i64 0
  %358 = call i32 @jpeg_write_raw_data(%struct.jpeg_compress_struct* %20, i8*** %357, i32 16)
  br label %281

359:                                              ; preds = %281
  %360 = call i32 @jpeg_finish_compress(%struct.jpeg_compress_struct* %20)
  %361 = call i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct* %20)
  %362 = load i8*, i8** %19, align 8
  %363 = call i32 @free(i8* %362)
  %364 = load i32*, i32** %22, align 8
  %365 = call i32 @fclose(i32* %364)
  store i32 0, i32* %3, align 4
  br label %366

366:                                              ; preds = %359, %190, %166, %130, %119, %94, %74, %65, %55, %31
  %367 = load i32, i32* %3, align 4
  ret i32 %367
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @extend_edge(i8*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_std_error(%struct.jpeg_error_mgr*) #1

declare dso_local i32 @jpeg_create_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_stdio_dest(%struct.jpeg_compress_struct*, i32*) #1

declare dso_local i32 @jpeg_set_defaults(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_set_quality(%struct.jpeg_compress_struct*, i64, i8*) #1

declare dso_local i32 @jpeg_start_compress(%struct.jpeg_compress_struct*, i8*) #1

declare dso_local i32 @jpeg_write_raw_data(%struct.jpeg_compress_struct*, i8***, i32) #1

declare dso_local i32 @jpeg_finish_compress(%struct.jpeg_compress_struct*) #1

declare dso_local i32 @jpeg_destroy_compress(%struct.jpeg_compress_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
