; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_reconfig.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { %struct.mp_image_params }
%struct.mp_image_params = type { i32, i32, i32 }

@IMGFMT_VAAPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, %struct.mp_image_params*)* @reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconfig(%struct.vo* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo*, align 8
  %5 = alloca %struct.mp_image_params*, align 8
  %6 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %4, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %5, align 8
  %7 = load %struct.vo*, %struct.vo** %4, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %6, align 8
  %10 = load %struct.priv*, %struct.priv** %6, align 8
  %11 = call i32 @free_video_specific(%struct.priv* %10)
  %12 = load %struct.vo*, %struct.vo** %4, align 8
  %13 = call i32 @vo_x11_config_vo_window(%struct.vo* %12)
  %14 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %15 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IMGFMT_VAAPI, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.priv*, %struct.priv** %6, align 8
  %21 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %22 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %25 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %28 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @alloc_swdec_surfaces(%struct.priv* %20, i32 %23, i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %42

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.priv*, %struct.priv** %6, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 0
  %37 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %38 = bitcast %struct.mp_image_params* %36 to i8*
  %39 = bitcast %struct.mp_image_params* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 12, i1 false)
  %40 = load %struct.priv*, %struct.priv** %6, align 8
  %41 = call i32 @resize(%struct.priv* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %32
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @free_video_specific(%struct.priv*) #1

declare dso_local i32 @vo_x11_config_vo_window(%struct.vo*) #1

declare dso_local i32 @alloc_swdec_surfaces(%struct.priv*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @resize(%struct.priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
