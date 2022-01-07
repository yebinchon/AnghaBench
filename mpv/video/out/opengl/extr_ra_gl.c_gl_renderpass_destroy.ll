; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_renderpass_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_gl_renderpass_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_renderpass = type { i32, i32, %struct.ra_renderpass* }
%struct.TYPE_3__ = type { i32 (i32)* }
%struct.ra_renderpass_gl = type { i32, i32, %struct.ra_renderpass_gl* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_renderpass*)* @gl_renderpass_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_renderpass_destroy(%struct.ra* %0, %struct.ra_renderpass* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_renderpass*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ra_renderpass_gl*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.ra_renderpass* %1, %struct.ra_renderpass** %4, align 8
  %7 = load %struct.ra*, %struct.ra** %3, align 8
  %8 = call %struct.TYPE_3__* @ra_gl_get(%struct.ra* %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.ra_renderpass*, %struct.ra_renderpass** %4, align 8
  %10 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %9, i32 0, i32 2
  %11 = load %struct.ra_renderpass*, %struct.ra_renderpass** %10, align 8
  %12 = bitcast %struct.ra_renderpass* %11 to %struct.ra_renderpass_gl*
  store %struct.ra_renderpass_gl* %12, %struct.ra_renderpass_gl** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.ra_renderpass_gl*, %struct.ra_renderpass_gl** %6, align 8
  %17 = getelementptr inbounds %struct.ra_renderpass_gl, %struct.ra_renderpass_gl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 %15(i32 %18)
  %20 = load %struct.ra_renderpass_gl*, %struct.ra_renderpass_gl** %6, align 8
  %21 = getelementptr inbounds %struct.ra_renderpass_gl, %struct.ra_renderpass_gl* %20, i32 0, i32 0
  %22 = call i32 @gl_vao_uninit(i32* %21)
  %23 = load %struct.ra_renderpass_gl*, %struct.ra_renderpass_gl** %6, align 8
  %24 = call i32 @talloc_free(%struct.ra_renderpass_gl* %23)
  %25 = load %struct.ra_renderpass*, %struct.ra_renderpass** %4, align 8
  %26 = bitcast %struct.ra_renderpass* %25 to %struct.ra_renderpass_gl*
  %27 = call i32 @talloc_free(%struct.ra_renderpass_gl* %26)
  ret void
}

declare dso_local %struct.TYPE_3__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @gl_vao_uninit(i32*) #1

declare dso_local i32 @talloc_free(%struct.ra_renderpass_gl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
