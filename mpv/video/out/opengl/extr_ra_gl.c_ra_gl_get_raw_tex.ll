; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_ra_gl_get_raw_tex.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_ra_gl_get_raw_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_tex = type { %struct.ra_tex_gl* }
%struct.ra_tex_gl = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_gl_get_raw_tex(%struct.ra* %0, %struct.ra_tex* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ra*, align 8
  %6 = alloca %struct.ra_tex*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ra_tex_gl*, align 8
  store %struct.ra* %0, %struct.ra** %5, align 8
  store %struct.ra_tex* %1, %struct.ra_tex** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.ra_tex*, %struct.ra_tex** %6, align 8
  %11 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %10, i32 0, i32 0
  %12 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %11, align 8
  store %struct.ra_tex_gl* %12, %struct.ra_tex_gl** %9, align 8
  %13 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %14 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %18 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
