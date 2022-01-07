; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_np2fixup_constants.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_load_np2fixup_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glsl_ps_program = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { %struct.wined3d_texture** }
%struct.wined3d_texture = type { float* }
%struct.anon = type { float, float }

@MAX_FRAGMENT_SAMPLERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Nonexistent texture is flagged for NP2 texcoord fixup.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glsl_ps_program*, %struct.wined3d_gl_info*, %struct.wined3d_state*)* @shader_glsl_load_np2fixup_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_load_np2fixup_constants(%struct.glsl_ps_program* %0, %struct.wined3d_gl_info* %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca %struct.glsl_ps_program*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wined3d_texture*, align 8
  %12 = alloca i8, align 1
  store %struct.glsl_ps_program* %0, %struct.glsl_ps_program** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %6, align 8
  %13 = load i32, i32* @MAX_FRAGMENT_SAMPLERS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca %struct.anon, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.glsl_ps_program*, %struct.glsl_ps_program** %4, align 8
  %18 = getelementptr inbounds %struct.glsl_ps_program, %struct.glsl_ps_program* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %65, %3
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %22
  %26 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %27 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %26, i32 0, i32 0
  %28 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.wined3d_texture*, %struct.wined3d_texture** %28, i64 %30
  %32 = load %struct.wined3d_texture*, %struct.wined3d_texture** %31, align 8
  store %struct.wined3d_texture* %32, %struct.wined3d_texture** %11, align 8
  %33 = load %struct.glsl_ps_program*, %struct.glsl_ps_program** %4, align 8
  %34 = getelementptr inbounds %struct.glsl_ps_program, %struct.glsl_ps_program* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %12, align 1
  %42 = load %struct.wined3d_texture*, %struct.wined3d_texture** %11, align 8
  %43 = icmp ne %struct.wined3d_texture* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %25
  %45 = call i32 @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %65

46:                                               ; preds = %25
  %47 = load %struct.wined3d_texture*, %struct.wined3d_texture** %11, align 8
  %48 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %47, i32 0, i32 0
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  %51 = load float, float* %50, align 4
  %52 = load i8, i8* %12, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %16, i64 %53
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 0
  store float %51, float* %55, align 8
  %56 = load %struct.wined3d_texture*, %struct.wined3d_texture** %11, align 8
  %57 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %56, i32 0, i32 0
  %58 = load float*, float** %57, align 8
  %59 = getelementptr inbounds float, float* %58, i64 5
  %60 = load float, float* %59, align 4
  %61 = load i8, i8* %12, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %16, i64 %62
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 1
  store float %60, float* %64, align 4
  br label %65

65:                                               ; preds = %46, %44
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %22

70:                                               ; preds = %22
  %71 = load %struct.glsl_ps_program*, %struct.glsl_ps_program** %4, align 8
  %72 = getelementptr inbounds %struct.glsl_ps_program, %struct.glsl_ps_program* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.glsl_ps_program*, %struct.glsl_ps_program** %4, align 8
  %75 = getelementptr inbounds %struct.glsl_ps_program, %struct.glsl_ps_program* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %16, i64 0
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 0
  %81 = call i32 @glUniform4fv(i32 %73, i32 %78, float* %80)
  %82 = call i32 @GL_EXTCALL(i32 %81)
  %83 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ERR(i8*) #2

declare dso_local i32 @GL_EXTCALL(i32) #2

declare dso_local i32 @glUniform4fv(i32, i32, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
