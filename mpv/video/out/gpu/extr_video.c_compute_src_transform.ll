; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_compute_src_transform.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_compute_src_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { float, float, float, float }
%struct.gl_transform = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { float, float }
%struct.TYPE_7__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { float, i32 }
%struct.TYPE_8__ = type { float, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*, %struct.gl_transform*)* @compute_src_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_src_transform(%struct.gl_video* %0, %struct.gl_transform* %1) #0 {
  %3 = alloca %struct.gl_video*, align 8
  %4 = alloca %struct.gl_transform*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.gl_transform, align 4
  store %struct.gl_video* %0, %struct.gl_video** %3, align 8
  store %struct.gl_transform* %1, %struct.gl_transform** %4, align 8
  %10 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %11 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %15 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = fsub float %13, %17
  %19 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %20 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = sitofp i64 %21 to float
  %23 = fdiv float %18, %22
  store float %23, float* %5, align 4
  %24 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %25 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load float, float* %26, align 4
  %28 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %29 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load float, float* %30, align 4
  %32 = fsub float %27, %31
  %33 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %34 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = sitofp i64 %35 to float
  %37 = fdiv float %32, %36
  store float %37, float* %6, align 4
  %38 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %39 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load float, float* %40, align 4
  store float %41, float* %7, align 4
  %42 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %43 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load float, float* %44, align 4
  store float %45, float* %8, align 4
  %46 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %9, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load float, float* %5, align 4
  store float %48, float* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store float 0.000000e+00, float* %49, align 4
  %50 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %9, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load float, float* %7, align 4
  store float %53, float* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %55 = load float, float* %8, align 4
  %56 = fptosi float %55 to i32
  store i32 %56, i32* %54, align 4
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %58 = bitcast %struct.TYPE_8__* %57 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %58, i8 0, i64 8, i1 false)
  %59 = load %struct.gl_video*, %struct.gl_video** %3, align 8
  %60 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @gl_transform_trans(i32 %61, %struct.gl_transform* %9)
  %63 = load %struct.gl_transform*, %struct.gl_transform** %4, align 8
  %64 = bitcast %struct.gl_transform* %63 to i8*
  %65 = bitcast %struct.gl_transform* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gl_transform_trans(i32, %struct.gl_transform*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
