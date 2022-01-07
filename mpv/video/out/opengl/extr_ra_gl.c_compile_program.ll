; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_compile_program.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_ra_gl.c_compile_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_renderpass_params = type { i64, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i64)*, i32 (i64, i32, i32)*, i64 (...)* }

@RA_RENDERPASS_TYPE_COMPUTE = common dso_local global i64 0, align 8
@GL_COMPUTE_SHADER = common dso_local global i32 0, align 4
@RA_RENDERPASS_TYPE_RASTER = common dso_local global i64 0, align 8
@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@GL_FRAGMENT_SHADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ra*, %struct.ra_renderpass_params*)* @compile_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compile_program(%struct.ra* %0, %struct.ra_renderpass_params* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_renderpass_params*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.ra_renderpass_params* %1, %struct.ra_renderpass_params** %4, align 8
  %9 = load %struct.ra*, %struct.ra** %3, align 8
  %10 = call %struct.TYPE_5__* @ra_gl_get(%struct.ra* %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i64 (...)*, i64 (...)** %12, align 8
  %14 = call i64 (...) %13()
  store i64 %14, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %15 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %4, align 8
  %16 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RA_RENDERPASS_TYPE_COMPUTE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.ra*, %struct.ra** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @GL_COMPUTE_SHADER, align 4
  %24 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %4, align 8
  %25 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @compile_attach_shader(%struct.ra* %21, i64 %22, i32 %23, i32 %26, i32* %7)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %4, align 8
  %30 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RA_RENDERPASS_TYPE_RASTER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load %struct.ra*, %struct.ra** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %38 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %4, align 8
  %39 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @compile_attach_shader(%struct.ra* %35, i64 %36, i32 %37, i32 %40, i32* %7)
  %42 = load %struct.ra*, %struct.ra** %3, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %45 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %4, align 8
  %46 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @compile_attach_shader(%struct.ra* %42, i64 %43, i32 %44, i32 %47, i32* %7)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %70, %34
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %4, align 8
  %52 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ra_renderpass_params*, %struct.ra_renderpass_params** %4, align 8
  %62 = getelementptr inbounds %struct.ra_renderpass_params, %struct.ra_renderpass_params* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %58(i64 %59, i32 %60, i32 %68)
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %49

73:                                               ; preds = %49
  br label %74

74:                                               ; preds = %73, %28
  %75 = load %struct.ra*, %struct.ra** %3, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @link_shader(%struct.ra* %75, i64 %76, i32* %7)
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (i64)*, i32 (i64)** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 %83(i64 %84)
  store i64 0, i64* %6, align 8
  br label %86

86:                                               ; preds = %80, %74
  %87 = load i64, i64* %6, align 8
  ret i64 %87
}

declare dso_local %struct.TYPE_5__* @ra_gl_get(%struct.ra*) #1

declare dso_local i32 @compile_attach_shader(%struct.ra*, i64, i32, i32, i32*) #1

declare dso_local i32 @link_shader(%struct.ra*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
