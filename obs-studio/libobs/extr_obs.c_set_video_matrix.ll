; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_set_video_matrix.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_set_video_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_video = type { i32 }
%struct.obs_video_info = type { i32, i32, i32 }
%struct.matrix4 = type { %struct.vec4, %struct.vec4 }
%struct.vec4 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_core_video*, %struct.obs_video_info*)* @set_video_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_video_matrix(%struct.obs_core_video* %0, %struct.obs_video_info* %1) #0 {
  %3 = alloca %struct.obs_core_video*, align 8
  %4 = alloca %struct.obs_video_info*, align 8
  %5 = alloca %struct.matrix4, align 4
  %6 = alloca %struct.vec4, align 4
  store %struct.obs_core_video* %0, %struct.obs_core_video** %3, align 8
  store %struct.obs_video_info* %1, %struct.obs_video_info** %4, align 8
  %7 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %8 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @format_is_yuv(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %14 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %17 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %struct.matrix4* %5 to float*
  %20 = call i32 @video_format_get_parameters(i32 %15, i32 %18, float* %19, i32* null, i32* null)
  %21 = call i32 @matrix4_inv(%struct.matrix4* %5, %struct.matrix4* %5)
  %22 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %5, i32 0, i32 1
  %23 = bitcast %struct.vec4* %6 to i8*
  %24 = bitcast %struct.vec4* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %5, i32 0, i32 0
  %27 = bitcast %struct.vec4* %25 to i8*
  %28 = bitcast %struct.vec4* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = getelementptr inbounds %struct.matrix4, %struct.matrix4* %5, i32 0, i32 0
  %30 = bitcast %struct.vec4* %29 to i8*
  %31 = bitcast %struct.vec4* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %34

32:                                               ; preds = %2
  %33 = call i32 @matrix4_identity(%struct.matrix4* %5)
  br label %34

34:                                               ; preds = %32, %12
  %35 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %36 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i32 %37, %struct.matrix4* %5, i32 64)
  ret void
}

declare dso_local i64 @format_is_yuv(i32) #1

declare dso_local i32 @video_format_get_parameters(i32, i32, float*, i32*, i32*) #1

declare dso_local i32 @matrix4_inv(%struct.matrix4*, %struct.matrix4*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @matrix4_identity(%struct.matrix4*) #1

declare dso_local i32 @memcpy(i32, %struct.matrix4*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
