; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_get_transform.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_get_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_transform = type { float*, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { float, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@__const.get_transform.sin90 = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 16
@__const.get_transform.cos90 = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 -1, i32 0], align 16
@__const.get_transform.b = private unnamed_addr constant [2 x float] [float 1.000000e+00, float 1.000000e+00], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, i32, i32, %struct.gl_transform*)* @get_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_transform(float %0, float %1, i32 %2, i32 %3, %struct.gl_transform* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gl_transform*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca %struct.gl_transform, align 8
  %15 = alloca [2 x float], align 4
  %16 = alloca %struct.gl_transform, align 8
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.gl_transform* %4, %struct.gl_transform** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = srem i32 %17, 90
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %24

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = sdiv i32 %22, 90
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ]
  store i32 %25, i32* %11, align 4
  %26 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([4 x i32]* @__const.get_transform.sin90 to i8*), i64 16, i1 false)
  %27 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([4 x i32]* @__const.get_transform.cos90 to i8*), i64 16, i1 false)
  %28 = bitcast %struct.gl_transform* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 32, i1 false)
  %29 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %14, i32 0, i32 0
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to float*
  store float* %35, float** %29, align 8
  %36 = bitcast [2 x float]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 bitcast ([2 x float]* @__const.get_transform.b to i8*), i64 8, i1 false)
  %37 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %38 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 1
  %39 = call i32 @gl_transform_vec(%struct.gl_transform* byval(%struct.gl_transform) align 8 %14, float* %37, float* %38)
  %40 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %41 = load float, float* %40, align 4
  %42 = fcmp olt float %41, 0.000000e+00
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load float, float* %6, align 4
  br label %46

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi float [ %44, %43 ], [ 0.000000e+00, %45 ]
  %48 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %14, i32 0, i32 0
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  %51 = load float, float* %50, align 4
  %52 = fadd float %51, %47
  store float %52, float* %50, align 4
  %53 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 1
  %54 = load float, float* %53, align 4
  %55 = fcmp olt float %54, 0.000000e+00
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load float, float* %7, align 4
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi float [ %57, %56 ], [ 0.000000e+00, %58 ]
  %61 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %14, i32 0, i32 0
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 1
  %64 = load float, float* %63, align 4
  %65 = fadd float %64, %60
  store float %65, float* %63, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %16, i32 0, i32 0
  store float* inttoptr (i64 1 to float*), float** %69, align 8
  %70 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %16, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store float 0.000000e+00, float* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %73 = load float, float* %7, align 4
  %74 = fptosi float %73 to i32
  store i32 %74, i32* %72, align 4
  %75 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %16, i32 0, i32 2
  %76 = bitcast %struct.TYPE_5__* %75 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %76, i8 0, i64 16, i1 false)
  %77 = call i32 @gl_transform_trans(%struct.gl_transform* byval(%struct.gl_transform) align 8 %16, %struct.gl_transform* %14)
  br label %78

78:                                               ; preds = %68, %59
  %79 = load %struct.gl_transform*, %struct.gl_transform** %10, align 8
  %80 = bitcast %struct.gl_transform* %79 to i8*
  %81 = bitcast %struct.gl_transform* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 32, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gl_transform_vec(%struct.gl_transform* byval(%struct.gl_transform) align 8, float*, float*) #2

declare dso_local i32 @gl_transform_trans(%struct.gl_transform* byval(%struct.gl_transform) align 8, %struct.gl_transform*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
