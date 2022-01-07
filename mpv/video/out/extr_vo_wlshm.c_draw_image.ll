; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_wlshm.c_draw_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_wlshm.c_draw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, i32, %struct.vo_wayland_state*, %struct.priv* }
%struct.vo_wayland_state = type { i32 }
%struct.priv = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__, %struct.buffer* }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.buffer = type { i32*, %struct.mp_image, %struct.buffer* }
%struct.mp_image = type { i64, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mp_rect = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.mp_image*)* @draw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_image(%struct.vo* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.vo_wayland_state*, align 8
  %7 = alloca %struct.buffer*, align 8
  %8 = alloca %struct.mp_image, align 8
  %9 = alloca %struct.mp_rect, align 8
  %10 = alloca %struct.mp_rect, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %11 = load %struct.vo*, %struct.vo** %3, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 4
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %5, align 8
  %14 = load %struct.vo*, %struct.vo** %3, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 3
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %15, align 8
  store %struct.vo_wayland_state* %16, %struct.vo_wayland_state** %6, align 8
  %17 = load %struct.priv*, %struct.priv** %5, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 4
  %19 = load %struct.buffer*, %struct.buffer** %18, align 8
  store %struct.buffer* %19, %struct.buffer** %7, align 8
  %20 = load %struct.buffer*, %struct.buffer** %7, align 8
  %21 = icmp ne %struct.buffer* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.buffer*, %struct.buffer** %7, align 8
  %24 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 2
  %25 = load %struct.buffer*, %struct.buffer** %24, align 8
  %26 = load %struct.priv*, %struct.priv** %5, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 4
  store %struct.buffer* %25, %struct.buffer** %27, align 8
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.vo*, %struct.vo** %3, align 8
  %30 = load %struct.vo*, %struct.vo** %3, align 8
  %31 = getelementptr inbounds %struct.vo, %struct.vo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vo*, %struct.vo** %3, align 8
  %34 = getelementptr inbounds %struct.vo, %struct.vo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.buffer* @buffer_create(%struct.vo* %29, i32 %32, i32 %35)
  store %struct.buffer* %36, %struct.buffer** %7, align 8
  %37 = load %struct.buffer*, %struct.buffer** %7, align 8
  %38 = icmp ne %struct.buffer* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %41 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wl_surface_attach(i32 %42, i32* null, i32 0, i32 0)
  br label %274

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %47 = icmp ne %struct.mp_image* %46, null
  br i1 %47, label %48, label %243

48:                                               ; preds = %45
  %49 = load %struct.buffer*, %struct.buffer** %7, align 8
  %50 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 1
  %51 = bitcast %struct.mp_image* %8 to i8*
  %52 = bitcast %struct.mp_image* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 32, i1 false)
  %53 = load %struct.priv*, %struct.priv** %5, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %58 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MPMAX(i32 %60, i32 4)
  %62 = call i8* @MP_ALIGN_DOWN(i64 %56, i32 %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %9, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = load %struct.priv*, %struct.priv** %5, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %70 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @MPMAX(i32 %72, i32 4)
  %74 = call i8* @MP_ALIGN_DOWN(i64 %68, i32 %73)
  %75 = ptrtoint i8* %74 to i64
  %76 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %9, i32 0, i32 1
  store i64 %75, i64* %76, align 8
  %77 = load %struct.priv*, %struct.priv** %5, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.priv*, %struct.priv** %5, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %9, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %84, %86
  %88 = sub nsw i64 %80, %87
  %89 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %9, i32 0, i32 2
  store i64 %88, i64* %89, align 8
  %90 = load %struct.priv*, %struct.priv** %5, align 8
  %91 = getelementptr inbounds %struct.priv, %struct.priv* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.priv*, %struct.priv** %5, align 8
  %95 = getelementptr inbounds %struct.priv, %struct.priv* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %9, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %97, %99
  %101 = sub nsw i64 %93, %100
  %102 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %9, i32 0, i32 3
  store i64 %101, i64* %102, align 8
  %103 = load %struct.priv*, %struct.priv** %5, align 8
  %104 = getelementptr inbounds %struct.priv, %struct.priv* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %8, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @MPMAX(i32 %109, i32 4)
  %111 = call i8* @MP_ALIGN_DOWN(i64 %106, i32 %110)
  %112 = ptrtoint i8* %111 to i64
  %113 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 0
  store i64 %112, i64* %113, align 8
  %114 = load %struct.priv*, %struct.priv** %5, align 8
  %115 = getelementptr inbounds %struct.priv, %struct.priv* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %8, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @MPMAX(i32 %120, i32 4)
  %122 = call i8* @MP_ALIGN_DOWN(i64 %117, i32 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 1
  store i64 %123, i64* %124, align 8
  %125 = load %struct.priv*, %struct.priv** %5, align 8
  %126 = getelementptr inbounds %struct.priv, %struct.priv* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.priv*, %struct.priv** %5, align 8
  %130 = getelementptr inbounds %struct.priv, %struct.priv* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %132, %134
  %136 = sub nsw i64 %128, %135
  %137 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 2
  store i64 %136, i64* %137, align 8
  %138 = load %struct.priv*, %struct.priv** %5, align 8
  %139 = getelementptr inbounds %struct.priv, %struct.priv* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.priv*, %struct.priv** %5, align 8
  %143 = getelementptr inbounds %struct.priv, %struct.priv* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %145, %147
  %149 = sub nsw i64 %141, %148
  %150 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 3
  store i64 %149, i64* %150, align 8
  %151 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %152 = call i32 @mp_image_crop_rc(%struct.mp_image* %151, %struct.mp_rect* byval(%struct.mp_rect) align 8 %9)
  %153 = call i32 @mp_image_crop_rc(%struct.mp_image* %8, %struct.mp_rect* byval(%struct.mp_rect) align 8 %10)
  %154 = load %struct.priv*, %struct.priv** %5, align 8
  %155 = getelementptr inbounds %struct.priv, %struct.priv* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %158 = call i32 @mp_sws_scale(i32 %156, %struct.mp_image* %8, %struct.mp_image* %157)
  %159 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %48
  %163 = load %struct.buffer*, %struct.buffer** %7, align 8
  %164 = getelementptr inbounds %struct.buffer, %struct.buffer* %163, i32 0, i32 1
  %165 = load %struct.buffer*, %struct.buffer** %7, align 8
  %166 = getelementptr inbounds %struct.buffer, %struct.buffer* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @mp_image_clear(%struct.mp_image* %164, i64 0, i64 0, i64 %168, i64 %170)
  br label %172

172:                                              ; preds = %162, %48
  %173 = load %struct.buffer*, %struct.buffer** %7, align 8
  %174 = getelementptr inbounds %struct.buffer, %struct.buffer* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp sgt i64 %176, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %172
  %181 = load %struct.buffer*, %struct.buffer** %7, align 8
  %182 = getelementptr inbounds %struct.buffer, %struct.buffer* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.buffer*, %struct.buffer** %7, align 8
  %186 = getelementptr inbounds %struct.buffer, %struct.buffer* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.buffer*, %struct.buffer** %7, align 8
  %190 = getelementptr inbounds %struct.buffer, %struct.buffer* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @mp_image_clear(%struct.mp_image* %182, i64 0, i64 %184, i64 %188, i64 %192)
  br label %194

194:                                              ; preds = %180, %172
  %195 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp sgt i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %194
  %199 = load %struct.buffer*, %struct.buffer** %7, align 8
  %200 = getelementptr inbounds %struct.buffer, %struct.buffer* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @mp_image_clear(%struct.mp_image* %200, i64 0, i64 %202, i64 %204, i64 %206)
  br label %208

208:                                              ; preds = %198, %194
  %209 = load %struct.buffer*, %struct.buffer** %7, align 8
  %210 = getelementptr inbounds %struct.buffer, %struct.buffer* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %212, %214
  br i1 %215, label %216, label %230

216:                                              ; preds = %208
  %217 = load %struct.buffer*, %struct.buffer** %7, align 8
  %218 = getelementptr inbounds %struct.buffer, %struct.buffer* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.buffer*, %struct.buffer** %7, align 8
  %224 = getelementptr inbounds %struct.buffer, %struct.buffer* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %10, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @mp_image_clear(%struct.mp_image* %218, i64 %220, i64 %222, i64 %226, i64 %228)
  br label %230

230:                                              ; preds = %216, %208
  %231 = load %struct.vo*, %struct.vo** %3, align 8
  %232 = getelementptr inbounds %struct.vo, %struct.vo* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.priv*, %struct.priv** %5, align 8
  %235 = getelementptr inbounds %struct.priv, %struct.priv* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %238 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.buffer*, %struct.buffer** %7, align 8
  %241 = getelementptr inbounds %struct.buffer, %struct.buffer* %240, i32 0, i32 1
  %242 = call i32 @osd_draw_on_image(i32 %233, i32 %236, i32 %239, i32 0, %struct.mp_image* %241)
  br label %264

243:                                              ; preds = %45
  %244 = load %struct.buffer*, %struct.buffer** %7, align 8
  %245 = getelementptr inbounds %struct.buffer, %struct.buffer* %244, i32 0, i32 1
  %246 = load %struct.buffer*, %struct.buffer** %7, align 8
  %247 = getelementptr inbounds %struct.buffer, %struct.buffer* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.buffer*, %struct.buffer** %7, align 8
  %251 = getelementptr inbounds %struct.buffer, %struct.buffer* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @mp_image_clear(%struct.mp_image* %245, i64 0, i64 0, i64 %249, i64 %253)
  %255 = load %struct.vo*, %struct.vo** %3, align 8
  %256 = getelementptr inbounds %struct.vo, %struct.vo* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.priv*, %struct.priv** %5, align 8
  %259 = getelementptr inbounds %struct.priv, %struct.priv* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.buffer*, %struct.buffer** %7, align 8
  %262 = getelementptr inbounds %struct.buffer, %struct.buffer* %261, i32 0, i32 1
  %263 = call i32 @osd_draw_on_image(i32 %257, i32 %260, i32 0, i32 0, %struct.mp_image* %262)
  br label %264

264:                                              ; preds = %243, %230
  %265 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %266 = call i32 @talloc_free(%struct.mp_image* %265)
  %267 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %6, align 8
  %268 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.buffer*, %struct.buffer** %7, align 8
  %271 = getelementptr inbounds %struct.buffer, %struct.buffer* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @wl_surface_attach(i32 %269, i32* %272, i32 0, i32 0)
  br label %274

274:                                              ; preds = %264, %39
  ret void
}

declare dso_local %struct.buffer* @buffer_create(%struct.vo*, i32, i32) #1

declare dso_local i32 @wl_surface_attach(i32, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @MP_ALIGN_DOWN(i64, i32) #1

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @mp_image_crop_rc(%struct.mp_image*, %struct.mp_rect* byval(%struct.mp_rect) align 8) #1

declare dso_local i32 @mp_sws_scale(i32, %struct.mp_image*, %struct.mp_image*) #1

declare dso_local i32 @mp_image_clear(%struct.mp_image*, i64, i64, i64, i64) #1

declare dso_local i32 @osd_draw_on_image(i32, i32, i32, i32, %struct.mp_image*) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
