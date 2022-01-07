; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_blit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_tex = type { %struct.ra_tex_gl*, %struct.TYPE_4__ }
%struct.ra_tex_gl = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mp_rect = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* }

@GL_READ_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_DRAW_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_tex*, %struct.ra_tex*, %struct.mp_rect*, %struct.mp_rect*)* @gl_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_blit(%struct.ra* %0, %struct.ra_tex* %1, %struct.ra_tex* %2, %struct.mp_rect* %3, %struct.mp_rect* %4) #0 {
  %6 = alloca %struct.ra*, align 8
  %7 = alloca %struct.ra_tex*, align 8
  %8 = alloca %struct.ra_tex*, align 8
  %9 = alloca %struct.mp_rect*, align 8
  %10 = alloca %struct.mp_rect*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.ra_tex_gl*, align 8
  %13 = alloca %struct.ra_tex_gl*, align 8
  store %struct.ra* %0, %struct.ra** %6, align 8
  store %struct.ra_tex* %1, %struct.ra_tex** %7, align 8
  store %struct.ra_tex* %2, %struct.ra_tex** %8, align 8
  store %struct.mp_rect* %3, %struct.mp_rect** %9, align 8
  store %struct.mp_rect* %4, %struct.mp_rect** %10, align 8
  %14 = load %struct.ra*, %struct.ra** %6, align 8
  %15 = call %struct.TYPE_5__* @ra_gl_get(%struct.ra* %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %11, align 8
  %16 = load %struct.ra_tex*, %struct.ra_tex** %8, align 8
  %17 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %22 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.ra_tex*, %struct.ra_tex** %8, align 8
  %27 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %26, i32 0, i32 0
  %28 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %27, align 8
  store %struct.ra_tex_gl* %28, %struct.ra_tex_gl** %12, align 8
  %29 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %30 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %29, i32 0, i32 0
  %31 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %30, align 8
  store %struct.ra_tex_gl* %31, %struct.ra_tex_gl** %13, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = load i32, i32* @GL_READ_FRAMEBUFFER, align 4
  %36 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %12, align 8
  %37 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %34(i32 %35, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = load i32, i32* @GL_DRAW_FRAMEBUFFER, align 4
  %44 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %13, align 8
  %45 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %42(i32 %43, i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %49, align 8
  %51 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %52 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %55 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %58 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mp_rect*, %struct.mp_rect** %10, align 8
  %61 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %64 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %67 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %70 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mp_rect*, %struct.mp_rect** %9, align 8
  %73 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %76 = load i32, i32* @GL_NEAREST, align 4
  %77 = call i32 %50(i32 %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32 (i32, i32)*, i32 (i32, i32)** %79, align 8
  %81 = load i32, i32* @GL_READ_FRAMEBUFFER, align 4
  %82 = call i32 %80(i32 %81, i32 0)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32 (i32, i32)*, i32 (i32, i32)** %84, align 8
  %86 = load i32, i32* @GL_DRAW_FRAMEBUFFER, align 4
  %87 = call i32 %85(i32 %86, i32 0)
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
