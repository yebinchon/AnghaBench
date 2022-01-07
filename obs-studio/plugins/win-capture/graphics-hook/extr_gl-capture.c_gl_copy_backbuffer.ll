; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_copy_backbuffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_copy_backbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@GL_DRAW_FRAMEBUFFER = common dso_local global i32 0, align 4
@data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"gl_copy_backbuffer\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to bind FBO\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to bind texture\00", align 1
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to set frame buffer\00", align 1
@GL_BACK = common dso_local global i32 0, align 4
@GL_INVALID_OPERATION = common dso_local global i64 0, align 8
@process_name = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Darkest.exe\00", align 1
@darkest_dungeon_fix = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to set draw buffer\00", align 1
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"failed to blit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gl_copy_backbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_copy_backbuffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @GL_DRAW_FRAMEBUFFER, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 4), align 4
  %5 = call i32 @glBindFramebuffer(i32 %3, i32 %4)
  %6 = call i64 @gl_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %52

9:                                                ; preds = %1
  %10 = load i32, i32* @GL_TEXTURE_2D, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @glBindTexture(i32 %10, i32 %11)
  %13 = call i64 @gl_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %52

16:                                               ; preds = %9
  %17 = load i32, i32* @GL_DRAW_FRAMEBUFFER, align 4
  %18 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %19 = load i32, i32* @GL_TEXTURE_2D, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @glFramebufferTexture2D(i32 %17, i32 %18, i32 %19, i32 %20, i32 0)
  %22 = call i64 @gl_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %52

25:                                               ; preds = %16
  %26 = load i32, i32* @GL_BACK, align 4
  %27 = call i32 @glReadBuffer(i32 %26)
  %28 = call i64 (...) @glGetError()
  %29 = load i64, i64* @GL_INVALID_OPERATION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @process_name, align 4
  %33 = call i64 @_strcmpi(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i1 [ false, %25 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* @darkest_dungeon_fix, align 4
  %38 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %39 = call i32 @glDrawBuffer(i32 %38)
  %40 = call i64 @gl_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %52

43:                                               ; preds = %35
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 3), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 2), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 0), align 4
  %48 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %49 = load i32, i32* @GL_LINEAR, align 4
  %50 = call i32 @glBlitFramebuffer(i32 0, i32 0, i32 %44, i32 %45, i32 0, i32 0, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = call i64 @gl_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %52

52:                                               ; preds = %43, %42, %24, %15, %8
  ret void
}

declare dso_local i32 @glBindFramebuffer(i32, i32) #1

declare dso_local i64 @gl_error(i8*, i8*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glFramebufferTexture2D(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glReadBuffer(i32) #1

declare dso_local i64 @glGetError(...) #1

declare dso_local i64 @_strcmpi(i32, i8*) #1

declare dso_local i32 @glDrawBuffer(i32) #1

declare dso_local i32 @glBlitFramebuffer(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
