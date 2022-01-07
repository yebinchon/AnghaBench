; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_sample.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.glsl_src_param = type { i8* }
%struct.glsl_sample_function = type { i32, i32 }

@WINED3D_GLSL_SAMPLE_GRAD = common dso_local global i32 0, align 4
@WINED3D_GLSL_SAMPLE_LOD = common dso_local global i32 0, align 4
@WINED3D_GLSL_SAMPLE_OFFSET = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unhandled opcode %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_sample(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.glsl_src_param, align 8
  %7 = alloca %struct.glsl_src_param, align 8
  %8 = alloca %struct.glsl_src_param, align 8
  %9 = alloca %struct.glsl_src_param, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.glsl_sample_function, align 4
  %14 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 129
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @WINED3D_GLSL_SAMPLE_GRAD, align 4
  %21 = load i32, i32* %14, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @WINED3D_GLSL_SAMPLE_LOD, align 4
  %30 = load i32, i32* %14, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %34 = call i64 @wined3d_shader_instruction_has_texel_offset(%struct.wined3d_shader_instruction* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @WINED3D_GLSL_SAMPLE_OFFSET, align 4
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %41, i32 0, i32 3
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %51, i32 0, i32 3
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  %61 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %62 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @shader_glsl_get_sample_function(%struct.TYPE_10__* %63, i32 %64, i32 %65, i32 %66, %struct.glsl_sample_function* %13)
  %68 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %69 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %70 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %69, i32 0, i32 3
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 0
  %73 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %13, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %68, %struct.TYPE_11__* %72, i32 %74, %struct.glsl_src_param* %6)
  %76 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %77 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %121 [
    i32 131, label %79
    i32 130, label %80
    i32 129, label %90
    i32 128, label %111
  ]

79:                                               ; preds = %40
  br label %127

80:                                               ; preds = %40
  %81 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %82 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %83 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %82, i32 0, i32 3
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 3
  %86 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %87 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %81, %struct.TYPE_11__* %85, i32 %86, %struct.glsl_src_param* %7)
  %88 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %7, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %3, align 8
  br label %127

90:                                               ; preds = %40
  %91 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %92 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %93 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %92, i32 0, i32 3
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 3
  %96 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %13, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %91, %struct.TYPE_11__* %95, i32 %97, %struct.glsl_src_param* %8)
  %99 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %100 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %101 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %100, i32 0, i32 3
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i64 4
  %104 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %13, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %99, %struct.TYPE_11__* %103, i32 %105, %struct.glsl_src_param* %9)
  %107 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %8, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %4, align 8
  %109 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %9, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %5, align 8
  br label %127

111:                                              ; preds = %40
  %112 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %113 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %114 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %113, i32 0, i32 3
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 3
  %117 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %118 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %112, %struct.TYPE_11__* %116, i32 %117, %struct.glsl_src_param* %7)
  %119 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %7, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %3, align 8
  br label %127

121:                                              ; preds = %40
  %122 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %123 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @debug_d3dshaderinstructionhandler(i32 %124)
  %126 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %121, %111, %90, %80, %79
  %128 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %129 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @shader_glsl_find_sampler(i32* %133, i32 %134, i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %140 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %139, i32 0, i32 3
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i8*, i8** %4, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = load i8*, i8** %3, align 8
  %148 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %149 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %6, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %137, i32 %138, %struct.glsl_sample_function* %13, i32 %144, i8* %145, i8* %146, i8* %147, i32* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %151)
  %153 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %154 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %153, i32 0, i32 1
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = call i32 @shader_glsl_release_sample_function(%struct.TYPE_10__* %155, %struct.glsl_sample_function* %13)
  ret void
}

declare dso_local i64 @wined3d_shader_instruction_has_texel_offset(%struct.wined3d_shader_instruction*) #1

declare dso_local i32 @shader_glsl_get_sample_function(%struct.TYPE_10__*, i32, i32, i32, %struct.glsl_sample_function*) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_11__*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debug_d3dshaderinstructionhandler(i32) #1

declare dso_local i32 @shader_glsl_find_sampler(i32*, i32, i32) #1

declare dso_local i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i8*, i8*, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @shader_glsl_release_sample_function(%struct.TYPE_10__*, %struct.glsl_sample_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
