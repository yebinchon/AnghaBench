; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_pass_dispatch_sample_polar.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_pass_dispatch_sample_polar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.scaler = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.image = type { float, float, i32 }

@RA_CAP_COMPUTE = common dso_local global i32 0, align 4
@RA_CAP_GATHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*, %struct.scaler*, <2 x float>, i32, i32, i32)* @pass_dispatch_sample_polar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pass_dispatch_sample_polar(%struct.gl_video* %0, %struct.scaler* %1, <2 x float> %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.image, align 4
  %8 = alloca { <2 x float>, i32 }, align 4
  %9 = alloca %struct.gl_video*, align 8
  %10 = alloca %struct.scaler*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %8, i32 0, i32 0
  store <2 x float> %2, <2 x float>* %26, align 4
  %27 = getelementptr inbounds { <2 x float>, i32 }, { <2 x float>, i32 }* %8, i32 0, i32 1
  store i32 %3, i32* %27, align 4
  %28 = bitcast %struct.image* %7 to i8*
  %29 = bitcast { <2 x float>, i32 }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 12, i1 false)
  store %struct.gl_video* %0, %struct.gl_video** %9, align 8
  store %struct.scaler* %1, %struct.scaler** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %30 = load i32, i32* @RA_CAP_COMPUTE, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %32 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %6
  br label %116

41:                                               ; preds = %6
  %42 = load %struct.scaler*, %struct.scaler** %10, align 8
  %43 = getelementptr inbounds %struct.scaler, %struct.scaler* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ceil(i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sitofp i32 %53 to float
  %55 = getelementptr inbounds %struct.image, %struct.image* %7, i32 0, i32 0
  %56 = load float, float* %55, align 4
  %57 = fdiv float %54, %56
  store float %57, float* %17, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sitofp i32 %58 to float
  %60 = getelementptr inbounds %struct.image, %struct.image* %7, i32 0, i32 1
  %61 = load float, float* %60, align 4
  %62 = fdiv float %59, %61
  store float %62, float* %18, align 4
  store i32 32, i32* %19, align 4
  store i32 256, i32* %20, align 4
  store i32 32, i32* %21, align 4
  %63 = load i32, i32* %21, align 4
  %64 = sdiv i32 256, %63
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %21, align 4
  %66 = sitofp i32 %65 to float
  %67 = load float, float* %17, align 4
  %68 = fdiv float %66, %67
  %69 = fptosi float %68 to i32
  %70 = call i32 @ceil(i32 %69)
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %70, %71
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %22, align 4
  %75 = sitofp i32 %74 to float
  %76 = load float, float* %18, align 4
  %77 = fdiv float %75, %76
  %78 = fptosi float %77 to i32
  %79 = call i32 @ceil(i32 %78)
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %79, %80
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %23, align 4
  %84 = load i32, i32* %24, align 4
  %85 = mul nsw i32 %83, %84
  %86 = getelementptr inbounds %struct.image, %struct.image* %7, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %85, %87
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %25, align 4
  %92 = load i32, i32* %25, align 4
  %93 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %94 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %92, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %41
  br label %116

100:                                              ; preds = %41
  %101 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %22, align 4
  %104 = call i32 @pass_is_compute(%struct.gl_video* %101, i32 %102, i32 %103, i32 0)
  %105 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %106 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.scaler*, %struct.scaler** %10, align 8
  %109 = getelementptr inbounds %struct.image, %struct.image* %7, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %23, align 4
  %114 = load i32, i32* %24, align 4
  %115 = call i32 @pass_compute_polar(i32 %107, %struct.scaler* %108, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  br label %131

116:                                              ; preds = %99, %40
  %117 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %118 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.scaler*, %struct.scaler** %10, align 8
  %121 = getelementptr inbounds %struct.image, %struct.image* %7, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.gl_video*, %struct.gl_video** %9, align 8
  %124 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RA_CAP_GATHER, align 4
  %129 = and i32 %127, %128
  %130 = call i32 @pass_sample_polar(i32 %119, %struct.scaler* %120, i32 %122, i32 %129)
  br label %131

131:                                              ; preds = %116, %100
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ceil(i32) #2

declare dso_local i32 @pass_is_compute(%struct.gl_video*, i32, i32, i32) #2

declare dso_local i32 @pass_compute_polar(i32, %struct.scaler*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @pass_sample_polar(i32, %struct.scaler*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
