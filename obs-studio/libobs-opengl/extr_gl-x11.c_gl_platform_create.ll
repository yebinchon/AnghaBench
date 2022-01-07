; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_gl_platform_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_gl_platform_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_platform = type { i32, i32, i32* }
%struct.TYPE_3__ = type { %struct.gl_platform* }

@XCBOwnsEventQueue = common dso_local global i32 0, align 4
@x_error_handler = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to create context!\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to make context current.\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to load OpenGL entry functions.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gl_platform* @gl_platform_create(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gl_platform*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.gl_platform* @bmalloc(i32 16)
  store %struct.gl_platform* %7, %struct.gl_platform** %5, align 8
  %8 = call i32* (...) @open_windowless_display()
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %62

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @XCBOwnsEventQueue, align 4
  %15 = call i32 @XSetEventQueueOwner(i32* %13, i32 %14)
  %16 = load i32, i32* @x_error_handler, align 4
  %17 = call i32 @XSetErrorHandler(i32 %16)
  %18 = load %struct.gl_platform*, %struct.gl_platform** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.gl_platform* %18, %struct.gl_platform** %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.gl_platform*, %struct.gl_platform** %5, align 8
  %23 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load %struct.gl_platform*, %struct.gl_platform** %5, align 8
  %25 = call i32 @gl_context_create(%struct.gl_platform* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %12
  %28 = load i32, i32* @LOG_ERROR, align 4
  %29 = call i32 @blog(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %58

30:                                               ; preds = %12
  %31 = load %struct.gl_platform*, %struct.gl_platform** %5, align 8
  %32 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.gl_platform*, %struct.gl_platform** %5, align 8
  %35 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gl_platform*, %struct.gl_platform** %5, align 8
  %38 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gl_platform*, %struct.gl_platform** %5, align 8
  %41 = getelementptr inbounds %struct.gl_platform, %struct.gl_platform* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @glXMakeContextCurrent(i32* %33, i32 %36, i32 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %30
  %46 = load i32, i32* @LOG_ERROR, align 4
  %47 = call i32 @blog(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %55

48:                                               ; preds = %30
  %49 = call i32 (...) @gladLoadGL()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @LOG_ERROR, align 4
  %53 = call i32 @blog(i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %59

54:                                               ; preds = %48
  br label %65

55:                                               ; preds = %45
  %56 = load %struct.gl_platform*, %struct.gl_platform** %5, align 8
  %57 = call i32 @gl_context_destroy(%struct.gl_platform* %56)
  br label %58

58:                                               ; preds = %55, %27
  br label %59

59:                                               ; preds = %58, %51
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @XCloseDisplay(i32* %60)
  br label %62

62:                                               ; preds = %59, %11
  %63 = load %struct.gl_platform*, %struct.gl_platform** %5, align 8
  %64 = call i32 @bfree(%struct.gl_platform* %63)
  store %struct.gl_platform* null, %struct.gl_platform** %5, align 8
  br label %65

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @UNUSED_PARAMETER(i32 %66)
  %68 = load %struct.gl_platform*, %struct.gl_platform** %5, align 8
  ret %struct.gl_platform* %68
}

declare dso_local %struct.gl_platform* @bmalloc(i32) #1

declare dso_local i32* @open_windowless_display(...) #1

declare dso_local i32 @XSetEventQueueOwner(i32*, i32) #1

declare dso_local i32 @XSetErrorHandler(i32) #1

declare dso_local i32 @gl_context_create(%struct.gl_platform*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @glXMakeContextCurrent(i32*, i32, i32, i32) #1

declare dso_local i32 @gladLoadGL(...) #1

declare dso_local i32 @gl_context_destroy(%struct.gl_platform*) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

declare dso_local i32 @bfree(%struct.gl_platform*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
