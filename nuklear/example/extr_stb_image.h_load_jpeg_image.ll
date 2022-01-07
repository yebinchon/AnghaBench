; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_load_jpeg_image.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_load_jpeg_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32* (i32*, i32, i32, i32, i32)*, %struct.TYPE_9__*, i32 (i32*, i32*, i32*, i32*, i32, i32)*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32* (i32*, i32, i32, i32, i32)*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"bad req_comp\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32*, i32*, i32*, i32)* @load_jpeg_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_jpeg_image(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca [4 x i32*], align 16
  %19 = alloca [4 x %struct.TYPE_10__], align 16
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 4
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %5
  %36 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %6, align 8
  br label %538

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = call i32 @stbi__decode_jpeg_image(%struct.TYPE_11__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = call i32 @stbi__cleanup_jpeg(%struct.TYPE_11__* %42)
  store i32* null, i32** %6, align 8
  br label %538

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  br label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %49, %47
  %56 = phi i32 [ %48, %47 ], [ %54, %49 ]
  store i32 %56, i32* %12, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %13, align 4
  br label %73

67:                                               ; preds = %63, %55
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %67, %66
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %236, %73
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %239

78:                                               ; preds = %74
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %19, i64 0, i64 %80
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %20, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 3
  %88 = call i64 @stbi__malloc(i32 %87)
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32* %89, i32** %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %78
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = call i32 @stbi__cleanup_jpeg(%struct.TYPE_11__* %107)
  %109 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32* %109, i32** %6, align 8
  br label %538

110:                                              ; preds = %78
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sdiv i32 %113, %121
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %127, %135
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 1
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %149, %152
  %154 = sub nsw i32 %153, 1
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sdiv i32 %154, %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 4
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 6
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 7
  store i32 %170, i32* %174, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %187

179:                                              ; preds = %110
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @resample_row_1, i32* (i32*, i32, i32, i32, i32)** %186, align 8
  br label %235

187:                                              ; preds = %179, %110
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @stbi__resample_row_v_2, i32* (i32*, i32, i32, i32, i32)** %199, align 8
  br label %234

200:                                              ; preds = %192, %187
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 2
  br i1 %204, label %205, label %213

205:                                              ; preds = %200
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @stbi__resample_row_h_2, i32* (i32*, i32, i32, i32, i32)** %212, align 8
  br label %233

213:                                              ; preds = %205, %200
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %218, label %229

218:                                              ; preds = %213
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 2
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  %226 = load i32* (i32*, i32, i32, i32, i32)*, i32* (i32*, i32, i32, i32, i32)** %225, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* %226, i32* (i32*, i32, i32, i32, i32)** %228, align 8
  br label %232

229:                                              ; preds = %218, %213
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @stbi__resample_row_generic, i32* (i32*, i32, i32, i32, i32)** %231, align 8
  br label %232

232:                                              ; preds = %229, %223
  br label %233

233:                                              ; preds = %232, %210
  br label %234

234:                                              ; preds = %233, %197
  br label %235

235:                                              ; preds = %234, %184
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %14, align 4
  br label %74

239:                                              ; preds = %74
  %240 = load i32, i32* %12, align 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 3
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 %240, %245
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = mul nsw i32 %246, %251
  %253 = add nsw i32 %252, 1
  %254 = call i64 @stbi__malloc(i32 %253)
  %255 = inttoptr i64 %254 to i32*
  store i32* %255, i32** %17, align 8
  %256 = load i32*, i32** %17, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %262, label %258

258:                                              ; preds = %239
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %260 = call i32 @stbi__cleanup_jpeg(%struct.TYPE_11__* %259)
  %261 = call i32* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32* %261, i32** %6, align 8
  br label %538

262:                                              ; preds = %239
  store i32 0, i32* %16, align 4
  br label %263

263:                                              ; preds = %509, %262
  %264 = load i32, i32* %16, align 4
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 3
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = icmp ult i32 %264, %269
  br i1 %270, label %271, label %512

271:                                              ; preds = %263
  %272 = load i32*, i32** %17, align 8
  %273 = load i32, i32* %12, align 4
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 3
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 %273, %278
  %280 = load i32, i32* %16, align 4
  %281 = mul i32 %279, %280
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %272, i64 %282
  store i32* %283, i32** %21, align 8
  store i32 0, i32* %14, align 4
  br label %284

284:                                              ; preds = %392, %271
  %285 = load i32, i32* %14, align 4
  %286 = load i32, i32* %13, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %395

288:                                              ; preds = %284
  %289 = load i32, i32* %14, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %19, i64 0, i64 %290
  store %struct.TYPE_10__* %291, %struct.TYPE_10__** %22, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = ashr i32 %297, 1
  %299 = icmp sge i32 %294, %298
  %300 = zext i1 %299 to i32
  store i32 %300, i32* %23, align 4
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 5
  %303 = load i32* (i32*, i32, i32, i32, i32)*, i32* (i32*, i32, i32, i32, i32)** %302, align 8
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %305, align 8
  %307 = load i32, i32* %14, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %23, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %288
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 6
  %317 = load i32, i32* %316, align 8
  br label %322

318:                                              ; preds = %288
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 4
  br label %322

322:                                              ; preds = %318, %314
  %323 = phi i32 [ %317, %314 ], [ %321, %318 ]
  %324 = load i32, i32* %23, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %322
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 7
  %329 = load i32, i32* %328, align 4
  br label %334

330:                                              ; preds = %322
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 6
  %333 = load i32, i32* %332, align 8
  br label %334

334:                                              ; preds = %330, %326
  %335 = phi i32 [ %329, %326 ], [ %333, %330 ]
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = call i32* %303(i32* %311, i32 %323, i32 %335, i32 %338, i32 %341)
  %343 = load i32, i32* %14, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 %344
  store i32* %342, i32** %345, align 8
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %347, align 8
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = icmp sge i32 %349, %352
  br i1 %353, label %354, label %391

354:                                              ; preds = %334
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 2
  store i32 0, i32* %356, align 8
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 7
  store i32 %359, i32* %361, align 4
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 4
  %364 = load i64, i64* %363, align 8
  %365 = add nsw i64 %364, 1
  store i64 %365, i64* %363, align 8
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 5
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %367, align 8
  %369 = load i32, i32* %14, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = icmp slt i64 %365, %373
  br i1 %374, label %375, label %390

375:                                              ; preds = %354
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 5
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %377, align 8
  %379 = load i32, i32* %14, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 4
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 8
  %387 = sext i32 %386 to i64
  %388 = add nsw i64 %387, %383
  %389 = trunc i64 %388 to i32
  store i32 %389, i32* %385, align 8
  br label %390

390:                                              ; preds = %375, %354
  br label %391

391:                                              ; preds = %390, %334
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %14, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %14, align 4
  br label %284

395:                                              ; preds = %284
  %396 = load i32, i32* %12, align 4
  %397 = icmp sge i32 %396, 3
  br i1 %397, label %398, label %456

398:                                              ; preds = %395
  %399 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %400 = load i32*, i32** %399, align 16
  store i32* %400, i32** %24, align 8
  %401 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 3
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = icmp eq i32 %405, 3
  br i1 %406, label %407, label %424

407:                                              ; preds = %398
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 4
  %410 = load i32 (i32*, i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32)** %409, align 8
  %411 = load i32*, i32** %21, align 8
  %412 = load i32*, i32** %24, align 8
  %413 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 1
  %414 = load i32*, i32** %413, align 8
  %415 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 2
  %416 = load i32*, i32** %415, align 16
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i32 0, i32 3
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* %12, align 4
  %423 = call i32 %410(i32* %411, i32* %412, i32* %414, i32* %416, i32 %421, i32 %422)
  br label %455

424:                                              ; preds = %398
  store i32 0, i32* %15, align 4
  br label %425

425:                                              ; preds = %451, %424
  %426 = load i32, i32* %15, align 4
  %427 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 3
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = icmp ult i32 %426, %431
  br i1 %432, label %433, label %454

433:                                              ; preds = %425
  %434 = load i32*, i32** %24, align 8
  %435 = load i32, i32* %15, align 4
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = load i32*, i32** %21, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 2
  store i32 %438, i32* %440, align 4
  %441 = load i32*, i32** %21, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 1
  store i32 %438, i32* %442, align 4
  %443 = load i32*, i32** %21, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 0
  store i32 %438, i32* %444, align 4
  %445 = load i32*, i32** %21, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 3
  store i32 255, i32* %446, align 4
  %447 = load i32, i32* %12, align 4
  %448 = load i32*, i32** %21, align 8
  %449 = sext i32 %447 to i64
  %450 = getelementptr inbounds i32, i32* %448, i64 %449
  store i32* %450, i32** %21, align 8
  br label %451

451:                                              ; preds = %433
  %452 = load i32, i32* %15, align 4
  %453 = add i32 %452, 1
  store i32 %453, i32* %15, align 4
  br label %425

454:                                              ; preds = %425
  br label %455

455:                                              ; preds = %454, %407
  br label %508

456:                                              ; preds = %395
  %457 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %458 = load i32*, i32** %457, align 16
  store i32* %458, i32** %25, align 8
  %459 = load i32, i32* %12, align 4
  %460 = icmp eq i32 %459, 1
  br i1 %460, label %461, label %484

461:                                              ; preds = %456
  store i32 0, i32* %15, align 4
  br label %462

462:                                              ; preds = %480, %461
  %463 = load i32, i32* %15, align 4
  %464 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %464, i32 0, i32 3
  %466 = load %struct.TYPE_9__*, %struct.TYPE_9__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = icmp ult i32 %463, %468
  br i1 %469, label %470, label %483

470:                                              ; preds = %462
  %471 = load i32*, i32** %25, align 8
  %472 = load i32, i32* %15, align 4
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = load i32*, i32** %21, align 8
  %477 = load i32, i32* %15, align 4
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %476, i64 %478
  store i32 %475, i32* %479, align 4
  br label %480

480:                                              ; preds = %470
  %481 = load i32, i32* %15, align 4
  %482 = add i32 %481, 1
  store i32 %482, i32* %15, align 4
  br label %462

483:                                              ; preds = %462
  br label %507

484:                                              ; preds = %456
  store i32 0, i32* %15, align 4
  br label %485

485:                                              ; preds = %503, %484
  %486 = load i32, i32* %15, align 4
  %487 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %488 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %487, i32 0, i32 3
  %489 = load %struct.TYPE_9__*, %struct.TYPE_9__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = icmp ult i32 %486, %491
  br i1 %492, label %493, label %506

493:                                              ; preds = %485
  %494 = load i32*, i32** %25, align 8
  %495 = load i32, i32* %15, align 4
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %494, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = load i32*, i32** %21, align 8
  %500 = getelementptr inbounds i32, i32* %499, i32 1
  store i32* %500, i32** %21, align 8
  store i32 %498, i32* %499, align 4
  %501 = load i32*, i32** %21, align 8
  %502 = getelementptr inbounds i32, i32* %501, i32 1
  store i32* %502, i32** %21, align 8
  store i32 255, i32* %501, align 4
  br label %503

503:                                              ; preds = %493
  %504 = load i32, i32* %15, align 4
  %505 = add i32 %504, 1
  store i32 %505, i32* %15, align 4
  br label %485

506:                                              ; preds = %485
  br label %507

507:                                              ; preds = %506, %483
  br label %508

508:                                              ; preds = %507, %455
  br label %509

509:                                              ; preds = %508
  %510 = load i32, i32* %16, align 4
  %511 = add i32 %510, 1
  store i32 %511, i32* %16, align 4
  br label %263

512:                                              ; preds = %263
  %513 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %514 = call i32 @stbi__cleanup_jpeg(%struct.TYPE_11__* %513)
  %515 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 3
  %517 = load %struct.TYPE_9__*, %struct.TYPE_9__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = load i32*, i32** %8, align 8
  store i32 %519, i32* %520, align 4
  %521 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %522 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %521, i32 0, i32 3
  %523 = load %struct.TYPE_9__*, %struct.TYPE_9__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %523, i32 0, i32 2
  %525 = load i32, i32* %524, align 4
  %526 = load i32*, i32** %9, align 8
  store i32 %525, i32* %526, align 4
  %527 = load i32*, i32** %10, align 8
  %528 = icmp ne i32* %527, null
  br i1 %528, label %529, label %536

529:                                              ; preds = %512
  %530 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %531 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %530, i32 0, i32 3
  %532 = load %struct.TYPE_9__*, %struct.TYPE_9__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = load i32*, i32** %10, align 8
  store i32 %534, i32* %535, align 4
  br label %536

536:                                              ; preds = %529, %512
  %537 = load i32*, i32** %17, align 8
  store i32* %537, i32** %6, align 8
  br label %538

538:                                              ; preds = %536, %258, %106, %41, %35
  %539 = load i32*, i32** %6, align 8
  ret i32* %539
}

declare dso_local i32* @stbi__errpuc(i8*, i8*) #1

declare dso_local i32 @stbi__decode_jpeg_image(%struct.TYPE_11__*) #1

declare dso_local i32 @stbi__cleanup_jpeg(%struct.TYPE_11__*) #1

declare dso_local i64 @stbi__malloc(i32) #1

declare dso_local i32* @resample_row_1(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @stbi__resample_row_v_2(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @stbi__resample_row_h_2(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @stbi__resample_row_generic(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
