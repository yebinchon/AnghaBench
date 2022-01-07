; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_reuse_fbo_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_reuse_fbo_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_rendertarget_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fbo_entry = type { i32, i32, i32 }

@WINED3DFMT_FLAG_DEPTH = common dso_local global i32 0, align 4
@WINED3D_FBO_ENTRY_FLAG_DEPTH = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_STENCIL = common dso_local global i32 0, align 4
@WINED3D_FBO_ENTRY_FLAG_STENCIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, i32, %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info*, i32, i32, %struct.fbo_entry*)* @context_reuse_fbo_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_reuse_fbo_entry(%struct.wined3d_context* %0, i32 %1, %struct.wined3d_rendertarget_info* %2, %struct.wined3d_rendertarget_info* %3, i32 %4, i32 %5, %struct.fbo_entry* %6) #0 {
  %8 = alloca %struct.wined3d_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_rendertarget_info*, align 8
  %11 = alloca %struct.wined3d_rendertarget_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fbo_entry*, align 8
  %15 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.wined3d_rendertarget_info* %2, %struct.wined3d_rendertarget_info** %10, align 8
  store %struct.wined3d_rendertarget_info* %3, %struct.wined3d_rendertarget_info** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.fbo_entry* %6, %struct.fbo_entry** %14, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 0
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  store %struct.wined3d_gl_info* %18, %struct.wined3d_gl_info** %15, align 8
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.fbo_entry*, %struct.fbo_entry** %14, align 8
  %22 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @context_bind_fbo(%struct.wined3d_context* %19, i32 %20, i32 %23)
  %25 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %15, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @context_clean_fbo_attachments(%struct.wined3d_gl_info* %25, i32 %26)
  %28 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %29 = load %struct.fbo_entry*, %struct.fbo_entry** %14, align 8
  %30 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %29, i32 0, i32 1
  %31 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %10, align 8
  %32 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @context_generate_fbo_key(%struct.wined3d_context* %28, i32* %30, %struct.wined3d_rendertarget_info* %31, %struct.wined3d_rendertarget_info* %32, i32 %33, i32 %34)
  %36 = load %struct.fbo_entry*, %struct.fbo_entry** %14, align 8
  %37 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %11, align 8
  %39 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %7
  %43 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %11, align 8
  %44 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load i32, i32* @WINED3D_FBO_ENTRY_FLAG_DEPTH, align 4
  %53 = load %struct.fbo_entry*, %struct.fbo_entry** %14, align 8
  %54 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %42
  %58 = load %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info** %11, align 8
  %59 = getelementptr inbounds %struct.wined3d_rendertarget_info, %struct.wined3d_rendertarget_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load i32, i32* @WINED3D_FBO_ENTRY_FLAG_STENCIL, align 4
  %68 = load %struct.fbo_entry*, %struct.fbo_entry** %14, align 8
  %69 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %57
  br label %73

73:                                               ; preds = %72, %7
  ret void
}

declare dso_local i32 @context_bind_fbo(%struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @context_clean_fbo_attachments(%struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @context_generate_fbo_key(%struct.wined3d_context*, i32*, %struct.wined3d_rendertarget_info*, %struct.wined3d_rendertarget_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
