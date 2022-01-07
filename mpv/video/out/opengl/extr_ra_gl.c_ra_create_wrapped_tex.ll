; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_ra_create_wrapped_tex.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_ra_create_wrapped_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_tex = type { %struct.ra_tex_gl* }
%struct.ra_tex_gl = type { i32 }
%struct.ra = type { i32 }
%struct.ra_tex_params = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ra_tex* @ra_create_wrapped_tex(%struct.ra* %0, %struct.ra_tex_params* %1, i32 %2) #0 {
  %4 = alloca %struct.ra_tex*, align 8
  %5 = alloca %struct.ra*, align 8
  %6 = alloca %struct.ra_tex_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ra_tex*, align 8
  %9 = alloca %struct.ra_tex_gl*, align 8
  store %struct.ra* %0, %struct.ra** %5, align 8
  store %struct.ra_tex_params* %1, %struct.ra_tex_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ra*, %struct.ra** %5, align 8
  %11 = load %struct.ra_tex_params*, %struct.ra_tex_params** %6, align 8
  %12 = call %struct.ra_tex* @gl_tex_create_blank(%struct.ra* %10, %struct.ra_tex_params* %11)
  store %struct.ra_tex* %12, %struct.ra_tex** %8, align 8
  %13 = load %struct.ra_tex*, %struct.ra_tex** %8, align 8
  %14 = icmp ne %struct.ra_tex* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.ra_tex* null, %struct.ra_tex** %4, align 8
  br label %24

16:                                               ; preds = %3
  %17 = load %struct.ra_tex*, %struct.ra_tex** %8, align 8
  %18 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %17, i32 0, i32 0
  %19 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %18, align 8
  store %struct.ra_tex_gl* %19, %struct.ra_tex_gl** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %9, align 8
  %22 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ra_tex*, %struct.ra_tex** %8, align 8
  store %struct.ra_tex* %23, %struct.ra_tex** %4, align 8
  br label %24

24:                                               ; preds = %16, %15
  %25 = load %struct.ra_tex*, %struct.ra_tex** %4, align 8
  ret %struct.ra_tex* %25
}

declare dso_local %struct.ra_tex* @gl_tex_create_blank(%struct.ra*, %struct.ra_tex_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
