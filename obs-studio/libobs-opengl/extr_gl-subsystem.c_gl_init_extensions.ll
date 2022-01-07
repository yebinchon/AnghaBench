; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_gl_init_extensions.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_gl_init_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_device = type { i32 }

@GLAD_GL_VERSION_3_3 = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"obs-studio requires OpenGL version 3.3 or higher.\00", align 1
@GL_TEXTURE_CUBE_MAP_SEAMLESS = common dso_local global i32 0, align 4
@GLAD_GL_VERSION_4_3 = common dso_local global i64 0, align 8
@GLAD_GL_ARB_copy_image = common dso_local global i64 0, align 8
@COPY_TYPE_ARB = common dso_local global i32 0, align 4
@GLAD_GL_NV_copy_image = common dso_local global i64 0, align 8
@COPY_TYPE_NV = common dso_local global i32 0, align 4
@COPY_TYPE_FBO_BLIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_device*)* @gl_init_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_init_extensions(%struct.gs_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_device*, align 8
  store %struct.gs_device* %0, %struct.gs_device** %3, align 8
  %4 = load i32, i32* @GLAD_GL_VERSION_3_3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @LOG_ERROR, align 4
  %8 = call i32 @blog(i32 %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %35

9:                                                ; preds = %1
  %10 = call i32 (...) @gl_enable_debug()
  %11 = load i32, i32* @GL_TEXTURE_CUBE_MAP_SEAMLESS, align 4
  %12 = call i32 @gl_enable(i32 %11)
  %13 = load i64, i64* @GLAD_GL_VERSION_4_3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load i64, i64* @GLAD_GL_ARB_copy_image, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15, %9
  %19 = load i32, i32* @COPY_TYPE_ARB, align 4
  %20 = load %struct.gs_device*, %struct.gs_device** %3, align 8
  %21 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load i64, i64* @GLAD_GL_NV_copy_image, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @COPY_TYPE_NV, align 4
  %27 = load %struct.gs_device*, %struct.gs_device** %3, align 8
  %28 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @COPY_TYPE_FBO_BLIT, align 4
  %31 = load %struct.gs_device*, %struct.gs_device** %3, align 8
  %32 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %18
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %6
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @gl_enable_debug(...) #1

declare dso_local i32 @gl_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
