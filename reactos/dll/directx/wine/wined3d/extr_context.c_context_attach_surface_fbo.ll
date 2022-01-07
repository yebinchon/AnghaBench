; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_attach_surface_fbo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_attach_surface_fbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i64, i32, i64)* }
%struct.wined3d_fbo_resource = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Attach GL object %u to %u.\0A\00", align 1
@GL_COLOR_ATTACHMENT0 = common dso_local global i64 0, align 8
@GL_RENDERBUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"glFramebufferRenderbuffer()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, i32, i64, %struct.wined3d_fbo_resource*, i64)* @context_attach_surface_fbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_attach_surface_fbo(%struct.wined3d_context* %0, i32 %1, i64 %2, %struct.wined3d_fbo_resource* %3, i64 %4) #0 {
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.wined3d_fbo_resource*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.wined3d_fbo_resource* %3, %struct.wined3d_fbo_resource** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 0
  %14 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  store %struct.wined3d_gl_info* %14, %struct.wined3d_gl_info** %11, align 8
  %15 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %9, align 8
  %16 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %9, align 8
  %21 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %5
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %29 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32, i64, i32, i64)*, i32 (i32, i64, i32, i64)** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i64, i64* @GL_COLOR_ATTACHMENT0, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @GL_RENDERBUFFER, align 4
  %37 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %9, align 8
  %38 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 %31(i32 %32, i64 %35, i32 %36, i64 %39)
  %41 = call i32 @checkGLcall(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %50

42:                                               ; preds = %24
  %43 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i64, i64* @GL_COLOR_ATTACHMENT0, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %9, align 8
  %49 = call i32 @context_attach_gl_texture_fbo(%struct.wined3d_context* %43, i32 %44, i64 %47, %struct.wined3d_fbo_resource* %48)
  br label %50

50:                                               ; preds = %42, %27
  br label %58

51:                                               ; preds = %5
  %52 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* @GL_COLOR_ATTACHMENT0, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @context_attach_gl_texture_fbo(%struct.wined3d_context* %52, i32 %53, i64 %56, %struct.wined3d_fbo_resource* null)
  br label %58

58:                                               ; preds = %51, %50
  ret void
}

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @context_attach_gl_texture_fbo(%struct.wined3d_context*, i32, i64, %struct.wined3d_fbo_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
