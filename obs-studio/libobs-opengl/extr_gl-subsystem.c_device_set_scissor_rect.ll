; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_set_scissor_rect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_set_scissor_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_rect = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"glScissor\00", align 1
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"device_set_scissor_rect (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_set_scissor_rect(i32* %0, %struct.gs_rect* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gs_rect*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.gs_rect* %1, %struct.gs_rect** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @UNUSED_PARAMETER(i32* %5)
  %7 = load %struct.gs_rect*, %struct.gs_rect** %4, align 8
  %8 = icmp ne %struct.gs_rect* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = load %struct.gs_rect*, %struct.gs_rect** %4, align 8
  %11 = getelementptr inbounds %struct.gs_rect, %struct.gs_rect* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gs_rect*, %struct.gs_rect** %4, align 8
  %14 = getelementptr inbounds %struct.gs_rect, %struct.gs_rect* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gs_rect*, %struct.gs_rect** %4, align 8
  %17 = getelementptr inbounds %struct.gs_rect, %struct.gs_rect* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gs_rect*, %struct.gs_rect** %4, align 8
  %20 = getelementptr inbounds %struct.gs_rect, %struct.gs_rect* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @glScissor(i32 %12, i32 %15, i32 %18, i32 %21)
  %23 = call i64 @gl_success(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %9
  %26 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %27 = call i64 @gl_enable(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %40

30:                                               ; preds = %25, %9
  br label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %33 = call i64 @gl_disable(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %40

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* @LOG_ERROR, align 4
  %39 = call i32 @blog(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %35, %29
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @glScissor(i32, i32, i32, i32) #1

declare dso_local i64 @gl_success(i8*) #1

declare dso_local i64 @gl_enable(i32) #1

declare dso_local i64 @gl_disable(i32) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
