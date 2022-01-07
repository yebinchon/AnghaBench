; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_uniform_vec3.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_uniform_vec3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_cache = type { i32 }
%struct.sc_uniform = type { i8*, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { float* }
%struct.TYPE_4__ = type { i32, i32 }

@RA_VARTYPE_FLOAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vec3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_sc_uniform_vec3(%struct.gl_shader_cache* %0, i8* %1, float* %2) #0 {
  %4 = alloca %struct.gl_shader_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.sc_uniform*, align 8
  store %struct.gl_shader_cache* %0, %struct.gl_shader_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  store float* %2, float** %6, align 8
  %8 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.sc_uniform* @find_uniform(%struct.gl_shader_cache* %8, i8* %9)
  store %struct.sc_uniform* %10, %struct.sc_uniform** %7, align 8
  %11 = load i32, i32* @RA_VARTYPE_FLOAT, align 4
  %12 = load %struct.sc_uniform*, %struct.sc_uniform** %7, align 8
  %13 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load %struct.sc_uniform*, %struct.sc_uniform** %7, align 8
  %16 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 3, i32* %17, align 8
  %18 = load %struct.sc_uniform*, %struct.sc_uniform** %7, align 8
  %19 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %4, align 8
  %21 = load %struct.sc_uniform*, %struct.sc_uniform** %7, align 8
  %22 = call i32 @update_uniform_params(%struct.gl_shader_cache* %20, %struct.sc_uniform* %21)
  %23 = load float*, float** %6, align 8
  %24 = getelementptr inbounds float, float* %23, i64 0
  %25 = load float, float* %24, align 4
  %26 = load %struct.sc_uniform*, %struct.sc_uniform** %7, align 8
  %27 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load float*, float** %28, align 8
  %30 = getelementptr inbounds float, float* %29, i64 0
  store float %25, float* %30, align 4
  %31 = load float*, float** %6, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  %33 = load float, float* %32, align 4
  %34 = load %struct.sc_uniform*, %struct.sc_uniform** %7, align 8
  %35 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  store float %33, float* %38, align 4
  %39 = load float*, float** %6, align 8
  %40 = getelementptr inbounds float, float* %39, i64 2
  %41 = load float, float* %40, align 4
  %42 = load %struct.sc_uniform*, %struct.sc_uniform** %7, align 8
  %43 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 2
  store float %41, float* %46, align 4
  ret void
}

declare dso_local %struct.sc_uniform* @find_uniform(%struct.gl_shader_cache*, i8*) #1

declare dso_local i32 @update_uniform_params(%struct.gl_shader_cache*, %struct.sc_uniform*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
