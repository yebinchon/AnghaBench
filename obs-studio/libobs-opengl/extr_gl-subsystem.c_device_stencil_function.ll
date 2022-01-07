; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_stencil_function.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_stencil_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"glStencilFuncSeparate\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"device_stencil_function (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_stencil_function(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @convert_gs_stencil_side(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @convert_gs_depth_test(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @glStencilFuncSeparate(i32 %13, i32 %14, i32 0, i32 -1)
  %16 = call i32 @gl_success(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @LOG_ERROR, align 4
  %20 = call i32 @blog(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @UNUSED_PARAMETER(i32* %22)
  ret void
}

declare dso_local i32 @convert_gs_stencil_side(i32) #1

declare dso_local i32 @convert_gs_depth_test(i32) #1

declare dso_local i32 @glStencilFuncSeparate(i32, i32, i32, i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
