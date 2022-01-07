; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_texmatrix_np2.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_glsl_vertex_pipe_texmatrix_np2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32 }
%struct.wined3d_state = type { %struct.wined3d_texture** }
%struct.wined3d_texture = type { i32 }

@MAX_TEXTURES = common dso_local global i64 0, align 8
@WINED3D_TEXTURE_POW2_MAT_IDENT = common dso_local global i32 0, align 4
@WINED3D_SHADER_CONST_FFP_TEXMATRIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i64)* @glsl_vertex_pipe_texmatrix_np2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glsl_vertex_pipe_texmatrix_np2(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wined3d_texture*, align 8
  %9 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @STATE_SAMPLER(i32 0)
  %12 = sub i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %13, i32 0, i32 0
  %15 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.wined3d_texture*, %struct.wined3d_texture** %15, i64 %16
  %18 = load %struct.wined3d_texture*, %struct.wined3d_texture** %17, align 8
  store %struct.wined3d_texture* %18, %struct.wined3d_texture** %8, align 8
  %19 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %20 = icmp ne %struct.wined3d_texture* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %71

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @MAX_TEXTURES, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %71

27:                                               ; preds = %22
  %28 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %29 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WINED3D_TEXTURE_POW2_MAT_IDENT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4
  br i1 %34, label %45, label %36

36:                                               ; preds = %27
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %38 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  %42 = shl i32 1, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %36, %27
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 1, %50
  %52 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %53 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %65

56:                                               ; preds = %45
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  %59 = shl i32 1, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %62 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %56, %48
  %66 = load i32, i32* @WINED3D_SHADER_CONST_FFP_TEXMATRIX, align 4
  %67 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %68 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %21, %26, %65, %36
  ret void
}

declare dso_local i64 @STATE_SAMPLER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
