; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_draw_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_draw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.priv* }
%struct.priv = type { i32, %struct.mp_image*, %struct.TYPE_7__*, i32, i32, i32, %struct.TYPE_6__, %struct.mp_rect, i64 }
%struct.TYPE_7__ = type { i32, i32, i32*, i64* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.mp_rect = type { i8*, i8* }
%struct.mp_image = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.framebuffer = type { i32, i64 }

@BYTES_PER_PIXEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.mp_image*, %struct.framebuffer*)* @draw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_image(%struct.vo* %0, %struct.mp_image* %1, %struct.framebuffer* %2) #0 {
  %4 = alloca %struct.vo*, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.framebuffer*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca %struct.mp_image, align 4
  %9 = alloca %struct.mp_rect, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %4, align 8
  store %struct.mp_image* %1, %struct.mp_image** %5, align 8
  store %struct.framebuffer* %2, %struct.framebuffer** %6, align 8
  %22 = load %struct.vo*, %struct.vo** %4, align 8
  %23 = getelementptr inbounds %struct.vo, %struct.vo* %22, i32 0, i32 1
  %24 = load %struct.priv*, %struct.priv** %23, align 8
  store %struct.priv* %24, %struct.priv** %7, align 8
  %25 = load %struct.priv*, %struct.priv** %7, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %353

29:                                               ; preds = %3
  %30 = load %struct.framebuffer*, %struct.framebuffer** %6, align 8
  %31 = icmp ne %struct.framebuffer* %30, null
  br i1 %31, label %32, label %353

32:                                               ; preds = %29
  %33 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %34 = icmp ne %struct.mp_image* %33, null
  br i1 %34, label %35, label %152

35:                                               ; preds = %32
  %36 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %37 = bitcast %struct.mp_image* %8 to i8*
  %38 = bitcast %struct.mp_image* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 12, i1 false)
  %39 = load %struct.priv*, %struct.priv** %7, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 7
  %41 = bitcast %struct.mp_rect* %9 to i8*
  %42 = bitcast %struct.mp_rect* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %9, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %46 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @MP_ALIGN_DOWN(i8* %44, i32 %48)
  %50 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %9, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %9, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %54 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @MP_ALIGN_DOWN(i8* %52, i32 %56)
  %58 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %9, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = bitcast %struct.mp_rect* %9 to { i8*, i8* }*
  %60 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %59, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @mp_image_crop_rc(%struct.mp_image* %8, i8* %61, i8* %63)
  %65 = load %struct.priv*, %struct.priv** %7, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.priv*, %struct.priv** %7, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.priv*, %struct.priv** %7, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mp_image_clear(%struct.TYPE_7__* %67, i32 0, i32 0, i32 %72, i32 %76)
  %78 = load %struct.priv*, %struct.priv** %7, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load %struct.priv*, %struct.priv** %7, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.priv*, %struct.priv** %7, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.priv*, %struct.priv** %7, align 8
  %91 = getelementptr inbounds %struct.priv, %struct.priv* %90, i32 0, i32 2
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mp_image_clear(%struct.TYPE_7__* %80, i32 0, i32 %84, i32 %89, i32 %94)
  %96 = load %struct.priv*, %struct.priv** %7, align 8
  %97 = getelementptr inbounds %struct.priv, %struct.priv* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load %struct.priv*, %struct.priv** %7, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.priv*, %struct.priv** %7, align 8
  %104 = getelementptr inbounds %struct.priv, %struct.priv* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.priv*, %struct.priv** %7, align 8
  %108 = getelementptr inbounds %struct.priv, %struct.priv* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mp_image_clear(%struct.TYPE_7__* %98, i32 0, i32 %102, i32 %106, i32 %110)
  %112 = load %struct.priv*, %struct.priv** %7, align 8
  %113 = getelementptr inbounds %struct.priv, %struct.priv* %112, i32 0, i32 2
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load %struct.priv*, %struct.priv** %7, align 8
  %116 = getelementptr inbounds %struct.priv, %struct.priv* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.priv*, %struct.priv** %7, align 8
  %120 = getelementptr inbounds %struct.priv, %struct.priv* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.priv*, %struct.priv** %7, align 8
  %124 = getelementptr inbounds %struct.priv, %struct.priv* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.priv*, %struct.priv** %7, align 8
  %129 = getelementptr inbounds %struct.priv, %struct.priv* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @mp_image_clear(%struct.TYPE_7__* %114, i32 %118, i32 %122, i32 %127, i32 %131)
  %133 = load %struct.priv*, %struct.priv** %7, align 8
  %134 = getelementptr inbounds %struct.priv, %struct.priv* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.priv*, %struct.priv** %7, align 8
  %137 = getelementptr inbounds %struct.priv, %struct.priv* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @mp_sws_scale(i32 %135, i32 %138, %struct.mp_image* %8)
  %140 = load %struct.vo*, %struct.vo** %4, align 8
  %141 = getelementptr inbounds %struct.vo, %struct.vo* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.priv*, %struct.priv** %7, align 8
  %144 = getelementptr inbounds %struct.priv, %struct.priv* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %8, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.priv*, %struct.priv** %7, align 8
  %149 = getelementptr inbounds %struct.priv, %struct.priv* %148, i32 0, i32 2
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = call i32 @osd_draw_on_image(i32 %142, i32 %145, i32 %147, i32 0, %struct.TYPE_7__* %150)
  br label %177

152:                                              ; preds = %32
  %153 = load %struct.priv*, %struct.priv** %7, align 8
  %154 = getelementptr inbounds %struct.priv, %struct.priv* %153, i32 0, i32 2
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load %struct.priv*, %struct.priv** %7, align 8
  %157 = getelementptr inbounds %struct.priv, %struct.priv* %156, i32 0, i32 2
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.priv*, %struct.priv** %7, align 8
  %162 = getelementptr inbounds %struct.priv, %struct.priv* %161, i32 0, i32 2
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @mp_image_clear(%struct.TYPE_7__* %155, i32 0, i32 0, i32 %160, i32 %165)
  %167 = load %struct.vo*, %struct.vo** %4, align 8
  %168 = getelementptr inbounds %struct.vo, %struct.vo* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.priv*, %struct.priv** %7, align 8
  %171 = getelementptr inbounds %struct.priv, %struct.priv* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.priv*, %struct.priv** %7, align 8
  %174 = getelementptr inbounds %struct.priv, %struct.priv* %173, i32 0, i32 2
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = call i32 @osd_draw_on_image(i32 %169, i32 %172, i32 0, i32 0, %struct.TYPE_7__* %175)
  br label %177

177:                                              ; preds = %152, %35
  %178 = load %struct.priv*, %struct.priv** %7, align 8
  %179 = getelementptr inbounds %struct.priv, %struct.priv* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 30
  br i1 %181, label %182, label %318

182:                                              ; preds = %177
  %183 = load %struct.priv*, %struct.priv** %7, align 8
  %184 = getelementptr inbounds %struct.priv, %struct.priv* %183, i32 0, i32 2
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %10, align 4
  %188 = load %struct.priv*, %struct.priv** %7, align 8
  %189 = getelementptr inbounds %struct.priv, %struct.priv* %188, i32 0, i32 2
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %11, align 4
  %193 = load %struct.priv*, %struct.priv** %7, align 8
  %194 = getelementptr inbounds %struct.priv, %struct.priv* %193, i32 0, i32 2
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = udiv i64 %200, 4
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = sub i64 %201, %203
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %12, align 4
  %206 = load %struct.priv*, %struct.priv** %7, align 8
  %207 = getelementptr inbounds %struct.priv, %struct.priv* %206, i32 0, i32 2
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = udiv i64 %213, 4
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = sub i64 %214, %216
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %13, align 4
  %219 = load %struct.priv*, %struct.priv** %7, align 8
  %220 = getelementptr inbounds %struct.priv, %struct.priv* %219, i32 0, i32 2
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = udiv i64 %226, 4
  %228 = load i32, i32* %10, align 4
  %229 = sext i32 %228 to i64
  %230 = sub i64 %227, %229
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %14, align 4
  %232 = load %struct.framebuffer*, %struct.framebuffer** %6, align 8
  %233 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = udiv i64 %235, 4
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = sub i64 %236, %238
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %15, align 4
  %241 = load %struct.priv*, %struct.priv** %7, align 8
  %242 = getelementptr inbounds %struct.priv, %struct.priv* %241, i32 0, i32 2
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 3
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 0
  %247 = load i64, i64* %246, align 8
  %248 = inttoptr i64 %247 to i32*
  store i32* %248, i32** %16, align 8
  %249 = load %struct.priv*, %struct.priv** %7, align 8
  %250 = getelementptr inbounds %struct.priv, %struct.priv* %249, i32 0, i32 2
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 3
  %253 = load i64*, i64** %252, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 1
  %255 = load i64, i64* %254, align 8
  %256 = inttoptr i64 %255 to i32*
  store i32* %256, i32** %17, align 8
  %257 = load %struct.priv*, %struct.priv** %7, align 8
  %258 = getelementptr inbounds %struct.priv, %struct.priv* %257, i32 0, i32 2
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 3
  %261 = load i64*, i64** %260, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 2
  %263 = load i64, i64* %262, align 8
  %264 = inttoptr i64 %263 to i32*
  store i32* %264, i32** %18, align 8
  %265 = load %struct.framebuffer*, %struct.framebuffer** %6, align 8
  %266 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = inttoptr i64 %267 to i32*
  store i32* %268, i32** %19, align 8
  store i32 0, i32* %20, align 4
  br label %269

269:                                              ; preds = %314, %182
  %270 = load i32, i32* %20, align 4
  %271 = load i32, i32* %11, align 4
  %272 = icmp ult i32 %270, %271
  br i1 %272, label %273, label %317

273:                                              ; preds = %269
  store i32 0, i32* %21, align 4
  br label %274

274:                                              ; preds = %294, %273
  %275 = load i32, i32* %21, align 4
  %276 = load i32, i32* %10, align 4
  %277 = icmp ult i32 %275, %276
  br i1 %277, label %278, label %297

278:                                              ; preds = %274
  %279 = load i32*, i32** %18, align 8
  %280 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %280, i32** %18, align 8
  %281 = load i32, i32* %279, align 4
  %282 = shl i32 %281, 20
  %283 = load i32*, i32** %16, align 8
  %284 = getelementptr inbounds i32, i32* %283, i32 1
  store i32* %284, i32** %16, align 8
  %285 = load i32, i32* %283, align 4
  %286 = shl i32 %285, 10
  %287 = or i32 %282, %286
  %288 = load i32*, i32** %17, align 8
  %289 = getelementptr inbounds i32, i32* %288, i32 1
  store i32* %289, i32** %17, align 8
  %290 = load i32, i32* %288, align 4
  %291 = or i32 %287, %290
  %292 = load i32*, i32** %19, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %19, align 8
  store i32 %291, i32* %292, align 4
  br label %294

294:                                              ; preds = %278
  %295 = load i32, i32* %21, align 4
  %296 = add i32 %295, 1
  store i32 %296, i32* %21, align 4
  br label %274

297:                                              ; preds = %274
  %298 = load i32, i32* %12, align 4
  %299 = load i32*, i32** %16, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32* %301, i32** %16, align 8
  %302 = load i32, i32* %13, align 4
  %303 = load i32*, i32** %17, align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  store i32* %305, i32** %17, align 8
  %306 = load i32, i32* %14, align 4
  %307 = load i32*, i32** %18, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  store i32* %309, i32** %18, align 8
  %310 = load i32, i32* %15, align 4
  %311 = load i32*, i32** %19, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  store i32* %313, i32** %19, align 8
  br label %314

314:                                              ; preds = %297
  %315 = load i32, i32* %20, align 4
  %316 = add i32 %315, 1
  store i32 %316, i32* %20, align 4
  br label %269

317:                                              ; preds = %269
  br label %352

318:                                              ; preds = %177
  %319 = load %struct.framebuffer*, %struct.framebuffer** %6, align 8
  %320 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.priv*, %struct.priv** %7, align 8
  %323 = getelementptr inbounds %struct.priv, %struct.priv* %322, i32 0, i32 2
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 3
  %326 = load i64*, i64** %325, align 8
  %327 = getelementptr inbounds i64, i64* %326, i64 0
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.priv*, %struct.priv** %7, align 8
  %330 = getelementptr inbounds %struct.priv, %struct.priv* %329, i32 0, i32 2
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @BYTES_PER_PIXEL, align 4
  %335 = mul nsw i32 %333, %334
  %336 = load %struct.priv*, %struct.priv** %7, align 8
  %337 = getelementptr inbounds %struct.priv, %struct.priv* %336, i32 0, i32 2
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.framebuffer*, %struct.framebuffer** %6, align 8
  %342 = getelementptr inbounds %struct.framebuffer, %struct.framebuffer* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.priv*, %struct.priv** %7, align 8
  %345 = getelementptr inbounds %struct.priv, %struct.priv* %344, i32 0, i32 2
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 2
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @memcpy_pic(i64 %321, i64 %328, i32 %335, i32 %340, i32 %343, i32 %350)
  br label %352

352:                                              ; preds = %318, %317
  br label %353

353:                                              ; preds = %352, %29, %3
  %354 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %355 = load %struct.priv*, %struct.priv** %7, align 8
  %356 = getelementptr inbounds %struct.priv, %struct.priv* %355, i32 0, i32 1
  %357 = load %struct.mp_image*, %struct.mp_image** %356, align 8
  %358 = icmp ne %struct.mp_image* %354, %357
  br i1 %358, label %359, label %367

359:                                              ; preds = %353
  %360 = load %struct.priv*, %struct.priv** %7, align 8
  %361 = getelementptr inbounds %struct.priv, %struct.priv* %360, i32 0, i32 1
  %362 = load %struct.mp_image*, %struct.mp_image** %361, align 8
  %363 = call i32 @talloc_free(%struct.mp_image* %362)
  %364 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %365 = load %struct.priv*, %struct.priv** %7, align 8
  %366 = getelementptr inbounds %struct.priv, %struct.priv* %365, i32 0, i32 1
  store %struct.mp_image* %364, %struct.mp_image** %366, align 8
  br label %367

367:                                              ; preds = %359, %353
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @MP_ALIGN_DOWN(i8*, i32) #2

declare dso_local i32 @mp_image_crop_rc(%struct.mp_image*, i8*, i8*) #2

declare dso_local i32 @mp_image_clear(%struct.TYPE_7__*, i32, i32, i32, i32) #2

declare dso_local i32 @mp_sws_scale(i32, i32, %struct.mp_image*) #2

declare dso_local i32 @osd_draw_on_image(i32, i32, i32, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @memcpy_pic(i64, i64, i32, i32, i32, i32) #2

declare dso_local i32 @talloc_free(%struct.mp_image*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
