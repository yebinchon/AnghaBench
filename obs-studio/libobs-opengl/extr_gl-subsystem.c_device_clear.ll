; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_clear.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec4 = type { i32, i32, i32, i32 }

@GS_CLEAR_COLOR = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GS_CLEAR_DEPTH = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@GS_CLEAR_STENCIL = common dso_local global i32 0, align 4
@GL_STENCIL_BUFFER_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"glClear\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"device_clear (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_clear(i32* %0, i32 %1, %struct.vec4* %2, float %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vec4*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.vec4* %2, %struct.vec4** %8, align 8
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GS_CLEAR_COLOR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %5
  %17 = load %struct.vec4*, %struct.vec4** %8, align 8
  %18 = getelementptr inbounds %struct.vec4, %struct.vec4* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vec4*, %struct.vec4** %8, align 8
  %21 = getelementptr inbounds %struct.vec4, %struct.vec4* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vec4*, %struct.vec4** %8, align 8
  %24 = getelementptr inbounds %struct.vec4, %struct.vec4* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vec4*, %struct.vec4** %8, align 8
  %27 = getelementptr inbounds %struct.vec4, %struct.vec4* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @glClearColor(i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %16, %5
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @GS_CLEAR_DEPTH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load float, float* %9, align 4
  %40 = call i32 @glClearDepth(float %39)
  %41 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @GS_CLEAR_STENCIL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @glClearStencil(i32 %50)
  %52 = load i32, i32* @GL_STENCIL_BUFFER_BIT, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @glClear(i32 %56)
  %58 = call i32 @gl_success(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @LOG_ERROR, align 4
  %62 = call i32 @blog(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @UNUSED_PARAMETER(i32* %64)
  ret void
}

declare dso_local i32 @glClearColor(i32, i32, i32, i32) #1

declare dso_local i32 @glClearDepth(float) #1

declare dso_local i32 @glClearStencil(i32) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
