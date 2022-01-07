; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/libnsgif/extr_libnsgif.c_gif_initialise_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/libnsgif/extr_libnsgif.c_gif_initialise_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@GIF_TRAILER = common dso_local global i8 0, align 1
@GIF_OK = common dso_local global i32 0, align 4
@GIF_INSUFFICIENT_DATA = common dso_local global i32 0, align 4
@GIF_FRAME_DATA_ERROR = common dso_local global i32 0, align 4
@GIF_INSUFFICIENT_MEMORY = common dso_local global i32 0, align 4
@GIF_INVALID_FRAME = common dso_local global i32 0, align 4
@GIF_INSUFFICIENT_FRAME_DATA = common dso_local global i32 0, align 4
@GIF_IMAGE_SEPARATOR = common dso_local global i8 0, align 1
@GIF_FRAME_CLEAR = common dso_local global i64 0, align 8
@GIF_FRAME_RESTORE = common dso_local global i64 0, align 8
@GIF_COLOUR_TABLE_SIZE_MASK = common dso_local global i32 0, align 4
@GIF_COLOUR_TABLE_MASK = common dso_local global i32 0, align 4
@GIF_MAX_LZW = common dso_local global i8 0, align 1
@GIF_DATA_ERROR = common dso_local global i32 0, align 4
@GIF_WORKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @gif_initialise_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_initialise_frame(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %16, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  store i8* %28, i8** %6, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %1
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @GIF_TRAILER, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @GIF_OK, align 4
  store i32 %54, i32* %2, align 4
  br label %648

55:                                               ; preds = %45, %1
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 6
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @GIF_INSUFFICIENT_DATA, align 4
  store i32 %59, i32* %2, align 4
  br label %648

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = icmp sgt i32 %61, 4096
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @GIF_FRAME_DATA_ERROR, align 4
  store i32 %64, i32* %2, align 4
  br label %648

65:                                               ; preds = %60
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 56
  %79 = trunc i64 %78 to i32
  %80 = call i64 @realloc(%struct.TYPE_7__* %74, i32 %79)
  %81 = inttoptr i64 %80 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %5, align 8
  %82 = icmp eq %struct.TYPE_7__* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @GIF_INSUFFICIENT_MEMORY, align 4
  store i32 %84, i32* %2, align 4
  br label %648

85:                                               ; preds = %71
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 7
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %88, align 8
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %85, %65
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 7
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %96, i32* %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 7
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 7
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store i32 1, i32* %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 7
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  store i32 0, i32* %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 7
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 5
  store i32 100, i32* %138, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 7
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 6
  store i32 0, i32* %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %93
  %152 = load i32, i32* @GIF_INVALID_FRAME, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %151, %93
  %156 = load i8*, i8** %6, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = ptrtoint i8* %156 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @gif_initialise_frame_extensions(%struct.TYPE_8__* %166, i32 %167)
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* @GIF_OK, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %155
  %172 = load i32, i32* %17, align 4
  store i32 %172, i32* %2, align 4
  br label %648

173:                                              ; preds = %155
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %176, i64 %180
  store i8* %181, i8** %6, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %8, align 4
  %188 = load i8*, i8** %7, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = ptrtoint i8* %188 to i64
  %191 = ptrtoint i8* %189 to i64
  %192 = sub i64 %190, %191
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %8, align 4
  %194 = icmp slt i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %173
  %196 = load i32, i32* @GIF_INSUFFICIENT_FRAME_DATA, align 4
  store i32 %196, i32* %2, align 4
  br label %648

197:                                              ; preds = %173
  %198 = load i8*, i8** %6, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = load i8, i8* @GIF_TRAILER, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %221

205:                                              ; preds = %197
  %206 = load i8*, i8** %6, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = ptrtoint i8* %206 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = trunc i64 %212 to i32
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* %4, align 4
  %217 = add nsw i32 %216, 1
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* @GIF_OK, align 4
  store i32 %220, i32* %2, align 4
  br label %648

221:                                              ; preds = %197
  br label %222

222:                                              ; preds = %221
  %223 = load i8*, i8** %6, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = load i8, i8* @GIF_IMAGE_SEPARATOR, align 1
  %228 = zext i8 %227 to i32
  %229 = icmp ne i32 %226, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %222
  %231 = load i32, i32* @GIF_FRAME_DATA_ERROR, align 4
  store i32 %231, i32* %2, align 4
  br label %648

232:                                              ; preds = %222
  %233 = load i8*, i8** %6, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = load i8*, i8** %6, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 2
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = shl i32 %240, 8
  %242 = or i32 %236, %241
  store i32 %242, i32* %12, align 4
  %243 = load i8*, i8** %6, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 3
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = load i8*, i8** %6, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 4
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = shl i32 %250, 8
  %252 = or i32 %246, %251
  store i32 %252, i32* %13, align 4
  %253 = load i8*, i8** %6, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 5
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = load i8*, i8** %6, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 6
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = shl i32 %260, 8
  %262 = or i32 %256, %261
  store i32 %262, i32* %10, align 4
  %263 = load i8*, i8** %6, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 7
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = load i8*, i8** %6, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 8
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = shl i32 %270, 8
  %272 = or i32 %266, %271
  store i32 %272, i32* %11, align 4
  %273 = load i32, i32* %16, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %438, label %275

275:                                              ; preds = %232
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 7
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %277, align 8
  %279 = load i32, i32* %4, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 7
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %12, align 4
  %285 = icmp ugt i32 %283, %284
  br i1 %285, label %286, label %314

286:                                              ; preds = %275
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 7
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = load i32, i32* %4, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 7
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %12, align 4
  %296 = sub i32 %294, %295
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 7
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %298, align 8
  %300 = load i32, i32* %4, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 8
  %304 = load i32, i32* %303, align 8
  %305 = add i32 %304, %296
  store i32 %305, i32* %303, align 8
  %306 = load i32, i32* %12, align 4
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 7
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %308, align 8
  %310 = load i32, i32* %4, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 7
  store i32 %306, i32* %313, align 4
  br label %314

314:                                              ; preds = %286, %275
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 7
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %316, align 8
  %318 = load i32, i32* %4, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 9
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %13, align 4
  %324 = icmp ugt i32 %322, %323
  br i1 %324, label %325, label %353

325:                                              ; preds = %314
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 7
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %327, align 8
  %329 = load i32, i32* %4, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 9
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %13, align 4
  %335 = sub i32 %333, %334
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 7
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  %339 = load i32, i32* %4, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 10
  %343 = load i32, i32* %342, align 8
  %344 = add i32 %343, %335
  store i32 %344, i32* %342, align 8
  %345 = load i32, i32* %13, align 4
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 7
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %347, align 8
  %349 = load i32, i32* %4, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 9
  store i32 %345, i32* %352, align 4
  br label %353

353:                                              ; preds = %325, %314
  %354 = load i32, i32* %12, align 4
  %355 = load i32, i32* %10, align 4
  %356 = add i32 %354, %355
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 7
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %358, align 8
  %360 = load i32, i32* %4, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 7
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 7
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %366, align 8
  %368 = load i32, i32* %4, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 8
  %372 = load i32, i32* %371, align 8
  %373 = add i32 %364, %372
  %374 = icmp ugt i32 %356, %373
  br i1 %374, label %375, label %395

375:                                              ; preds = %353
  %376 = load i32, i32* %12, align 4
  %377 = load i32, i32* %10, align 4
  %378 = add i32 %376, %377
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 7
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %380, align 8
  %382 = load i32, i32* %4, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 7
  %386 = load i32, i32* %385, align 4
  %387 = sub i32 %378, %386
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 7
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %389, align 8
  %391 = load i32, i32* %4, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 8
  store i32 %387, i32* %394, align 8
  br label %395

395:                                              ; preds = %375, %353
  %396 = load i32, i32* %13, align 4
  %397 = load i32, i32* %11, align 4
  %398 = add i32 %396, %397
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 7
  %401 = load %struct.TYPE_7__*, %struct.TYPE_7__** %400, align 8
  %402 = load i32, i32* %4, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 9
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 7
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %408, align 8
  %410 = load i32, i32* %4, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %412, i32 0, i32 10
  %414 = load i32, i32* %413, align 8
  %415 = add i32 %406, %414
  %416 = icmp ugt i32 %398, %415
  br i1 %416, label %417, label %437

417:                                              ; preds = %395
  %418 = load i32, i32* %13, align 4
  %419 = load i32, i32* %11, align 4
  %420 = add i32 %418, %419
  %421 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i32 0, i32 7
  %423 = load %struct.TYPE_7__*, %struct.TYPE_7__** %422, align 8
  %424 = load i32, i32* %4, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %426, i32 0, i32 9
  %428 = load i32, i32* %427, align 4
  %429 = sub i32 %420, %428
  %430 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 7
  %432 = load %struct.TYPE_7__*, %struct.TYPE_7__** %431, align 8
  %433 = load i32, i32* %4, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 10
  store i32 %429, i32* %436, align 8
  br label %437

437:                                              ; preds = %417, %395
  br label %471

438:                                              ; preds = %232
  store i32 0, i32* %16, align 4
  %439 = load i32, i32* %12, align 4
  %440 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %440, i32 0, i32 7
  %442 = load %struct.TYPE_7__*, %struct.TYPE_7__** %441, align 8
  %443 = load i32, i32* %4, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %445, i32 0, i32 7
  store i32 %439, i32* %446, align 4
  %447 = load i32, i32* %13, align 4
  %448 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 7
  %450 = load %struct.TYPE_7__*, %struct.TYPE_7__** %449, align 8
  %451 = load i32, i32* %4, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %453, i32 0, i32 9
  store i32 %447, i32* %454, align 4
  %455 = load i32, i32* %10, align 4
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 7
  %458 = load %struct.TYPE_7__*, %struct.TYPE_7__** %457, align 8
  %459 = load i32, i32* %4, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 8
  store i32 %455, i32* %462, align 8
  %463 = load i32, i32* %11, align 4
  %464 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 7
  %466 = load %struct.TYPE_7__*, %struct.TYPE_7__** %465, align 8
  %467 = load i32, i32* %4, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %469, i32 0, i32 10
  store i32 %463, i32* %470, align 8
  br label %471

471:                                              ; preds = %438, %437
  %472 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 7
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %473, align 8
  %475 = load i32, i32* %4, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %477, i32 0, i32 3
  %479 = load i64, i64* %478, align 8
  %480 = load i64, i64* @GIF_FRAME_CLEAR, align 8
  %481 = icmp eq i64 %479, %480
  br i1 %481, label %493, label %482

482:                                              ; preds = %471
  %483 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %483, i32 0, i32 7
  %485 = load %struct.TYPE_7__*, %struct.TYPE_7__** %484, align 8
  %486 = load i32, i32* %4, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %485, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %488, i32 0, i32 3
  %490 = load i64, i64* %489, align 8
  %491 = load i64, i64* @GIF_FRAME_RESTORE, align 8
  %492 = icmp eq i64 %490, %491
  br label %493

493:                                              ; preds = %482, %471
  %494 = phi i1 [ true, %471 ], [ %492, %482 ]
  %495 = zext i1 %494 to i32
  %496 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %496, i32 0, i32 7
  %498 = load %struct.TYPE_7__*, %struct.TYPE_7__** %497, align 8
  %499 = load i32, i32* %4, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %501, i32 0, i32 6
  store i32 %495, i32* %502, align 8
  %503 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %504 = load i32, i32* %12, align 4
  %505 = load i32, i32* %10, align 4
  %506 = add i32 %504, %505
  %507 = load i32, i32* %13, align 4
  %508 = load i32, i32* %11, align 4
  %509 = add i32 %507, %508
  %510 = call i64 @gif_initialise_sprite(%struct.TYPE_8__* %503, i32 %506, i32 %509)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %514

512:                                              ; preds = %493
  %513 = load i32, i32* @GIF_INSUFFICIENT_MEMORY, align 4
  store i32 %513, i32* %2, align 4
  br label %648

514:                                              ; preds = %493
  %515 = load i8*, i8** %6, align 8
  %516 = getelementptr inbounds i8, i8* %515, i64 9
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i32
  store i32 %518, i32* %9, align 4
  %519 = load i32, i32* %9, align 4
  %520 = load i32, i32* @GIF_COLOUR_TABLE_SIZE_MASK, align 4
  %521 = and i32 %519, %520
  %522 = shl i32 2, %521
  store i32 %522, i32* %15, align 4
  %523 = load i8*, i8** %6, align 8
  %524 = getelementptr inbounds i8, i8* %523, i64 10
  store i8* %524, i8** %6, align 8
  %525 = load i8*, i8** %7, align 8
  %526 = load i8*, i8** %6, align 8
  %527 = ptrtoint i8* %525 to i64
  %528 = ptrtoint i8* %526 to i64
  %529 = sub i64 %527, %528
  %530 = trunc i64 %529 to i32
  store i32 %530, i32* %8, align 4
  %531 = load i32, i32* %4, align 4
  %532 = add nsw i32 %531, 1
  %533 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %533, i32 0, i32 6
  store i32 %532, i32* %534, align 8
  %535 = load i32, i32* %9, align 4
  %536 = load i32, i32* @GIF_COLOUR_TABLE_MASK, align 4
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %555

539:                                              ; preds = %514
  %540 = load i32, i32* %15, align 4
  %541 = mul i32 3, %540
  %542 = load i8*, i8** %6, align 8
  %543 = zext i32 %541 to i64
  %544 = getelementptr inbounds i8, i8* %542, i64 %543
  store i8* %544, i8** %6, align 8
  %545 = load i8*, i8** %7, align 8
  %546 = load i8*, i8** %6, align 8
  %547 = ptrtoint i8* %545 to i64
  %548 = ptrtoint i8* %546 to i64
  %549 = sub i64 %547, %548
  %550 = trunc i64 %549 to i32
  store i32 %550, i32* %8, align 4
  %551 = icmp slt i32 %550, 0
  br i1 %551, label %552, label %554

552:                                              ; preds = %539
  %553 = load i32, i32* @GIF_INSUFFICIENT_FRAME_DATA, align 4
  store i32 %553, i32* %2, align 4
  br label %648

554:                                              ; preds = %539
  br label %555

555:                                              ; preds = %554, %514
  %556 = load i8*, i8** %6, align 8
  %557 = getelementptr inbounds i8, i8* %556, i64 0
  %558 = load i8, i8* %557, align 1
  %559 = zext i8 %558 to i32
  %560 = load i8, i8* @GIF_MAX_LZW, align 1
  %561 = zext i8 %560 to i32
  %562 = icmp sgt i32 %559, %561
  br i1 %562, label %563, label %565

563:                                              ; preds = %555
  %564 = load i32, i32* @GIF_DATA_ERROR, align 4
  store i32 %564, i32* %2, align 4
  br label %648

565:                                              ; preds = %555
  %566 = load i8*, i8** %6, align 8
  %567 = getelementptr inbounds i8, i8* %566, i32 1
  store i8* %567, i8** %6, align 8
  %568 = load i32, i32* %8, align 4
  %569 = add nsw i32 %568, -1
  store i32 %569, i32* %8, align 4
  %570 = icmp slt i32 %569, 0
  br i1 %570, label %571, label %573

571:                                              ; preds = %565
  %572 = load i32, i32* @GIF_INSUFFICIENT_FRAME_DATA, align 4
  store i32 %572, i32* %2, align 4
  br label %648

573:                                              ; preds = %565
  store i32 0, i32* %14, align 4
  br label %574

574:                                              ; preds = %608, %573
  %575 = load i32, i32* %14, align 4
  %576 = icmp ne i32 %575, 1
  br i1 %576, label %577, label %609

577:                                              ; preds = %574
  %578 = load i8*, i8** %6, align 8
  %579 = getelementptr inbounds i8, i8* %578, i64 0
  %580 = load i8, i8* %579, align 1
  %581 = zext i8 %580 to i32
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %14, align 4
  %583 = load i32, i32* %8, align 4
  %584 = load i32, i32* %14, align 4
  %585 = sub i32 %583, %584
  %586 = icmp slt i32 %585, 0
  br i1 %586, label %587, label %600

587:                                              ; preds = %577
  %588 = load i32, i32* %8, align 4
  %589 = icmp sge i32 %588, 2
  br i1 %589, label %590, label %598

590:                                              ; preds = %587
  %591 = load i8*, i8** %6, align 8
  %592 = getelementptr inbounds i8, i8* %591, i64 0
  store i8 0, i8* %592, align 1
  %593 = load i8, i8* @GIF_TRAILER, align 1
  %594 = load i8*, i8** %6, align 8
  %595 = getelementptr inbounds i8, i8* %594, i64 1
  store i8 %593, i8* %595, align 1
  store i32 1, i32* %8, align 4
  %596 = load i8*, i8** %6, align 8
  %597 = getelementptr inbounds i8, i8* %596, i32 1
  store i8* %597, i8** %6, align 8
  br label %609

598:                                              ; preds = %587
  %599 = load i32, i32* @GIF_INSUFFICIENT_FRAME_DATA, align 4
  store i32 %599, i32* %2, align 4
  br label %648

600:                                              ; preds = %577
  %601 = load i32, i32* %14, align 4
  %602 = load i32, i32* %8, align 4
  %603 = sub i32 %602, %601
  store i32 %603, i32* %8, align 4
  %604 = load i32, i32* %14, align 4
  %605 = load i8*, i8** %6, align 8
  %606 = zext i32 %604 to i64
  %607 = getelementptr inbounds i8, i8* %605, i64 %606
  store i8* %607, i8** %6, align 8
  br label %608

608:                                              ; preds = %600
  br label %574

609:                                              ; preds = %590, %574
  %610 = load i8*, i8** %6, align 8
  %611 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %612 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %611, i32 0, i32 1
  %613 = load i8*, i8** %612, align 8
  %614 = ptrtoint i8* %610 to i64
  %615 = ptrtoint i8* %613 to i64
  %616 = sub i64 %614, %615
  %617 = trunc i64 %616 to i32
  %618 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %619 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %618, i32 0, i32 2
  store i32 %617, i32* %619, align 8
  %620 = load i32, i32* %4, align 4
  %621 = add nsw i32 %620, 1
  %622 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %623 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %622, i32 0, i32 0
  store i32 %621, i32* %623, align 8
  %624 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %625 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %624, i32 0, i32 7
  %626 = load %struct.TYPE_7__*, %struct.TYPE_7__** %625, align 8
  %627 = load i32, i32* %4, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %626, i64 %628
  %630 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %629, i32 0, i32 1
  store i32 1, i32* %630, align 4
  %631 = load i32, i32* %8, align 4
  %632 = icmp slt i32 %631, 1
  br i1 %632, label %633, label %635

633:                                              ; preds = %609
  %634 = load i32, i32* @GIF_INSUFFICIENT_FRAME_DATA, align 4
  store i32 %634, i32* %2, align 4
  br label %648

635:                                              ; preds = %609
  %636 = load i8*, i8** %6, align 8
  %637 = getelementptr inbounds i8, i8* %636, i64 0
  %638 = load i8, i8* %637, align 1
  %639 = zext i8 %638 to i32
  %640 = load i8, i8* @GIF_TRAILER, align 1
  %641 = zext i8 %640 to i32
  %642 = icmp eq i32 %639, %641
  br i1 %642, label %643, label %645

643:                                              ; preds = %635
  %644 = load i32, i32* @GIF_OK, align 4
  store i32 %644, i32* %2, align 4
  br label %648

645:                                              ; preds = %635
  br label %646

646:                                              ; preds = %645
  %647 = load i32, i32* @GIF_WORKING, align 4
  store i32 %647, i32* %2, align 4
  br label %648

648:                                              ; preds = %646, %643, %633, %598, %571, %563, %552, %512, %230, %205, %195, %171, %83, %63, %58, %53
  %649 = load i32, i32* %2, align 4
  ret i32 %649
}

declare dso_local i64 @realloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @gif_initialise_frame_extensions(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @gif_initialise_sprite(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
