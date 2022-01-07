; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_shtex_capture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_shtex_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GL_DRAW_FRAMEBUFFER_BINDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"gl_shtex_capture\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get last fbo\00", align 1
@GL_TEXTURE_BINDING_2D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to get last texture\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_DRAW_FRAMEBUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gl_shtex_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_shtex_capture() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 2), align 4
  %4 = call i32 @jimglDXLockObjectsNV(i32 %3, i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1))
  %5 = load i32, i32* @GL_DRAW_FRAMEBUFFER_BINDING, align 4
  %6 = call i32 @glGetIntegerv(i32 %5, i32* %1)
  %7 = call i64 @gl_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %29

10:                                               ; preds = %0
  %11 = load i32, i32* @GL_TEXTURE_BINDING_2D, align 4
  %12 = call i32 @glGetIntegerv(i32 %11, i32* %2)
  %13 = call i64 @gl_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %29

16:                                               ; preds = %10
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 3), align 4
  %18 = call i32 @gl_copy_backbuffer(i32 %17)
  %19 = load i32, i32* @GL_TEXTURE_2D, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @glBindTexture(i32 %19, i32 %20)
  %22 = load i32, i32* @GL_DRAW_FRAMEBUFFER, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @glBindFramebuffer(i32 %22, i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 2), align 4
  %26 = call i32 @jimglDXUnlockObjectsNV(i32 %25, i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1))
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 0), align 4
  %28 = call i32 @IDXGISwapChain_Present(i32 %27, i32 0, i32 0)
  br label %29

29:                                               ; preds = %16, %15, %9
  ret void
}

declare dso_local i32 @jimglDXLockObjectsNV(i32, i32, i32*) #1

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

declare dso_local i64 @gl_error(i8*, i8*) #1

declare dso_local i32 @gl_copy_backbuffer(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glBindFramebuffer(i32, i32) #1

declare dso_local i32 @jimglDXUnlockObjectsNV(i32, i32, i32*) #1

declare dso_local i32 @IDXGISwapChain_Present(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
