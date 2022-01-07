; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_osd.c_mpgl_osd_draw_finish.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_osd.c_mpgl_osd_draw_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpgl_osd = type { %struct.TYPE_2__, i32, %struct.mpgl_osd_part** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mpgl_osd_part = type { i64, i64, i32 }
%struct.gl_shader_cache = type { i32 }
%struct.ra_fbo = type { i32 }
%struct.gl_transform = type { float*, float** }

@blend_factors = common dso_local global i32** null, align 8
@vertex_vao = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpgl_osd_draw_finish(%struct.mpgl_osd* %0, i32 %1, %struct.gl_shader_cache* %2, i32 %3) #0 {
  %5 = alloca %struct.ra_fbo, align 4
  %6 = alloca %struct.mpgl_osd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gl_shader_cache*, align 8
  %9 = alloca %struct.mpgl_osd_part*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gl_transform, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32*, align 8
  %17 = getelementptr inbounds %struct.ra_fbo, %struct.ra_fbo* %5, i32 0, i32 0
  store i32 %3, i32* %17, align 4
  store %struct.mpgl_osd* %0, %struct.mpgl_osd** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.gl_shader_cache* %2, %struct.gl_shader_cache** %8, align 8
  %18 = load %struct.mpgl_osd*, %struct.mpgl_osd** %6, align 8
  %19 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %18, i32 0, i32 2
  %20 = load %struct.mpgl_osd_part**, %struct.mpgl_osd_part*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %20, i64 %22
  %24 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %23, align 8
  store %struct.mpgl_osd_part* %24, %struct.mpgl_osd_part** %9, align 8
  %25 = load %struct.mpgl_osd*, %struct.mpgl_osd** %6, align 8
  %26 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %29 = call i32 @get_3d_side_by_side(i32 %27, i32* %28)
  %30 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %9, align 8
  %31 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %116, %4
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %119

37:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %112, %37
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %115

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ra_fbo, %struct.ra_fbo* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gl_transform_ortho_fbo(%struct.gl_transform* %13, i32 %45)
  %47 = load %struct.mpgl_osd*, %struct.mpgl_osd** %6, align 8
  %48 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sitofp i32 %52 to float
  store float %53, float* %14, align 4
  %54 = load %struct.mpgl_osd*, %struct.mpgl_osd** %6, align 8
  %55 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sitofp i32 %59 to float
  store float %60, float* %15, align 4
  %61 = load float, float* %14, align 4
  %62 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %13, i32 0, i32 1
  %63 = load float**, float*** %62, align 8
  %64 = getelementptr inbounds float*, float** %63, i64 0
  %65 = load float*, float** %64, align 8
  %66 = getelementptr inbounds float, float* %65, i64 0
  %67 = load float, float* %66, align 4
  %68 = fmul float %61, %67
  %69 = load float, float* %15, align 4
  %70 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %13, i32 0, i32 1
  %71 = load float**, float*** %70, align 8
  %72 = getelementptr inbounds float*, float** %71, i64 1
  %73 = load float*, float** %72, align 8
  %74 = getelementptr inbounds float, float* %73, i64 0
  %75 = load float, float* %74, align 4
  %76 = fmul float %69, %75
  %77 = fadd float %68, %76
  %78 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %13, i32 0, i32 0
  %79 = load float*, float** %78, align 8
  %80 = getelementptr inbounds float, float* %79, i64 0
  %81 = load float, float* %80, align 4
  %82 = fadd float %81, %77
  store float %82, float* %80, align 4
  %83 = load float, float* %14, align 4
  %84 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %13, i32 0, i32 1
  %85 = load float**, float*** %84, align 8
  %86 = getelementptr inbounds float*, float** %85, i64 0
  %87 = load float*, float** %86, align 8
  %88 = getelementptr inbounds float, float* %87, i64 1
  %89 = load float, float* %88, align 4
  %90 = fmul float %83, %89
  %91 = load float, float* %15, align 4
  %92 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %13, i32 0, i32 1
  %93 = load float**, float*** %92, align 8
  %94 = getelementptr inbounds float*, float** %93, i64 1
  %95 = load float*, float** %94, align 8
  %96 = getelementptr inbounds float, float* %95, i64 1
  %97 = load float, float* %96, align 4
  %98 = fmul float %91, %97
  %99 = fadd float %90, %98
  %100 = getelementptr inbounds %struct.gl_transform, %struct.gl_transform* %13, i32 0, i32 0
  %101 = load float*, float** %100, align 8
  %102 = getelementptr inbounds float, float* %101, i64 1
  %103 = load float, float* %102, align 4
  %104 = fadd float %103, %99
  store float %104, float* %102, align 4
  %105 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %9, align 8
  %106 = bitcast %struct.gl_transform* %13 to { float*, float** }*
  %107 = getelementptr inbounds { float*, float** }, { float*, float** }* %106, i32 0, i32 0
  %108 = load float*, float** %107, align 8
  %109 = getelementptr inbounds { float*, float** }, { float*, float** }* %106, i32 0, i32 1
  %110 = load float**, float*** %109, align 8
  %111 = call i32 @generate_verts(%struct.mpgl_osd_part* %105, float* %108, float** %110)
  br label %112

112:                                              ; preds = %43
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %38

115:                                              ; preds = %38
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %32

119:                                              ; preds = %32
  %120 = load i32**, i32*** @blend_factors, align 8
  %121 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %9, align 8
  %122 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32*, i32** %120, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32* %126, i32** %16, align 8
  %127 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %8, align 8
  %128 = load i32*, i32** %16, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %16, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %16, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %16, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @gl_sc_blend(%struct.gl_shader_cache* %127, i32 %130, i32 %133, i32 %136, i32 %139)
  %141 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %8, align 8
  %142 = getelementptr inbounds %struct.ra_fbo, %struct.ra_fbo* %5, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @vertex_vao, align 4
  %145 = load i32, i32* @vertex_vao, align 4
  %146 = call i32 @MP_ARRAY_SIZE(i32 %145)
  %147 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %9, align 8
  %148 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %9, align 8
  %151 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @gl_sc_dispatch_draw(%struct.gl_shader_cache* %141, i32 %143, i32 0, i32 %144, i32 %146, i32 4, i32 %149, i64 %152)
  ret void
}

declare dso_local i32 @get_3d_side_by_side(i32, i32*) #1

declare dso_local i32 @gl_transform_ortho_fbo(%struct.gl_transform*, i32) #1

declare dso_local i32 @generate_verts(%struct.mpgl_osd_part*, float*, float**) #1

declare dso_local i32 @gl_sc_blend(%struct.gl_shader_cache*, i32, i32, i32, i32) #1

declare dso_local i32 @gl_sc_dispatch_draw(%struct.gl_shader_cache*, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @MP_ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
