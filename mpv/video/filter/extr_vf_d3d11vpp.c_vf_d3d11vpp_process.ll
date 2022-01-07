; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_d3d11vpp.c_vf_d3d11vpp_process.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_d3d11vpp.c_vf_d3d11vpp_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mp_image = type { %struct.TYPE_2__ }

@IMGFMT_NV12 = common dso_local global i64 0, align 8
@DXGI_FORMAT_NV12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @vf_d3d11vpp_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf_d3d11vpp_process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.mp_image*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %6 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %7 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mp_image* @mp_refqueue_execute_reinit(i32 %11)
  store %struct.mp_image* %12, %struct.mp_image** %4, align 8
  %13 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %14 = icmp ne %struct.mp_image* %13, null
  br i1 %14, label %15, label %53

15:                                               ; preds = %1
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mp_image_pool_clear(i32 %18)
  %20 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %21 = call i32 @destroy_video_proc(%struct.mp_filter* %20)
  %22 = load %struct.priv*, %struct.priv** %3, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 3
  %24 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %25 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %24, i32 0, i32 0
  %26 = bitcast %struct.TYPE_2__* %23 to i8*
  %27 = bitcast %struct.TYPE_2__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 8, i1 false)
  %28 = load %struct.priv*, %struct.priv** %3, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 2
  %30 = load %struct.priv*, %struct.priv** %3, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 3
  %32 = bitcast %struct.TYPE_2__* %29 to i8*
  %33 = bitcast %struct.TYPE_2__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 8, i1 false)
  %34 = load i64, i64* @IMGFMT_NV12, align 8
  %35 = load %struct.priv*, %struct.priv** %3, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load i32, i32* @DXGI_FORMAT_NV12, align 4
  %39 = load %struct.priv*, %struct.priv** %3, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.priv*, %struct.priv** %3, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.priv*, %struct.priv** %3, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %44, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.priv*, %struct.priv** %3, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %15, %1
  %54 = load %struct.priv*, %struct.priv** %3, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mp_refqueue_can_output(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %95

60:                                               ; preds = %53
  %61 = load %struct.priv*, %struct.priv** %3, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mp_refqueue_should_deint(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %60
  %67 = load %struct.priv*, %struct.priv** %3, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %66
  %72 = load %struct.priv*, %struct.priv** %3, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mp_refqueue_get(i32 %74, i32 0)
  %76 = call %struct.mp_image* @mp_image_new_ref(i32 %75)
  store %struct.mp_image* %76, %struct.mp_image** %5, align 8
  %77 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %78 = icmp ne %struct.mp_image* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %71
  %80 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %81 = call i32 @mp_filter_internal_mark_failed(%struct.mp_filter* %80)
  br label %95

82:                                               ; preds = %71
  %83 = load %struct.priv*, %struct.priv** %3, align 8
  %84 = getelementptr inbounds %struct.priv, %struct.priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %87 = call i32 @mp_refqueue_write_out_pin(i32 %85, %struct.mp_image* %86)
  br label %95

88:                                               ; preds = %66, %60
  %89 = load %struct.priv*, %struct.priv** %3, align 8
  %90 = getelementptr inbounds %struct.priv, %struct.priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %93 = call %struct.mp_image* @render(%struct.mp_filter* %92)
  %94 = call i32 @mp_refqueue_write_out_pin(i32 %91, %struct.mp_image* %93)
  br label %95

95:                                               ; preds = %59, %79, %88, %82
  ret void
}

declare dso_local %struct.mp_image* @mp_refqueue_execute_reinit(i32) #1

declare dso_local i32 @mp_image_pool_clear(i32) #1

declare dso_local i32 @destroy_video_proc(%struct.mp_filter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_refqueue_can_output(i32) #1

declare dso_local i32 @mp_refqueue_should_deint(i32) #1

declare dso_local %struct.mp_image* @mp_image_new_ref(i32) #1

declare dso_local i32 @mp_refqueue_get(i32, i32) #1

declare dso_local i32 @mp_filter_internal_mark_failed(%struct.mp_filter*) #1

declare dso_local i32 @mp_refqueue_write_out_pin(i32, %struct.mp_image*) #1

declare dso_local %struct.mp_image* @render(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
