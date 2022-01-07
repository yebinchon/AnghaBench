; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_pause_transform_feedback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_pause_transform_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64* }

@ARB_TRANSFORM_FEEDBACK2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"glPauseTransformFeedback\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot pause transform feedback operations.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, i64)* @context_pause_transform_feedback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_pause_transform_feedback(%struct.wined3d_context* %0, i64 %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %6, i32 0, i32 2
  %8 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  store %struct.wined3d_gl_info* %8, %struct.wined3d_gl_info** %5, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  br label %40

19:                                               ; preds = %13
  %20 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %21 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @ARB_TRANSFORM_FEEDBACK2, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = call i32 (...) @glPauseTransformFeedback()
  %29 = call i32 @GL_EXTCALL(i32 %28)
  %30 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %32 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %40

33:                                               ; preds = %19
  %34 = call i32 @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %39 = call i32 @context_end_transform_feedback(%struct.wined3d_context* %38)
  br label %40

40:                                               ; preds = %18, %27, %37, %33
  ret void
}

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glPauseTransformFeedback(...) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @context_end_transform_feedback(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
