; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_shtex_init_gl_tex.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_gl_shtex_init_gl_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [44 x i8] c"gl_shtex_init_gl_tex: failed to open device\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gl_shtex_init_gl_tex\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to generate texture\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@WGL_ACCESS_WRITE_DISCARD_NV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"gl_shtex_init_gl_tex: failed to register object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gl_shtex_init_gl_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_shtex_init_gl_tex() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 4), align 4
  %3 = call i32 @jimglDXOpenDeviceNV(i32 %2)
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 3), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 3), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @hlog(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %25

8:                                                ; preds = %0
  %9 = call i32 @glGenTextures(i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1))
  %10 = call i64 @gl_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %25

13:                                               ; preds = %8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 3), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 2), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 1), align 4
  %17 = load i32, i32* @GL_TEXTURE_2D, align 4
  %18 = load i32, i32* @WGL_ACCESS_WRITE_DISCARD_NV, align 4
  %19 = call i32 @jimglDXRegisterObjectNV(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @data, i32 0, i32 0), align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = call i32 @hlog(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %25

24:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %22, %12, %6
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @jimglDXOpenDeviceNV(i32) #1

declare dso_local i32 @hlog(i8*) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i64 @gl_error(i8*, i8*) #1

declare dso_local i32 @jimglDXRegisterObjectNV(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
