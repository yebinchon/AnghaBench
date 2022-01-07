; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_webpng.c_main.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_webpng.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Error: can't open file %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Error: %s is not a valid PNG file.\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Error: -i specified without y or n.\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Error: -t specified without a color table index.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Index\09Red\09Green\09Blue Alpha\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"%d\09%d\09%d\09%d\09%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Truecolor image, no palette entries to list.\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Width: %d Height: %d Colors: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"First 100%% transparent index: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"First 100%% transparent index: none\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Interlaced: yes\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Interlaced: no\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"alpha channel information:\0A\00", align 1
@gdAlphaOpaque = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"%d\09%d\09%d\09%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"NOT a true color image\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"%d alpha channels\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Unknown argument: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [448 x i8] c"Usage: webpng [-i y|n ] [-l] [-t index|none ] [-d] pngname.png\0A  -i [y|n]   Turns on/off interlace\0A  -l         Prints the table of color indexes\0A  -t [index] Set the transparent color to the specified index (0-255 or \22none\22)\0A  -d         Reports the dimensions and other characteristics of the image.\0A  -a         Prints all alpha channels that are not 100%% opaque.\0A\0AIf you specify '-' as the input file, stdin/stdout will be used input/output.\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.29 = private unnamed_addr constant [13 x i8] c"webpng.tmp%d\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"Unable to write to %s -- exiting\0A\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"rename\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [20 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %2
  store i32 1, i32* %12, align 4
  br label %343

33:                                               ; preds = %26
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  %43 = load i32*, i32** @stdin, align 8
  store i32* %43, i32** %6, align 8
  br label %52

44:                                               ; preds = %33
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32* @fopen(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %51, i32** %6, align 8
  br label %52

52:                                               ; preds = %44, %42
  %53 = load i32*, i32** %6, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %52
  %66 = load i32*, i32** %6, align 8
  %67 = call %struct.TYPE_17__* @gdImageCreateFromPng(i32* %66)
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %10, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @fclose(i32* %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %71 = icmp ne %struct.TYPE_17__* %70, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = call i32 @exit(i32 1) #3
  unreachable

82:                                               ; preds = %65
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %339, %82
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %342

88:                                               ; preds = %83
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  store i32 1, i32* %12, align 4
  br label %343

97:                                               ; preds = %88
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %144, label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %4, align 4
  %108 = sub nsw i32 %107, 2
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* @stderr, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %343

113:                                              ; preds = %105
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %124 = call i32 @gdImageInterlace(%struct.TYPE_17__* %123, i32 1)
  br label %141

125:                                              ; preds = %113
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %126, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %125
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %136 = call i32 @gdImageInterlace(%struct.TYPE_17__* %135, i32 0)
  br label %140

137:                                              ; preds = %125
  %138 = load i32, i32* @stderr, align 4
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %343

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %122
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %337

144:                                              ; preds = %97
  %145 = load i8**, i8*** %5, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %186, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %4, align 4
  %155 = sub nsw i32 %154, 2
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* @stderr, align 4
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %343

160:                                              ; preds = %152
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %161, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i64 @strcmp(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %160
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %171 = call i32 @gdImageColorTransparent(%struct.TYPE_17__* %170, i32 -1)
  br label %183

172:                                              ; preds = %160
  %173 = load i8**, i8*** %5, align 8
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %173, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @atoi(i8* %178)
  store i32 %179, i32* %14, align 4
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @gdImageColorTransparent(%struct.TYPE_17__* %180, i32 %181)
  br label %183

183:                                              ; preds = %172, %169
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %336

186:                                              ; preds = %144
  %187 = load i8**, i8*** %5, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @strcmp(i8* %191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %228, label %194

194:                                              ; preds = %186
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %225, label %199

199:                                              ; preds = %194
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %201

201:                                              ; preds = %221, %199
  %202 = load i32, i32* %15, align 4
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %204 = call i32 @gdImageColorsTotal(%struct.TYPE_17__* %203)
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %201
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %209 = load i32, i32* %15, align 4
  %210 = call i32 @gdImageRed(%struct.TYPE_17__* %208, i32 %209)
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %212 = load i32, i32* %15, align 4
  %213 = call i32 @gdImageGreen(%struct.TYPE_17__* %211, i32 %212)
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %215 = load i32, i32* %15, align 4
  %216 = call i32 @gdImageBlue(%struct.TYPE_17__* %214, i32 %215)
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %218 = load i32, i32* %15, align 4
  %219 = call i32 @gdImageAlpha(%struct.TYPE_17__* %217, i32 %218)
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %207, i32 %210, i32 %213, i32 %216, i32 %219)
  br label %221

221:                                              ; preds = %206
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %15, align 4
  br label %201

224:                                              ; preds = %201
  br label %227

225:                                              ; preds = %194
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  br label %227

227:                                              ; preds = %225, %224
  store i32 0, i32* %12, align 4
  br label %335

228:                                              ; preds = %186
  %229 = load i8**, i8*** %5, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = call i64 @strcmp(i8* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %262, label %236

236:                                              ; preds = %228
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %238 = call i32 @gdImageSX(%struct.TYPE_17__* %237)
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %240 = call i32 @gdImageSY(%struct.TYPE_17__* %239)
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %242 = call i32 @gdImageColorsTotal(%struct.TYPE_17__* %241)
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %238, i32 %240, i32 %242)
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %245 = call i32 @gdImageGetTransparent(%struct.TYPE_17__* %244)
  store i32 %245, i32* %16, align 4
  %246 = load i32, i32* %16, align 4
  %247 = icmp ne i32 %246, -1
  br i1 %247, label %248, label %251

248:                                              ; preds = %236
  %249 = load i32, i32* %16, align 4
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 %249)
  br label %253

251:                                              ; preds = %236
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %248
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %255 = call i64 @gdImageGetInterlaced(%struct.TYPE_17__* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  br label %261

259:                                              ; preds = %253
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  br label %261

261:                                              ; preds = %259, %257
  store i32 0, i32* %12, align 4
  br label %334

262:                                              ; preds = %228
  %263 = load i8**, i8*** %5, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8*, i8** %263, i64 %265
  %267 = load i8*, i8** %266, align 8
  %268 = call i64 @strcmp(i8* %267, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %325, label %270

270:                                              ; preds = %262
  store i32 0, i32* %23, align 4
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %272 = call i32 @gdImageSX(%struct.TYPE_17__* %271)
  store i32 %272, i32* %17, align 4
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %274 = call i32 @gdImageSY(%struct.TYPE_17__* %273)
  store i32 %274, i32* %18, align 4
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %320

280:                                              ; preds = %270
  store i32 0, i32* %20, align 4
  br label %281

281:                                              ; preds = %316, %280
  %282 = load i32, i32* %20, align 4
  %283 = load i32, i32* %18, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %319

285:                                              ; preds = %281
  store i32 0, i32* %19, align 4
  br label %286

286:                                              ; preds = %312, %285
  %287 = load i32, i32* %19, align 4
  %288 = load i32, i32* %17, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %315

290:                                              ; preds = %286
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %292 = load i32, i32* %19, align 4
  %293 = load i32, i32* %20, align 4
  %294 = call i32 @gdImageGetPixel(%struct.TYPE_17__* %291, i32 %292, i32 %293)
  store i32 %294, i32* %22, align 4
  %295 = load i32, i32* %22, align 4
  %296 = call i32 @gdTrueColorGetAlpha(i32 %295)
  store i32 %296, i32* %21, align 4
  %297 = load i32, i32* %21, align 4
  %298 = load i32, i32* @gdAlphaOpaque, align 4
  %299 = icmp sgt i32 %297, %298
  br i1 %299, label %300, label %311

300:                                              ; preds = %290
  %301 = load i32, i32* %22, align 4
  %302 = call i32 @gdTrueColorGetRed(i32 %301)
  %303 = load i32, i32* %22, align 4
  %304 = call i32 @gdTrueColorGetGreen(i32 %303)
  %305 = load i32, i32* %22, align 4
  %306 = call i32 @gdTrueColorGetBlue(i32 %305)
  %307 = load i32, i32* %21, align 4
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 %302, i32 %304, i32 %306, i32 %307)
  %309 = load i32, i32* %23, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %23, align 4
  br label %311

311:                                              ; preds = %300, %290
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %19, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %19, align 4
  br label %286

315:                                              ; preds = %286
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %20, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %20, align 4
  br label %281

319:                                              ; preds = %281
  br label %322

320:                                              ; preds = %270
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0))
  br label %322

322:                                              ; preds = %320, %319
  store i32 0, i32* %12, align 4
  %323 = load i32, i32* %23, align 4
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %323)
  br label %333

325:                                              ; preds = %262
  %326 = load i32, i32* @stderr, align 4
  %327 = load i8**, i8*** %5, align 8
  %328 = load i32, i32* %11, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8*, i8** %327, i64 %329
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 (i32, i8*, ...) @fprintf(i32 %326, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8* %331)
  br label %342

333:                                              ; preds = %322
  br label %334

334:                                              ; preds = %333, %261
  br label %335

335:                                              ; preds = %334, %227
  br label %336

336:                                              ; preds = %335, %183
  br label %337

337:                                              ; preds = %336, %141
  br label %338

338:                                              ; preds = %337
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %11, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %11, align 4
  br label %83

342:                                              ; preds = %325, %83
  br label %343

343:                                              ; preds = %342, %157, %137, %110, %96, %32
  %344 = load i32, i32* %12, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %343
  %347 = load i32, i32* @stderr, align 4
  %348 = call i32 (i32, i8*, ...) @fprintf(i32 %347, i8* getelementptr inbounds ([448 x i8], [448 x i8]* @.str.28, i64 0, i64 0))
  br label %349

349:                                              ; preds = %346, %343
  %350 = load i32, i32* %13, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %401

352:                                              ; preds = %349
  %353 = load i32, i32* %9, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %352
  %356 = load i32*, i32** @stdout, align 8
  store i32* %356, i32** %7, align 8
  br label %371

357:                                              ; preds = %352
  %358 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %359 = call i32 (...) @getpid()
  %360 = call i32 @snprintf(i8* %358, i32 20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32 %359)
  %361 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %362 = call i32* @fopen(i8* %361, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  store i32* %362, i32** %7, align 8
  %363 = load i32*, i32** %7, align 8
  %364 = icmp ne i32* %363, null
  br i1 %364, label %370, label %365

365:                                              ; preds = %357
  %366 = load i32, i32* @stderr, align 4
  %367 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %368 = call i32 (i32, i8*, ...) @fprintf(i32 %366, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i64 0, i64 0), i8* %367)
  %369 = call i32 @exit(i32 1) #3
  unreachable

370:                                              ; preds = %357
  br label %371

371:                                              ; preds = %370, %355
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %373 = load i32*, i32** %7, align 8
  %374 = call i32 @gdImagePng(%struct.TYPE_17__* %372, i32* %373)
  %375 = load i32, i32* %9, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %400, label %377

377:                                              ; preds = %371
  %378 = load i32*, i32** %7, align 8
  %379 = call i32 @fclose(i32* %378)
  %380 = load i8**, i8*** %5, align 8
  %381 = load i32, i32* %4, align 4
  %382 = sub nsw i32 %381, 1
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8*, i8** %380, i64 %383
  %385 = load i8*, i8** %384, align 8
  %386 = call i32 @unlink(i8* %385)
  %387 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %388 = load i8**, i8*** %5, align 8
  %389 = load i32, i32* %4, align 4
  %390 = sub nsw i32 %389, 1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8*, i8** %388, i64 %391
  %393 = load i8*, i8** %392, align 8
  %394 = call i64 @rename(i8* %387, i8* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %377
  %397 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %398 = call i32 @exit(i32 1) #3
  unreachable

399:                                              ; preds = %377
  br label %400

400:                                              ; preds = %399, %371
  br label %401

401:                                              ; preds = %400, %349
  %402 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %403 = icmp ne %struct.TYPE_17__* %402, null
  br i1 %403, label %404, label %407

404:                                              ; preds = %401
  %405 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %406 = call i32 @gdImageDestroy(%struct.TYPE_17__* %405)
  br label %407

407:                                              ; preds = %404, %401
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_17__* @gdImageCreateFromPng(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @gdImageInterlace(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @gdImageColorTransparent(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @gdImageColorsTotal(%struct.TYPE_17__*) #1

declare dso_local i32 @gdImageRed(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @gdImageGreen(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @gdImageBlue(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @gdImageAlpha(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @gdImageSX(%struct.TYPE_17__*) #1

declare dso_local i32 @gdImageSY(%struct.TYPE_17__*) #1

declare dso_local i32 @gdImageGetTransparent(%struct.TYPE_17__*) #1

declare dso_local i64 @gdImageGetInterlaced(%struct.TYPE_17__*) #1

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @gdTrueColorGetAlpha(i32) #1

declare dso_local i32 @gdTrueColorGetRed(i32) #1

declare dso_local i32 @gdTrueColorGetGreen(i32) #1

declare dso_local i32 @gdTrueColorGetBlue(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @gdImagePng(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @gdImageDestroy(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
