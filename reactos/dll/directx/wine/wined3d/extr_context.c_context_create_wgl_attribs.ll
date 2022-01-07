; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_create_wgl_attribs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_create_wgl_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32, i32 (i32, i32, i32*)* }

@WGL_CONTEXT_DEBUG_BIT_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_MAJOR_VERSION_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_MINOR_VERSION_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_FLAGS_ARB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Failed to create a WGL context with wglCreateContextAttribsARB, last error %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @context_create_wgl_attribs(%struct.wined3d_gl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [7 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %12 = call i64 @context_debug_output_enabled(%struct.wined3d_gl_info* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @WGL_CONTEXT_DEBUG_BIT_ARB, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, i32* @WGL_CONTEXT_MAJOR_VERSION_ARB, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %23 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 16
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @WGL_CONTEXT_MINOR_VERSION_ARB, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %36 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 65535
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %44 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @MAKEDWORD_VERSION(i32 3, i32 2)
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %16
  %49 = load i32, i32* @WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %16
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32, i32* @WGL_CONTEXT_FLAGS_ARB, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %64
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %55, %52
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %68
  store i32 0, i32* %69, align 4
  %70 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %71 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %70, i32 0, i32 1
  %72 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %76 = call i32 %72(i32 %73, i32 %74, i32* %75)
  store i32 %76, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %105, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = load i32, i32* @WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %8, align 4
  %87 = sub i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %85
  store i32 %91, i32* %89, align 4
  %92 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %93 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %92, i32 0, i32 1
  %94 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %98 = call i32 %94(i32 %95, i32 %96, i32* %97)
  store i32 %98, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %83
  %101 = call i32 (...) @GetLastError()
  %102 = call i32 @WARN(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %83
  br label %104

104:                                              ; preds = %103, %78
  br label %105

105:                                              ; preds = %104, %66
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i64 @context_debug_output_enabled(%struct.wined3d_gl_info*) #1

declare dso_local i32 @MAKEDWORD_VERSION(i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
