; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_device = type { i32*, i32, i32 }

@GS_ERROR_FAIL = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"---------------------------------\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Initializing OpenGL...\00", align 1
@GL_VENDOR = common dso_local global i32 0, align 4
@GL_RENDERER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Loading up OpenGL on adapter %s %s\00", align 1
@GS_ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@GL_VERSION = common dso_local global i32 0, align 4
@GL_SHADING_LANGUAGE_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"OpenGL loaded successfully, version %s, shading language %s\00", align 1
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GS_SUCCESS = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"device_create (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_create(%struct.gs_device** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_device**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.gs_device** %0, %struct.gs_device*** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = call %struct.gs_device* @bzalloc(i32 16)
  store %struct.gs_device* %12, %struct.gs_device** %6, align 8
  %13 = load i32, i32* @GS_ERROR_FAIL, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @LOG_INFO, align 4
  %15 = call i32 (i32, i8*, ...) @blog(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @LOG_INFO, align 4
  %17 = call i32 (i32, i8*, ...) @blog(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.gs_device*, %struct.gs_device** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @gl_platform_create(%struct.gs_device* %18, i32 %19)
  %21 = load %struct.gs_device*, %struct.gs_device** %6, align 8
  %22 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.gs_device*, %struct.gs_device** %6, align 8
  %24 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %67

28:                                               ; preds = %2
  %29 = load i32, i32* @GL_VENDOR, align 4
  %30 = call i64 @glGetString(i32 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %8, align 8
  %32 = load i32, i32* @GL_RENDERER, align 4
  %33 = call i64 @glGetString(i32 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %9, align 8
  %35 = load i32, i32* @LOG_INFO, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 (i32, i8*, ...) @blog(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* %37)
  %39 = load %struct.gs_device*, %struct.gs_device** %6, align 8
  %40 = call i32 @gl_init_extensions(%struct.gs_device* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %28
  %43 = load i32, i32* @GS_ERROR_NOT_SUPPORTED, align 4
  store i32 %43, i32* %7, align 4
  br label %67

44:                                               ; preds = %28
  %45 = load i32, i32* @GL_VERSION, align 4
  %46 = call i64 @glGetString(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %10, align 8
  %48 = load i32, i32* @GL_SHADING_LANGUAGE_VERSION, align 4
  %49 = call i64 @glGetString(i32 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %11, align 8
  %51 = load i32, i32* @LOG_INFO, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 (i32, i8*, ...) @blog(i32 %51, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %52, i8* %53)
  %55 = load i32, i32* @GL_CULL_FACE, align 4
  %56 = call i32 @gl_enable(i32 %55)
  %57 = load %struct.gs_device*, %struct.gs_device** %6, align 8
  %58 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %57, i32 0, i32 1
  %59 = call i32 @gl_gen_vertex_arrays(i32 1, i32* %58)
  %60 = load %struct.gs_device*, %struct.gs_device** %6, align 8
  %61 = call i32 @device_leave_context(%struct.gs_device* %60)
  %62 = load %struct.gs_device*, %struct.gs_device** %6, align 8
  %63 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.gs_device*, %struct.gs_device** %6, align 8
  %65 = load %struct.gs_device**, %struct.gs_device*** %4, align 8
  store %struct.gs_device* %64, %struct.gs_device** %65, align 8
  %66 = load i32, i32* @GS_SUCCESS, align 4
  store i32 %66, i32* %3, align 4
  br label %74

67:                                               ; preds = %42, %27
  %68 = load i32, i32* @LOG_ERROR, align 4
  %69 = call i32 (i32, i8*, ...) @blog(i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %70 = load %struct.gs_device*, %struct.gs_device** %6, align 8
  %71 = call i32 @bfree(%struct.gs_device* %70)
  %72 = load %struct.gs_device**, %struct.gs_device*** %4, align 8
  store %struct.gs_device* null, %struct.gs_device** %72, align 8
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %67, %44
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.gs_device* @bzalloc(i32) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @gl_platform_create(%struct.gs_device*, i32) #1

declare dso_local i64 @glGetString(i32) #1

declare dso_local i32 @gl_init_extensions(%struct.gs_device*) #1

declare dso_local i32 @gl_enable(i32) #1

declare dso_local i32 @gl_gen_vertex_arrays(i32, i32*) #1

declare dso_local i32 @device_leave_context(%struct.gs_device*) #1

declare dso_local i32 @bfree(%struct.gs_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
