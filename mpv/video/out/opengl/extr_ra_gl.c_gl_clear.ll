; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_clear.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_tex = type { %struct.ra_tex_gl*, %struct.TYPE_4__ }
%struct.ra_tex_gl = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mp_rect = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i32)*, i32 (i32)*, i32 (float, float, float, float)*, i32 (i32)*, i32 (i64, i64, i64, i64)* }

@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_tex*, float*, %struct.mp_rect*)* @gl_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_clear(%struct.ra* %0, %struct.ra_tex* %1, float* %2, %struct.mp_rect* %3) #0 {
  %5 = alloca %struct.ra*, align 8
  %6 = alloca %struct.ra_tex*, align 8
  %7 = alloca float*, align 8
  %8 = alloca %struct.mp_rect*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.ra_tex_gl*, align 8
  store %struct.ra* %0, %struct.ra** %5, align 8
  store %struct.ra_tex* %1, %struct.ra_tex** %6, align 8
  store float* %2, float** %7, align 8
  store %struct.mp_rect* %3, %struct.mp_rect** %8, align 8
  %11 = load %struct.ra*, %struct.ra** %5, align 8
  %12 = call %struct.TYPE_5__* @ra_gl_get(%struct.ra* %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %9, align 8
  %13 = load %struct.ra_tex*, %struct.ra_tex** %6, align 8
  %14 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.ra_tex*, %struct.ra_tex** %6, align 8
  %19 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %18, i32 0, i32 0
  %20 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %19, align 8
  store %struct.ra_tex_gl* %20, %struct.ra_tex_gl** %10, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32)*, i32 (i32, i32)** %22, align 8
  %24 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %25 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %10, align 8
  %26 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %23(i32 %24, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = load i32 (i64, i64, i64, i64)*, i32 (i64, i64, i64, i64)** %30, align 8
  %32 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %33 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %36 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %39 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %42 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %46 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mp_rect*, %struct.mp_rect** %8, align 8
  %49 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = call i32 %31(i64 %34, i64 %37, i64 %44, i64 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i32 (i32)*, i32 (i32)** %54, align 8
  %56 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %57 = call i32 %55(i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32 (float, float, float, float)*, i32 (float, float, float, float)** %59, align 8
  %61 = load float*, float** %7, align 8
  %62 = getelementptr inbounds float, float* %61, i64 0
  %63 = load float, float* %62, align 4
  %64 = load float*, float** %7, align 8
  %65 = getelementptr inbounds float, float* %64, i64 1
  %66 = load float, float* %65, align 4
  %67 = load float*, float** %7, align 8
  %68 = getelementptr inbounds float, float* %67, i64 2
  %69 = load float, float* %68, align 4
  %70 = load float*, float** %7, align 8
  %71 = getelementptr inbounds float, float* %70, i64 3
  %72 = load float, float* %71, align 4
  %73 = call i32 %60(float %63, float %66, float %69, float %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32 (i32)*, i32 (i32)** %75, align 8
  %77 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %78 = call i32 %76(i32 %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32 (i32)*, i32 (i32)** %80, align 8
  %82 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %83 = call i32 %81(i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32 (i32, i32)*, i32 (i32, i32)** %85, align 8
  %87 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %88 = call i32 %86(i32 %87, i32 0)
  ret void
}

declare dso_local %struct.TYPE_5__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
