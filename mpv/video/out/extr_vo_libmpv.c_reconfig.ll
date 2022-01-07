; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_reconfig.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_priv* }
%struct.vo_priv = type { %struct.mpv_render_context* }
%struct.mpv_render_context = type { i32, i32, i32, %struct.mp_image_params }
%struct.mp_image_params = type { i32 }

@VOCTRL_RECONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, %struct.mp_image_params*)* @reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconfig(%struct.vo* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.mp_image_params*, align 8
  %5 = alloca %struct.vo_priv*, align 8
  %6 = alloca %struct.mpv_render_context*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %4, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.vo_priv*, %struct.vo_priv** %8, align 8
  store %struct.vo_priv* %9, %struct.vo_priv** %5, align 8
  %10 = load %struct.vo_priv*, %struct.vo_priv** %5, align 8
  %11 = getelementptr inbounds %struct.vo_priv, %struct.vo_priv* %10, i32 0, i32 0
  %12 = load %struct.mpv_render_context*, %struct.mpv_render_context** %11, align 8
  store %struct.mpv_render_context* %12, %struct.mpv_render_context** %6, align 8
  %13 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %14 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %13, i32 0, i32 2
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %17 = call i32 @forget_frames(%struct.mpv_render_context* %16, i32 1)
  %18 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %19 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %18, i32 0, i32 3
  %20 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %21 = bitcast %struct.mp_image_params* %19 to i8*
  %22 = bitcast %struct.mp_image_params* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %24 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %26 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.mpv_render_context*, %struct.mpv_render_context** %6, align 8
  %28 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %27, i32 0, i32 2
  %29 = call i32 @pthread_mutex_unlock(i32* %28)
  %30 = load %struct.vo*, %struct.vo** %3, align 8
  %31 = load i32, i32* @VOCTRL_RECONFIG, align 4
  %32 = call i32 @control(%struct.vo* %30, i32 %31, i32* null)
  ret i32 0
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @forget_frames(%struct.mpv_render_context*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @control(%struct.vo*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
