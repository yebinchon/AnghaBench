; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_stage_constant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_stage_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.atifs_context_private_data*, %struct.wined3d_gl_info* }
%struct.atifs_context_private_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32** }
%struct.wined3d_color = type { i32 }

@WINED3D_HIGHEST_TEXTURE_STATE = common dso_local global i32 0, align 4
@ATIFS_CONSTANT_STAGE = common dso_local global i64 0, align 8
@WINED3D_TSS_CONSTANT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"glSetFragmentShaderConstantATI(ATIFS_CONST_STAGE(stage), &color.r)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @atifs_stage_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atifs_stage_constant(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.atifs_context_private_data*, align 8
  %10 = alloca %struct.wined3d_color, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @STATE_TEXTURESTAGE(i32 0, i32 0)
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* @WINED3D_HIGHEST_TEXTURE_STATE, align 4
  %15 = add nsw i32 %14, 1
  %16 = sdiv i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 1
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %18, align 8
  store %struct.wined3d_gl_info* %19, %struct.wined3d_gl_info** %8, align 8
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %20, i32 0, i32 0
  %22 = load %struct.atifs_context_private_data*, %struct.atifs_context_private_data** %21, align 8
  store %struct.atifs_context_private_data* %22, %struct.atifs_context_private_data** %9, align 8
  %23 = load %struct.atifs_context_private_data*, %struct.atifs_context_private_data** %9, align 8
  %24 = getelementptr inbounds %struct.atifs_context_private_data, %struct.atifs_context_private_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %3
  %28 = load %struct.atifs_context_private_data*, %struct.atifs_context_private_data** %9, align 8
  %29 = getelementptr inbounds %struct.atifs_context_private_data, %struct.atifs_context_private_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ATIFS_CONSTANT_STAGE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27, %3
  br label %58

40:                                               ; preds = %27
  %41 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %42 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @WINED3D_TSS_CONSTANT, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color* %10, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ATIFS_CONST_STAGE(i32 %52)
  %54 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %10, i32 0, i32 0
  %55 = call i32 @glSetFragmentShaderConstantATI(i32 %53, i32* %54)
  %56 = call i32 @GL_EXTCALL(i32 %55)
  %57 = call i32 @checkGLcall(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @STATE_TEXTURESTAGE(i32, i32) #1

declare dso_local i32 @wined3d_color_from_d3dcolor(%struct.wined3d_color*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glSetFragmentShaderConstantATI(i32, i32*) #1

declare dso_local i32 @ATIFS_CONST_STAGE(i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
