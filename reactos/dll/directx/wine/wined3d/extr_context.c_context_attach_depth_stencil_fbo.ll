; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_attach_depth_stencil_fbo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_attach_depth_stencil_fbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_fbo_resource = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Attach depth stencil %u.\0A\00", align 1
@WINED3D_FBO_ENTRY_FLAG_DEPTH = common dso_local global i32 0, align 4
@GL_DEPTH_ATTACHMENT = common dso_local global i32 0, align 4
@WINED3D_FBO_ENTRY_FLAG_STENCIL = common dso_local global i32 0, align 4
@GL_STENCIL_ATTACHMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Attach depth stencil 0.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, i32, %struct.wined3d_fbo_resource*, i64, i32)* @context_attach_depth_stencil_fbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_attach_depth_stencil_fbo(%struct.wined3d_context* %0, i32 %1, %struct.wined3d_fbo_resource* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_fbo_resource*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.wined3d_fbo_resource* %2, %struct.wined3d_fbo_resource** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 0
  %14 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  store %struct.wined3d_gl_info* %14, %struct.wined3d_gl_info** %11, align 8
  %15 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %16 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %5
  %20 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %21 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %31 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @context_attach_depth_stencil_rb(%struct.wined3d_gl_info* %27, i32 %28, i32 %29, i32 %32)
  br label %57

34:                                               ; preds = %19
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @WINED3D_FBO_ENTRY_FLAG_DEPTH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  %43 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %44 = call i32 @context_attach_gl_texture_fbo(%struct.wined3d_context* %40, i32 %41, i32 %42, %struct.wined3d_fbo_resource* %43)
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @WINED3D_FBO_ENTRY_FLAG_STENCIL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @GL_STENCIL_ATTACHMENT, align 4
  %54 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %55 = call i32 @context_attach_gl_texture_fbo(%struct.wined3d_context* %51, i32 %52, i32 %53, %struct.wined3d_fbo_resource* %54)
  br label %56

56:                                               ; preds = %50, %45
  br label %57

57:                                               ; preds = %56, %26
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @WINED3D_FBO_ENTRY_FLAG_DEPTH, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  %66 = call i32 @context_attach_gl_texture_fbo(%struct.wined3d_context* %63, i32 %64, i32 %65, %struct.wined3d_fbo_resource* null)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @WINED3D_FBO_ENTRY_FLAG_STENCIL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @GL_STENCIL_ATTACHMENT, align 4
  %76 = call i32 @context_attach_gl_texture_fbo(%struct.wined3d_context* %73, i32 %74, i32 %75, %struct.wined3d_fbo_resource* null)
  br label %77

77:                                               ; preds = %72, %67
  br label %88

78:                                               ; preds = %5
  %79 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  %83 = call i32 @context_attach_gl_texture_fbo(%struct.wined3d_context* %80, i32 %81, i32 %82, %struct.wined3d_fbo_resource* null)
  %84 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @GL_STENCIL_ATTACHMENT, align 4
  %87 = call i32 @context_attach_gl_texture_fbo(%struct.wined3d_context* %84, i32 %85, i32 %86, %struct.wined3d_fbo_resource* null)
  br label %88

88:                                               ; preds = %78, %77
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @context_attach_depth_stencil_rb(%struct.wined3d_gl_info*, i32, i32, i32) #1

declare dso_local i32 @context_attach_gl_texture_fbo(%struct.wined3d_context*, i32, i32, %struct.wined3d_fbo_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
