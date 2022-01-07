; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/libnsgif/extr_libnsgif.c_gif_initialise.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/libnsgif/extr_libnsgif.c_gif_initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, i32*, i32*, i64, i8, i8, i8, i32, i8, i8, i32, i32, %struct.TYPE_6__, i32*, i32*, i32, i64 }
%struct.TYPE_6__ = type { i32* (i32, i32)* }

@GIF_INSUFFICIENT_DATA = common dso_local global i64 0, align 8
@GIF_INVALID_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@GIF_DATA_ERROR = common dso_local global i64 0, align 8
@GIF_COLOUR_TABLE_MASK = common dso_local global i8 0, align 1
@GIF_COLOUR_TABLE_SIZE_MASK = common dso_local global i8 0, align 1
@GIF_MAX_COLOURS = common dso_local global i32 0, align 4
@GIF_INSUFFICIENT_MEMORY = common dso_local global i64 0, align 8
@GIF_PROCESS_COLOURS = common dso_local global i32 0, align 4
@GIF_TRAILER = common dso_local global i8 0, align 1
@GIF_OK = common dso_local global i64 0, align 8
@GIF_WORKING = common dso_local global i64 0, align 8
@GIF_INSUFFICIENT_FRAME_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gif_initialise(%struct.TYPE_7__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %22, 13
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @GIF_INSUFFICIENT_DATA, align 8
  store i64 %25, i64* %4, align 8
  br label %435

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8* %34, i8** %8, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %320

39:                                               ; preds = %26
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 15
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 16
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 18
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @GIF_INVALID_FRAME, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 17
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @strncmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %39
  %59 = load i64, i64* @GIF_DATA_ERROR, align 8
  store i64 %59, i64* %4, align 8
  br label %435

60:                                               ; preds = %39
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 8
  %74 = or i32 %68, %73
  %75 = trunc i32 %74 to i8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 6
  store i8 %75, i8* %77, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 8
  %87 = or i32 %81, %86
  %88 = trunc i32 %87 to i8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 7
  store i8 %88, i8* %90, align 1
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @GIF_COLOUR_TABLE_MASK, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %94, %96
  %98 = trunc i32 %97 to i8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 8
  store i8 %98, i8* %100, align 2
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 4
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @GIF_COLOUR_TABLE_SIZE_MASK, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %104, %106
  %108 = shl i32 2, %107
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 5
  %113 = load i8, i8* %112, align 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 10
  store i8 %113, i8* %115, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 6
  %118 = load i8, i8* %117, align 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 11
  store i8 %118, i8* %120, align 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 12
  store i32 1, i32* %122, align 4
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 7
  store i8* %124, i8** %8, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 6
  %127 = load i8, i8* %126, align 8
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 640
  br i1 %129, label %130, label %136

130:                                              ; preds = %60
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 7
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 480
  br i1 %135, label %220, label %136

136:                                              ; preds = %130, %60
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 6
  %139 = load i8, i8* %138, align 8
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 640
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 7
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %146, 512
  br i1 %147, label %220, label %148

148:                                              ; preds = %142, %136
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 6
  %151 = load i8, i8* %150, align 8
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 800
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 7
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 600
  br i1 %159, label %220, label %160

160:                                              ; preds = %154, %148
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 6
  %163 = load i8, i8* %162, align 8
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 1024
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 7
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %170, 768
  br i1 %171, label %220, label %172

172:                                              ; preds = %166, %160
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 6
  %175 = load i8, i8* %174, align 8
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %176, 1280
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 7
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 1024
  br i1 %183, label %220, label %184

184:                                              ; preds = %178, %172
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 6
  %187 = load i8, i8* %186, align 8
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 1600
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 7
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp eq i32 %194, 1200
  br i1 %195, label %220, label %196

196:                                              ; preds = %190, %184
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 6
  %199 = load i8, i8* %198, align 8
  %200 = zext i8 %199 to i32
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %220, label %202

202:                                              ; preds = %196
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 7
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %202
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 6
  %211 = load i8, i8* %210, align 8
  %212 = zext i8 %211 to i32
  %213 = icmp sgt i32 %212, 2048
  br i1 %213, label %220, label %214

214:                                              ; preds = %208
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 7
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp sgt i32 %218, 2048
  br i1 %219, label %220, label %225

220:                                              ; preds = %214, %208, %202, %196, %190, %178, %166, %154, %142, %130
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 6
  store i8 1, i8* %222, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 7
  store i8 1, i8* %224, align 1
  br label %225

225:                                              ; preds = %220, %214
  %226 = load i32, i32* @GIF_MAX_COLOURS, align 4
  %227 = call i64 @calloc(i32 %226, i32 4)
  %228 = inttoptr i64 %227 to i32*
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 4
  store i32* %228, i32** %230, align 8
  %231 = load i32, i32* @GIF_MAX_COLOURS, align 4
  %232 = call i64 @calloc(i32 %231, i32 4)
  %233 = inttoptr i64 %232 to i32*
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 3
  store i32* %233, i32** %235, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = icmp eq i32* %238, null
  br i1 %239, label %245, label %240

240:                                              ; preds = %225
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = icmp eq i32* %243, null
  br i1 %244, label %245, label %249

245:                                              ; preds = %240, %225
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %247 = call i32 @gif_finalise(%struct.TYPE_7__* %246)
  %248 = load i64, i64* @GIF_INSUFFICIENT_MEMORY, align 8
  store i64 %248, i64* %4, align 8
  br label %435

249:                                              ; preds = %240
  %250 = load i32, i32* @GIF_PROCESS_COLOURS, align 4
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  store i32 %250, i32* %254, align 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %257, 14
  br i1 %258, label %259, label %271

259:                                              ; preds = %249
  %260 = load i8*, i8** %8, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = load i8, i8* @GIF_TRAILER, align 1
  %265 = zext i8 %264 to i32
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %259
  %268 = load i64, i64* @GIF_OK, align 8
  store i64 %268, i64* %4, align 8
  br label %435

269:                                              ; preds = %259
  %270 = load i64, i64* @GIF_INSUFFICIENT_DATA, align 8
  store i64 %270, i64* %4, align 8
  br label %435

271:                                              ; preds = %249
  %272 = call i64 @malloc(i32 4)
  %273 = inttoptr i64 %272 to i32*
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 16
  store i32* %273, i32** %275, align 8
  %276 = icmp eq i32* %273, null
  br i1 %276, label %277, label %281

277:                                              ; preds = %271
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %279 = call i32 @gif_finalise(%struct.TYPE_7__* %278)
  %280 = load i64, i64* @GIF_INSUFFICIENT_MEMORY, align 8
  store i64 %280, i64* %4, align 8
  br label %435

281:                                              ; preds = %271
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 13
  store i32 1, i32* %283, align 8
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 14
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i32* (i32, i32)*, i32* (i32, i32)** %286, align 8
  %288 = call i32 @assert(i32* (i32, i32)* %287)
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 14
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = load i32* (i32, i32)*, i32* (i32, i32)** %291, align 8
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 6
  %295 = load i8, i8* %294, align 8
  %296 = zext i8 %295 to i32
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 7
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i32
  %301 = call i32* %292(i32 %296, i32 %300)
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 15
  store i32* %301, i32** %303, align 8
  %304 = icmp eq i32* %301, null
  br i1 %304, label %305, label %309

305:                                              ; preds = %281
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %307 = call i32 @gif_finalise(%struct.TYPE_7__* %306)
  %308 = load i64, i64* @GIF_INSUFFICIENT_MEMORY, align 8
  store i64 %308, i64* %4, align 8
  br label %435

309:                                              ; preds = %281
  %310 = load i8*, i8** %8, align 8
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = load i8*, i8** %312, align 8
  %314 = ptrtoint i8* %310 to i64
  %315 = ptrtoint i8* %313 to i64
  %316 = sub i64 %314, %315
  %317 = trunc i64 %316 to i32
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 2
  store i32 %317, i32* %319, align 8
  br label %320

320:                                              ; preds = %309, %26
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 4
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @GIF_PROCESS_COLOURS, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %405

328:                                              ; preds = %320
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 8
  %331 = load i8, i8* %330, align 2
  %332 = icmp ne i8 %331, 0
  br i1 %332, label %333, label %393

333:                                              ; preds = %328
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 9
  %339 = load i32, i32* %338, align 4
  %340 = mul nsw i32 %339, 3
  %341 = add nsw i32 %340, 12
  %342 = icmp ult i32 %336, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %333
  %344 = load i64, i64* @GIF_INSUFFICIENT_DATA, align 8
  store i64 %344, i64* %4, align 8
  br label %435

345:                                              ; preds = %333
  store i32 0, i32* %9, align 4
  br label %346

346:                                              ; preds = %379, %345
  %347 = load i32, i32* %9, align 4
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 9
  %350 = load i32, i32* %349, align 4
  %351 = icmp ult i32 %347, %350
  br i1 %351, label %352, label %382

352:                                              ; preds = %346
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 4
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %9, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = bitcast i32* %358 to i8*
  store i8* %359, i8** %11, align 8
  %360 = load i8*, i8** %8, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 0
  %362 = load i8, i8* %361, align 1
  %363 = load i8*, i8** %11, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 0
  store i8 %362, i8* %364, align 1
  %365 = load i8*, i8** %8, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 1
  %367 = load i8, i8* %366, align 1
  %368 = load i8*, i8** %11, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 1
  store i8 %367, i8* %369, align 1
  %370 = load i8*, i8** %8, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 2
  %372 = load i8, i8* %371, align 1
  %373 = load i8*, i8** %11, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 2
  store i8 %372, i8* %374, align 1
  %375 = load i8*, i8** %11, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 3
  store i8 -1, i8* %376, align 1
  %377 = load i8*, i8** %8, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 3
  store i8* %378, i8** %8, align 8
  br label %379

379:                                              ; preds = %352
  %380 = load i32, i32* %9, align 4
  %381 = add i32 %380, 1
  store i32 %381, i32* %9, align 4
  br label %346

382:                                              ; preds = %346
  %383 = load i8*, i8** %8, align 8
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 1
  %386 = load i8*, i8** %385, align 8
  %387 = ptrtoint i8* %383 to i64
  %388 = ptrtoint i8* %386 to i64
  %389 = sub i64 %387, %388
  %390 = trunc i64 %389 to i32
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 2
  store i32 %390, i32* %392, align 8
  br label %404

393:                                              ; preds = %328
  %394 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 4
  %396 = load i32*, i32** %395, align 8
  store i32* %396, i32** %12, align 8
  %397 = load i32*, i32** %12, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 0
  store i32 0, i32* %398, align 4
  %399 = load i32*, i32** %12, align 8
  %400 = bitcast i32* %399 to i8*
  %401 = getelementptr inbounds i8, i8* %400, i64 3
  store i8 -1, i8* %401, align 1
  %402 = load i32*, i32** %12, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 1
  store i32 -1, i32* %403, align 4
  br label %404

404:                                              ; preds = %393, %382
  br label %405

405:                                              ; preds = %404, %320
  br label %406

406:                                              ; preds = %411, %405
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %408 = call i64 @gif_initialise_frame(%struct.TYPE_7__* %407)
  store i64 %408, i64* %10, align 8
  %409 = load i64, i64* @GIF_WORKING, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %411, label %412

411:                                              ; preds = %406
  br label %406

412:                                              ; preds = %406
  %413 = load i64, i64* %10, align 8
  %414 = load i64, i64* @GIF_INSUFFICIENT_MEMORY, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %420, label %416

416:                                              ; preds = %412
  %417 = load i64, i64* %10, align 8
  %418 = load i64, i64* @GIF_DATA_ERROR, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %422

420:                                              ; preds = %416, %412
  %421 = load i64, i64* %10, align 8
  store i64 %421, i64* %4, align 8
  br label %435

422:                                              ; preds = %416
  %423 = load i64, i64* %10, align 8
  %424 = load i64, i64* @GIF_INSUFFICIENT_DATA, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %433

426:                                              ; preds = %422
  %427 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 5
  %429 = load i64, i64* %428, align 8
  %430 = icmp sgt i64 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %426
  %432 = load i64, i64* @GIF_INSUFFICIENT_FRAME_DATA, align 8
  store i64 %432, i64* %4, align 8
  br label %435

433:                                              ; preds = %426, %422
  %434 = load i64, i64* %10, align 8
  store i64 %434, i64* %4, align 8
  br label %435

435:                                              ; preds = %433, %431, %420, %343, %305, %277, %269, %267, %245, %58, %24
  %436 = load i64, i64* %4, align 8
  ret i64 %436
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @gif_finalise(%struct.TYPE_7__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @assert(i32* (i32, i32)*) #1

declare dso_local i64 @gif_initialise_frame(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
