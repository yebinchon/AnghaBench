; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_init_gl_functions.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_init_gl_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"wglGetProcAddress\00", align 1
@jimglGetProcAddress = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"init_gl_functions: failed to get wglGetProcAddress\00", align 1
@jimglMakeCurrent = common dso_local global i32 0, align 4
@wglMakeCurrent = common dso_local global i32 0, align 4
@jimglGetCurrentDC = common dso_local global i32 0, align 4
@wglGetCurrentDC = common dso_local global i32 0, align 4
@jimglGetCurrentContext = common dso_local global i32 0, align 4
@wglGetCurrentContext = common dso_local global i32 0, align 4
@glTexImage2D = common dso_local global i32 0, align 4
@glReadBuffer = common dso_local global i32 0, align 4
@glGetTexImage = common dso_local global i32 0, align 4
@glDrawBuffer = common dso_local global i32 0, align 4
@glGetError = common dso_local global i32 0, align 4
@glBufferData = common dso_local global i32 0, align 4
@glDeleteBuffers = common dso_local global i32 0, align 4
@glDeleteTextures = common dso_local global i32 0, align 4
@glGenBuffers = common dso_local global i32 0, align 4
@glGenTextures = common dso_local global i32 0, align 4
@glMapBuffer = common dso_local global i32 0, align 4
@glUnmapBuffer = common dso_local global i32 0, align 4
@glBindBuffer = common dso_local global i32 0, align 4
@glGetIntegerv = common dso_local global i32 0, align 4
@glBindTexture = common dso_local global i32 0, align 4
@glGenFramebuffers = common dso_local global i32 0, align 4
@glDeleteFramebuffers = common dso_local global i32 0, align 4
@glBindFramebuffer = common dso_local global i32 0, align 4
@glBlitFramebuffer = common dso_local global i32 0, align 4
@glFramebufferTexture2D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_gl_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_gl_functions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  %3 = call i32 @base_get_proc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* @jimglGetProcAddress, align 4
  %4 = load i32, i32* @jimglGetProcAddress, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @hlog(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %80

8:                                                ; preds = %0
  %9 = load i32, i32* @jimglMakeCurrent, align 4
  %10 = load i32, i32* @wglMakeCurrent, align 4
  %11 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %9, i32 %10)
  %12 = load i32, i32* @jimglGetCurrentDC, align 4
  %13 = load i32, i32* @wglGetCurrentDC, align 4
  %14 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %12, i32 %13)
  %15 = load i32, i32* @jimglGetCurrentContext, align 4
  %16 = load i32, i32* @wglGetCurrentContext, align 4
  %17 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %15, i32 %16)
  %18 = load i32, i32* @glTexImage2D, align 4
  %19 = load i32, i32* @glTexImage2D, align 4
  %20 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %18, i32 %19)
  %21 = load i32, i32* @glReadBuffer, align 4
  %22 = load i32, i32* @glReadBuffer, align 4
  %23 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %21, i32 %22)
  %24 = load i32, i32* @glGetTexImage, align 4
  %25 = load i32, i32* @glGetTexImage, align 4
  %26 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %24, i32 %25)
  %27 = load i32, i32* @glDrawBuffer, align 4
  %28 = load i32, i32* @glDrawBuffer, align 4
  %29 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %27, i32 %28)
  %30 = load i32, i32* @glGetError, align 4
  %31 = load i32, i32* @glGetError, align 4
  %32 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %30, i32 %31)
  %33 = load i32, i32* @glBufferData, align 4
  %34 = load i32, i32* @glBufferData, align 4
  %35 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %33, i32 %34)
  %36 = load i32, i32* @glDeleteBuffers, align 4
  %37 = load i32, i32* @glDeleteBuffers, align 4
  %38 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %36, i32 %37)
  %39 = load i32, i32* @glDeleteTextures, align 4
  %40 = load i32, i32* @glDeleteTextures, align 4
  %41 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %39, i32 %40)
  %42 = load i32, i32* @glGenBuffers, align 4
  %43 = load i32, i32* @glGenBuffers, align 4
  %44 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %42, i32 %43)
  %45 = load i32, i32* @glGenTextures, align 4
  %46 = load i32, i32* @glGenTextures, align 4
  %47 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %45, i32 %46)
  %48 = load i32, i32* @glMapBuffer, align 4
  %49 = load i32, i32* @glMapBuffer, align 4
  %50 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %48, i32 %49)
  %51 = load i32, i32* @glUnmapBuffer, align 4
  %52 = load i32, i32* @glUnmapBuffer, align 4
  %53 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %51, i32 %52)
  %54 = load i32, i32* @glBindBuffer, align 4
  %55 = load i32, i32* @glBindBuffer, align 4
  %56 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %54, i32 %55)
  %57 = load i32, i32* @glGetIntegerv, align 4
  %58 = load i32, i32* @glGetIntegerv, align 4
  %59 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %57, i32 %58)
  %60 = load i32, i32* @glBindTexture, align 4
  %61 = load i32, i32* @glBindTexture, align 4
  %62 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %60, i32 %61)
  %63 = load i32, i32* @glGenFramebuffers, align 4
  %64 = load i32, i32* @glGenFramebuffers, align 4
  %65 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %63, i32 %64)
  %66 = load i32, i32* @glDeleteFramebuffers, align 4
  %67 = load i32, i32* @glDeleteFramebuffers, align 4
  %68 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %66, i32 %67)
  %69 = load i32, i32* @glBindFramebuffer, align 4
  %70 = load i32, i32* @glBindFramebuffer, align 4
  %71 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %69, i32 %70)
  %72 = load i32, i32* @glBlitFramebuffer, align 4
  %73 = load i32, i32* @glBlitFramebuffer, align 4
  %74 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %72, i32 %73)
  %75 = load i32, i32* @glFramebufferTexture2D, align 4
  %76 = load i32, i32* @glFramebufferTexture2D, align 4
  %77 = call i32 @GET_PROC(i32 (...)* bitcast (i32 ()* @init_gl_functions to i32 (...)*), i32 %75, i32 %76)
  %78 = call i32 (...) @init_nv_functions()
  %79 = load i32, i32* %2, align 4
  store i32 %79, i32* %1, align 4
  br label %80

80:                                               ; preds = %8, %6
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local i32 @base_get_proc(i8*) #1

declare dso_local i32 @hlog(i8*) #1

declare dso_local i32 @GET_PROC(i32 (...)*, i32, i32) #1

declare dso_local i32 @init_nv_functions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
