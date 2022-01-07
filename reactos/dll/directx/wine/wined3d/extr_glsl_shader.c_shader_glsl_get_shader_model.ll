; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_shader_model.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_shader_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i64, i64* }

@WINED3D_GL_VERSION_3_2 = common dso_local global i64 0, align 8
@ARB_SAMPLER_OBJECTS = common dso_local global i64 0, align 8
@ARB_SHADER_BIT_ENCODING = common dso_local global i64 0, align 8
@ARB_TEXTURE_SWIZZLE = common dso_local global i64 0, align 8
@ARB_COMPUTE_SHADER = common dso_local global i64 0, align 8
@ARB_CULL_DISTANCE = common dso_local global i64 0, align 8
@ARB_DERIVATIVE_CONTROL = common dso_local global i64 0, align 8
@ARB_DRAW_INDIRECT = common dso_local global i64 0, align 8
@ARB_GPU_SHADER5 = common dso_local global i64 0, align 8
@ARB_SHADER_ATOMIC_COUNTERS = common dso_local global i64 0, align 8
@ARB_SHADER_IMAGE_LOAD_STORE = common dso_local global i64 0, align 8
@ARB_SHADER_IMAGE_SIZE = common dso_local global i64 0, align 8
@ARB_SHADING_LANGUAGE_PACKING = common dso_local global i64 0, align 8
@ARB_TESSELLATION_SHADER = common dso_local global i64 0, align 8
@ARB_TEXTURE_GATHER = common dso_local global i64 0, align 8
@ARB_TRANSFORM_FEEDBACK3 = common dso_local global i64 0, align 8
@ARB_SHADER_TEXTURE_LOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_gl_info*)* @shader_glsl_get_shader_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_get_shader_model(%struct.wined3d_gl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  %5 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %6 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @MAKEDWORD_VERSION(i32 1, i32 50)
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @WINED3D_GL_VERSION_3_2, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %10
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %20 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @ARB_SAMPLER_OBJECTS, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %28 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @ARB_SHADER_BIT_ENCODING, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %36 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @ARB_TEXTURE_SWIZZLE, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %34, %26, %18, %10, %1
  %43 = phi i1 [ false, %26 ], [ false, %18 ], [ false, %10 ], [ false, %1 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %144

47:                                               ; preds = %42
  %48 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %49 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @ARB_COMPUTE_SHADER, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %144

55:                                               ; preds = %47
  %56 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %57 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @ARB_CULL_DISTANCE, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %144

63:                                               ; preds = %55
  %64 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %65 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @ARB_DERIVATIVE_CONTROL, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %144

71:                                               ; preds = %63
  %72 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %73 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @ARB_DRAW_INDIRECT, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %144

79:                                               ; preds = %71
  %80 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %81 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @ARB_GPU_SHADER5, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %144

87:                                               ; preds = %79
  %88 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %89 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* @ARB_SHADER_ATOMIC_COUNTERS, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %144

95:                                               ; preds = %87
  %96 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %97 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @ARB_SHADER_IMAGE_LOAD_STORE, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %144

103:                                              ; preds = %95
  %104 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %105 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @ARB_SHADER_IMAGE_SIZE, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %144

111:                                              ; preds = %103
  %112 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %113 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @ARB_SHADING_LANGUAGE_PACKING, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %144

119:                                              ; preds = %111
  %120 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %121 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* @ARB_TESSELLATION_SHADER, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %119
  %128 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %129 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* @ARB_TEXTURE_GATHER, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %127
  %136 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %137 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* @ARB_TRANSFORM_FEEDBACK3, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  store i32 5, i32* %2, align 4
  br label %162

144:                                              ; preds = %135, %127, %119, %111, %103, %95, %87, %79, %71, %63, %55, %47, %42
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 4, i32* %2, align 4
  br label %162

148:                                              ; preds = %144
  %149 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %150 = call i64 @shader_glsl_has_core_grad(%struct.wined3d_gl_info* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %154 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %153, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* @ARB_SHADER_TEXTURE_LOD, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152, %148
  store i32 3, i32* %2, align 4
  br label %162

161:                                              ; preds = %152
  store i32 2, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %160, %147, %143
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i64 @MAKEDWORD_VERSION(i32, i32) #1

declare dso_local i64 @shader_glsl_has_core_grad(%struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
