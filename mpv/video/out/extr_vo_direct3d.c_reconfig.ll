; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_reconfig.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i64, i64, %struct.mp_image_params }
%struct.mp_image_params = type { i64, i64, i64 }

@VO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, %struct.mp_image_params*)* @reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconfig(%struct.vo* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo*, align 8
  %5 = alloca %struct.mp_image_params*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.vo* %0, %struct.vo** %4, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %5, align 8
  %7 = load %struct.vo*, %struct.vo** %4, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.vo*, %struct.vo** %4, align 8
  %13 = call i32 @vo_w32_config(%struct.vo* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %18 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %37, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %26 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %34 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %29, %21, %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = call i32 @d3d_destroy_video_objects(%struct.TYPE_5__* %38)
  %40 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %41 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %46 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %53 = bitcast %struct.mp_image_params* %51 to i8*
  %54 = bitcast %struct.mp_image_params* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 24, i1 false)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = load %struct.mp_image_params*, %struct.mp_image_params** %5, align 8
  %57 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @init_rendering_mode(%struct.TYPE_5__* %55, i64 %58, i32 1)
  br label %60

60:                                               ; preds = %37, %29
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = call i32 @resize_d3d(%struct.TYPE_5__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @VO_ERROR, align 4
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @vo_w32_config(%struct.vo*) #1

declare dso_local i32 @d3d_destroy_video_objects(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_rendering_mode(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @resize_d3d(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
