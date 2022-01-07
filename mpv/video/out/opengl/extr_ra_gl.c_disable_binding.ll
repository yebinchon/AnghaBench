; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_disable_binding.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_disable_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_renderpass = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ra_renderpass_input* }
%struct.ra_renderpass_input = type { i32, i64 }
%struct.ra_renderpass_input_val = type { i64, i64 }
%struct.TYPE_7__ = type { i32 (i32, i64, i32)*, i32 (i64, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32)*, i32 (i64)* }
%struct.ra_tex = type { %struct.TYPE_6__, %struct.ra_tex_gl* }
%struct.TYPE_6__ = type { i32 }
%struct.ra_tex_gl = type { i32, i32 }

@GL_TEXTURE0 = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i32 0, align 4
@GL_WRITE_ONLY = common dso_local global i32 0, align 4
@GL_SHADER_STORAGE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_renderpass*, %struct.ra_renderpass_input_val*)* @disable_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_binding(%struct.ra* %0, %struct.ra_renderpass* %1, %struct.ra_renderpass_input_val* %2) #0 {
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.ra_renderpass*, align 8
  %6 = alloca %struct.ra_renderpass_input_val*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.ra_renderpass_input*, align 8
  %9 = alloca %struct.ra_tex*, align 8
  %10 = alloca %struct.ra_tex_gl*, align 8
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.ra_renderpass* %1, %struct.ra_renderpass** %5, align 8
  store %struct.ra_renderpass_input_val* %2, %struct.ra_renderpass_input_val** %6, align 8
  %11 = load %struct.ra*, %struct.ra** %4, align 8
  %12 = call %struct.TYPE_7__* @ra_gl_get(%struct.ra* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.ra_renderpass*, %struct.ra_renderpass** %5, align 8
  %14 = getelementptr inbounds %struct.ra_renderpass, %struct.ra_renderpass* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %15, align 8
  %17 = load %struct.ra_renderpass_input_val*, %struct.ra_renderpass_input_val** %6, align 8
  %18 = getelementptr inbounds %struct.ra_renderpass_input_val, %struct.ra_renderpass_input_val* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %16, i64 %19
  store %struct.ra_renderpass_input* %20, %struct.ra_renderpass_input** %8, align 8
  %21 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %8, align 8
  %22 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %82 [
    i32 129, label %24
    i32 128, label %24
    i32 130, label %73
  ]

24:                                               ; preds = %3, %3
  %25 = load %struct.ra_renderpass_input_val*, %struct.ra_renderpass_input_val** %6, align 8
  %26 = getelementptr inbounds %struct.ra_renderpass_input_val, %struct.ra_renderpass_input_val* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ra_tex**
  %29 = load %struct.ra_tex*, %struct.ra_tex** %28, align 8
  store %struct.ra_tex* %29, %struct.ra_tex** %9, align 8
  %30 = load %struct.ra_tex*, %struct.ra_tex** %9, align 8
  %31 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %30, i32 0, i32 1
  %32 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %31, align 8
  store %struct.ra_tex_gl* %32, %struct.ra_tex_gl** %10, align 8
  %33 = load %struct.ra_tex*, %struct.ra_tex** %9, align 8
  %34 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %8, align 8
  %39 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %59

42:                                               ; preds = %24
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i32 (i64)*, i32 (i64)** %44, align 8
  %46 = load i64, i64* @GL_TEXTURE0, align 8
  %47 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %8, align 8
  %48 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 %45(i64 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32 (i32, i32)*, i32 (i32, i32)** %53, align 8
  %55 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %10, align 8
  %56 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %54(i32 %57, i32 0)
  br label %72

59:                                               ; preds = %24
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32 (i64, i32, i32, i32, i32, i32, i32)*, i32 (i64, i32, i32, i32, i32, i32, i32)** %61, align 8
  %63 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %8, align 8
  %64 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @GL_FALSE, align 4
  %67 = load i32, i32* @GL_WRITE_ONLY, align 4
  %68 = load %struct.ra_tex_gl*, %struct.ra_tex_gl** %10, align 8
  %69 = getelementptr inbounds %struct.ra_tex_gl, %struct.ra_tex_gl* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 %62(i64 %65, i32 0, i32 0, i32 %66, i32 0, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %59, %42
  br label %82

73:                                               ; preds = %3
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %75, align 8
  %77 = load i32, i32* @GL_SHADER_STORAGE_BUFFER, align 4
  %78 = load %struct.ra_renderpass_input*, %struct.ra_renderpass_input** %8, align 8
  %79 = getelementptr inbounds %struct.ra_renderpass_input, %struct.ra_renderpass_input* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 %76(i32 %77, i64 %80, i32 0)
  br label %82

82:                                               ; preds = %3, %73, %72
  ret void
}

declare dso_local %struct.TYPE_7__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
