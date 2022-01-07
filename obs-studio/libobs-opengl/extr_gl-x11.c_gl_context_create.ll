; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_gl_context_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_gl_context_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_platform = type { i32, i32*, i64 }

@GLAD_GLX_ARB_create_context = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ARB_GLX_create_context not supported!\00", align 1
@ctx_visual_attribs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to create OpenGL frame buffer config\00", align 1
@ctx_attribs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to create OpenGL context.\00", align 1
@ctx_pbuffer_attribs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to create OpenGL pbuffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_platform*)* @gl_context_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_context_create(%struct.gl_platform* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gl_platform*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gl_platform* %0, %struct.gl_platform** %3, align 8
  %9 = load %struct.gl_platform*, %struct.gl_platform** %3, align 8
  %10 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @GLAD_GLX_ARB_create_context, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @LOG_ERROR, align 4
  %16 = call i32 @blog(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @DefaultScreen(i32* %19)
  %21 = load i32, i32* @ctx_visual_attribs, align 4
  %22 = call i32* @glXChooseFBConfig(i32* %18, i32 %20, i32 %21, i32* %5)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @LOG_ERROR, align 4
  %27 = call i32 @blog(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

28:                                               ; preds = %17
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ctx_attribs, align 4
  %34 = call i64 @glXCreateContextAttribsARB(i32* %29, i32 %32, i32* null, i32 1, i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @LOG_ERROR, align 4
  %39 = call i32 @blog(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %63

40:                                               ; preds = %28
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.gl_platform*, %struct.gl_platform** %3, align 8
  %43 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.gl_platform*, %struct.gl_platform** %3, align 8
  %46 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ctx_pbuffer_attribs, align 4
  %52 = call i32 @glXCreatePbuffer(i32* %47, i32 %50, i32 %51)
  %53 = load %struct.gl_platform*, %struct.gl_platform** %3, align 8
  %54 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.gl_platform*, %struct.gl_platform** %3, align 8
  %56 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %40
  %60 = load i32, i32* @LOG_ERROR, align 4
  %61 = call i32 @blog(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %63

62:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %59, %37
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @XFree(i32* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @XSync(i32* %66, i32 0)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %25, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32* @glXChooseFBConfig(i32*, i32, i32, i32*) #1

declare dso_local i32 @DefaultScreen(i32*) #1

declare dso_local i64 @glXCreateContextAttribsARB(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @glXCreatePbuffer(i32*, i32, i32) #1

declare dso_local i32 @XFree(i32*) #1

declare dso_local i32 @XSync(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
