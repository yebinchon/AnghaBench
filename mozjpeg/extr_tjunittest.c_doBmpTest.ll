; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_doBmpTest.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_doBmpTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tjPixelSize = common dso_local global i32* null, align 8
@TJPF_GRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"112c682e82ce5de1cca089e20d60000b\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"51976530acf75f02beddf5d21149101d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"c0c9f772b464d1896326883a5c79c545\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"6d659071b9bfcdee2def22cb58ddadca\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Could not allocate memory\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"test_bmp_%s_%d_%s.%s\00", align 1
@pixFormatStr = common dso_local global i8** null, align 8
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"bu\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"td\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"\0A   Image dimensions of %s are bogus\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\0A   Pixel data in %s is bogus\0A\00", align 1
@TJPF_XBGR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"\0A   Converting %s to RGB failed\0A\00", align 1
@TJPF_CMYK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"\0A   Converting %s to CMYK failed\0A\00", align 1
@TJPF_UNKNOWN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@TJPF_BGR = common dso_local global i32 0, align 4
@TJPF_RGB = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [56 x i8] c"\0A   tjLoadImage() returned unexpected pixel format: %s\0A\00", align 1
@exitStatus = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @doBmpTest(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [80 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca [65 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load i32*, i32** @tjPixelSize, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %17, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @PAD(i32 %32, i32 %33)
  store i32 %34, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %22, align 4
  store i8* null, i8** %23, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @TJPF_GRAY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %6
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @strcasecmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)
  store i8* %45, i8** %24, align 8
  br label %53

46:                                               ; preds = %6
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @strcasecmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)
  store i8* %52, i8** %24, align 8
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %54, %55
  %57 = call i64 @tjAlloc(i32 %56)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %23, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %53
  %63 = load i8*, i8** %23, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @initBitmap(i8* %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %71 = load i8**, i8*** @pixFormatStr, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @snprintf(i8* %70, i32 80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %75, i32 %76, i8* %82, i8* %83)
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %86 = load i8*, i8** %23, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @tjSaveImage(i8* %85, i8* %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = call i32 @_tj(i32 %92)
  %94 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %95 = getelementptr inbounds [65 x i8], [65 x i8]* %16, i64 0, i64 0
  %96 = call i8* @MD5File(i8* %94, i8* %95)
  store i8* %96, i8** %15, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = load i8*, i8** %24, align 8
  %99 = call i64 @strcasecmp(i8* %97, i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %62
  %102 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %103 = load i8*, i8** %15, align 8
  %104 = load i8*, i8** %24, align 8
  %105 = call i32 @_throwmd5(i8* %102, i8* %103, i8* %104)
  br label %106

106:                                              ; preds = %101, %62
  %107 = load i8*, i8** %23, align 8
  %108 = call i32 @tjFree(i8* %107)
  store i8* null, i8** %23, align 8
  %109 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i8* @tjLoadImage(i8* %109, i32* %19, i32 %110, i32* %20, i32* %12, i32 %111)
  store i8* %112, i8** %23, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = call i32 (...) @_throwtj()
  br label %116

116:                                              ; preds = %114, %106
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %20, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120, %116
  %125 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %126 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %125)
  store i32 -1, i32* %21, align 4
  br label %262

127:                                              ; preds = %120
  %128 = load i8*, i8** %23, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @cmpBitmap(i8* %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 0)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %127
  %137 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %138 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %137)
  store i32 -1, i32* %21, align 4
  br label %262

139:                                              ; preds = %127
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @TJPF_GRAY, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %208

143:                                              ; preds = %139
  %144 = load i8*, i8** %23, align 8
  %145 = call i32 @tjFree(i8* %144)
  store i8* null, i8** %23, align 8
  %146 = load i32, i32* @TJPF_XBGR, align 4
  store i32 %146, i32* %12, align 4
  %147 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i8* @tjLoadImage(i8* %147, i32* %19, i32 %148, i32* %20, i32* %12, i32 %149)
  store i8* %150, i8** %23, align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %143
  %153 = call i32 (...) @_throwtj()
  br label %154

154:                                              ; preds = %152, %143
  %155 = load i32, i32* %9, align 4
  %156 = load i32*, i32** @tjPixelSize, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %155, %160
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @PAD(i32 %161, i32 %162)
  store i32 %163, i32* %18, align 4
  %164 = load i8*, i8** %23, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @cmpBitmap(i8* %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 1)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %154
  %173 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %174 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %173)
  store i32 -1, i32* %21, align 4
  br label %262

175:                                              ; preds = %154
  %176 = load i8*, i8** %23, align 8
  %177 = call i32 @tjFree(i8* %176)
  store i8* null, i8** %23, align 8
  %178 = load i32, i32* @TJPF_CMYK, align 4
  store i32 %178, i32* %12, align 4
  %179 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %13, align 4
  %182 = call i8* @tjLoadImage(i8* %179, i32* %19, i32 %180, i32* %20, i32* %12, i32 %181)
  store i8* %182, i8** %23, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %175
  %185 = call i32 (...) @_throwtj()
  br label %186

186:                                              ; preds = %184, %175
  %187 = load i32, i32* %9, align 4
  %188 = load i32*, i32** @tjPixelSize, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %187, %192
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @PAD(i32 %193, i32 %194)
  store i32 %195, i32* %18, align 4
  %196 = load i8*, i8** %23, align 8
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @cmpBitmap(i8* %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 1)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %186
  %205 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %206 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %205)
  store i32 -1, i32* %21, align 4
  br label %262

207:                                              ; preds = %186
  br label %208

208:                                              ; preds = %207, %139
  %209 = load i8*, i8** %23, align 8
  %210 = call i32 @tjFree(i8* %209)
  store i8* null, i8** %23, align 8
  %211 = load i32, i32* %22, align 4
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* @TJPF_UNKNOWN, align 4
  store i32 %212, i32* %22, align 4
  %213 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %13, align 4
  %216 = call i8* @tjLoadImage(i8* %213, i32* %19, i32 %214, i32* %20, i32* %22, i32 %215)
  store i8* %216, i8** %23, align 8
  %217 = icmp eq i8* %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %208
  %219 = call i32 (...) @_throwtj()
  br label %220

220:                                              ; preds = %218, %208
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @TJPF_GRAY, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i32, i32* %22, align 4
  %226 = load i32, i32* @TJPF_GRAY, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %252, label %228

228:                                              ; preds = %224, %220
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* @TJPF_GRAY, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %240

232:                                              ; preds = %228
  %233 = load i8*, i8** %8, align 8
  %234 = call i64 @strcasecmp(i8* %233, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %22, align 4
  %238 = load i32, i32* @TJPF_BGR, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %252, label %240

240:                                              ; preds = %236, %232, %228
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* @TJPF_GRAY, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %259

244:                                              ; preds = %240
  %245 = load i8*, i8** %8, align 8
  %246 = call i64 @strcasecmp(i8* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %259, label %248

248:                                              ; preds = %244
  %249 = load i32, i32* %22, align 4
  %250 = load i32, i32* @TJPF_RGB, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %248, %236, %224
  %253 = load i8**, i8*** @pixFormatStr, align 8
  %254 = load i32, i32* %22, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %253, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i8* %257)
  store i32 -1, i32* %21, align 4
  br label %259

259:                                              ; preds = %252, %248, %244, %240
  %260 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %261 = call i32 @unlink(i8* %260)
  br label %262

262:                                              ; preds = %259, %204, %172, %136, %124
  %263 = load i8*, i8** %23, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i8*, i8** %23, align 8
  %267 = call i32 @tjFree(i8* %266)
  br label %268

268:                                              ; preds = %265, %262
  %269 = load i64, i64* @exitStatus, align 8
  %270 = icmp slt i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i64, i64* @exitStatus, align 8
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %7, align 4
  br label %276

274:                                              ; preds = %268
  %275 = load i32, i32* %21, align 4
  store i32 %275, i32* %7, align 4
  br label %276

276:                                              ; preds = %274, %271
  %277 = load i32, i32* %7, align 4
  ret i32 %277
}

declare dso_local i32 @PAD(i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @tjAlloc(i32) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i32 @initBitmap(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @_tj(i32) #1

declare dso_local i32 @tjSaveImage(i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @MD5File(i8*, i8*) #1

declare dso_local i32 @_throwmd5(i8*, i8*, i8*) #1

declare dso_local i32 @tjFree(i8*) #1

declare dso_local i8* @tjLoadImage(i8*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @_throwtj(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @cmpBitmap(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
