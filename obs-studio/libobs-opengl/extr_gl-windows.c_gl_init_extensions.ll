; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_init_extensions.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_init_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to load WGL entry functions.\00", align 1
@GLAD_WGL_ARB_pixel_format = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ARB_pixel_format\00", align 1
@GLAD_WGL_ARB_create_context = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"ARB_create_context\00", align 1
@GLAD_WGL_ARB_create_context_profile = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"ARB_create_context_profile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gl_init_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_init_extensions(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @gladLoadWGL(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @LOG_ERROR, align 4
  %9 = call i32 @blog(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load i32, i32* @GLAD_WGL_ARB_pixel_format, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 @required_extension_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %26

15:                                               ; preds = %10
  %16 = load i32, i32* @GLAD_WGL_ARB_create_context, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 @required_extension_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @GLAD_WGL_ARB_create_context_profile, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 @required_extension_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %26

25:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23, %18, %13, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @gladLoadWGL(i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @required_extension_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
