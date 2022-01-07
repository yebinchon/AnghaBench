; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_tex_download.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_tex_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_tex_download_params = type { i32, i32, %struct.ra_tex* }
%struct.ra_tex = type { %struct.TYPE_2__, %struct.ra_tex_gl* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ra_tex_gl = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra*, %struct.ra_tex_download_params*)* @gl_tex_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_tex_download(%struct.ra* %0, %struct.ra_tex_download_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.ra_tex_download_params*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ra_tex*, align 8
  %8 = alloca %struct.ra_tex_gl*, align 8
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.ra_tex_download_params* %1, %struct.ra_tex_download_params** %5, align 8
  %9 = load %struct.ra*, %struct.ra** %4, align 8
  %10 = call i32* @ra_gl_get(%struct.ra* %9)
  store i32* %10, i32** %6, align 8
  %11 = load %struct.ra_tex_download_params*, %struct.ra_tex_download_params** %5, align 8
  %12 = getelementptr inbounds %struct.ra_tex_download_params, %struct.ra_tex_download_params* %11, i32 0, i32 2
  %13 = load %struct.ra_tex*, %struct.ra_tex** %12, align 8
  store %struct.ra_tex* %13, %struct.ra_tex** %7, align 8
  %14 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %15 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %14, i32 0, i32 1
  %16 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %15, align 8
  store %struct.ra_tex_gl* %16, %struct.ra_tex_gl** %8, align 8
  %17 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %18 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %25 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %28 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %8, align 8
  %31 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %34 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ra_tex*, %struct.ra_tex** %7, align 8
  %38 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ra_tex_download_params*, %struct.ra_tex_download_params** %5, align 8
  %42 = getelementptr inbounds %struct.ra_tex_download_params, %struct.ra_tex_download_params* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ra_tex_download_params*, %struct.ra_tex_download_params** %5, align 8
  %45 = getelementptr inbounds %struct.ra_tex_download_params, %struct.ra_tex_download_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @gl_read_fbo_contents(i32* %23, i32 %26, i32 1, i32 %29, i32 %32, i32 %36, i32 %40, i32 %43, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %22, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @gl_read_fbo_contents(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
