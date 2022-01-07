; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_append_transform_feedback_skip_components.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_append_transform_feedback_skip_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"gl_SkipComponents4\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gl_SkipComponents%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32*, i8**, i32*, %struct.wined3d_string_buffer*, i32)* @append_transform_feedback_skip_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_transform_feedback_skip_components(i8** %0, i32* %1, i8** %2, i32* %3, %struct.wined3d_string_buffer* %4, i32 %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.wined3d_string_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.wined3d_string_buffer* %4, %struct.wined3d_string_buffer** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %28, %6
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %12, align 4
  %17 = udiv i32 %16, 4
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  %21 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load i8**, i8*** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i8**, i8*** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  %27 = call i32 @append_transform_feedback_varying(i8** %22, i32* %23, i8** %24, i32* %25, %struct.wined3d_string_buffer* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %13, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %13, align 4
  br label %14

31:                                               ; preds = %14
  %32 = load i32, i32* %12, align 4
  %33 = urem i32 %32, 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = urem i32 %37, 4
  %39 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i8**, i8*** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i8**, i8*** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %11, align 8
  %45 = call i32 @append_transform_feedback_varying(i8** %40, i32* %41, i8** %42, i32* %43, %struct.wined3d_string_buffer* %44)
  br label %46

46:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32 @string_buffer_sprintf(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @append_transform_feedback_varying(i8**, i32*, i8**, i32*, %struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
