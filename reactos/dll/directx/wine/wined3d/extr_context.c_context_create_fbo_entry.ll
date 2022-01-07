; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_create_fbo_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_create_fbo_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbo_entry = type { i32, i32, i32, i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32*)* }
%struct.wined3d_rendertarget_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@WINED3DFMT_FLAG_DEPTH = common dso_local global i32 0, align 4
@WINED3D_FBO_ENTRY_FLAG_DEPTH = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_STENCIL = common dso_local global i32 0, align 4
@WINED3D_FBO_ENTRY_FLAG_STENCIL = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"glGenFramebuffers()\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Created FBO %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fbo_entry* (%struct.wined3d_context*, %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info*, i32, i32)* @context_create_fbo_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fbo_entry* @context_create_fbo_entry(%struct.wined3d_context* %0, %struct.wined3d_rendertarget_info* %1, %struct.wined3d_rendertarget_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_rendertarget_info*, align 8
  %8 = alloca %struct.wined3d_rendertarget_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wined3d_gl_info*, align 8
  %12 = alloca %struct.fbo_entry*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_rendertarget_info* %1, %struct.wined3d_rendertarget_info** %7, align 8
  store %struct.wined3d_rendertarget_info* %2, %struct.wined3d_rendertarget_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 0
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  store %struct.wined3d_gl_info* %15, %struct.wined3d_gl_info** %11, align 8
  %16 = call %struct.fbo_entry* @heap_alloc(i32 16)
  store %struct.fbo_entry* %16, %struct.fbo_entry** %12, align 8
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %18 = load %struct.fbo_entry*, %struct.fbo_entry** %12, align 8
  %19 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %18, i32 0, i32 3
  %20 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %7, align 8
  %21 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @context_generate_fbo_key(%struct.wined3d_context* %17, i32* %19, %struct.wined3d_rendertarget_info* %20, %struct.wined3d_rendertarget_info* %21, i32 %22, i32 %23)
  %25 = load %struct.fbo_entry*, %struct.fbo_entry** %12, align 8
  %26 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %8, align 8
  %28 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %62

31:                                               ; preds = %5
  %32 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %8, align 8
  %33 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* @WINED3D_FBO_ENTRY_FLAG_DEPTH, align 4
  %42 = load %struct.fbo_entry*, %struct.fbo_entry** %12, align 8
  %43 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %31
  %47 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %8, align 8
  %48 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32, i32* @WINED3D_FBO_ENTRY_FLAG_STENCIL, align 4
  %57 = load %struct.fbo_entry*, %struct.fbo_entry** %12, align 8
  %58 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %46
  br label %62

62:                                               ; preds = %61, %5
  %63 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %64 = call i32 @context_generate_rt_mask(i32 %63)
  %65 = load %struct.fbo_entry*, %struct.fbo_entry** %12, align 8
  %66 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %68 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32 (i32, i32*)*, i32 (i32, i32*)** %69, align 8
  %71 = load %struct.fbo_entry*, %struct.fbo_entry** %12, align 8
  %72 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %71, i32 0, i32 0
  %73 = call i32 %70(i32 1, i32* %72)
  %74 = call i32 @checkGLcall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.fbo_entry*, %struct.fbo_entry** %12, align 8
  %76 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.fbo_entry*, %struct.fbo_entry** %12, align 8
  ret %struct.fbo_entry* %79
}

declare dso_local %struct.fbo_entry* @heap_alloc(i32) #1

declare dso_local i32 @context_generate_fbo_key(%struct.wined3d_context*, i32*, %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info*, i32, i32) #1

declare dso_local i32 @context_generate_rt_mask(i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
