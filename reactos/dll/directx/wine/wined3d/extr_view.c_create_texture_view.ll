; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_create_texture_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_create_texture_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_view = type { i64, i32 }
%struct.wined3d_view_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.wined3d_texture = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wined3d_format = type { i32 }
%struct.wined3d_gl_info = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (i64, i32, i32)*, i32 (i64, i32, i32*)*, i32 (i32, i32*)* }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }

@ARB_TEXTURE_VIEW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"OpenGL implementation does not support texture views.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@GL_TEXTURE_3D = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Depth slice (%u-%u) not supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Create texture view\00", align 1
@create_texture_view.swizzle = internal constant [4 x i32] [i32 128, i32 129, i32 128, i32 128], align 16
@ARB_STENCIL_TEXTURING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"OpenGL implementation does not support stencil texturing.\0A\00", align 1
@GL_TEXTURE_SWIZZLE_RGBA = common dso_local global i32 0, align 4
@GL_DEPTH_STENCIL_TEXTURE_MODE = common dso_local global i32 0, align 4
@GL_STENCIL_INDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Initialize stencil view\00", align 1
@STATE_COMPUTE_SHADER_RESOURCE_BINDING = common dso_local global i32 0, align 4
@STATE_GRAPHICS_SHADER_RESOURCE_BINDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_view*, i64, %struct.wined3d_view_desc*, %struct.wined3d_texture*, %struct.wined3d_format*)* @create_texture_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_texture_view(%struct.wined3d_gl_view* %0, i64 %1, %struct.wined3d_view_desc* %2, %struct.wined3d_texture* %3, %struct.wined3d_format* %4) #0 {
  %6 = alloca %struct.wined3d_gl_view*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wined3d_view_desc*, align 8
  %9 = alloca %struct.wined3d_texture*, align 8
  %10 = alloca %struct.wined3d_format*, align 8
  %11 = alloca %struct.wined3d_gl_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wined3d_context*, align 8
  %15 = alloca i32, align 4
  store %struct.wined3d_gl_view* %0, %struct.wined3d_gl_view** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.wined3d_view_desc* %2, %struct.wined3d_view_desc** %8, align 8
  store %struct.wined3d_texture* %3, %struct.wined3d_texture** %9, align 8
  store %struct.wined3d_format* %4, %struct.wined3d_format** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %6, align 8
  %18 = getelementptr inbounds %struct.wined3d_gl_view, %struct.wined3d_gl_view* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %20 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.wined3d_context* @context_acquire(i32 %22, i32* null, i32 0)
  store %struct.wined3d_context* %23, %struct.wined3d_context** %14, align 8
  %24 = load %struct.wined3d_context*, %struct.wined3d_context** %14, align 8
  %25 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %24, i32 0, i32 0
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %25, align 8
  store %struct.wined3d_gl_info* %26, %struct.wined3d_gl_info** %11, align 8
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %28 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @ARB_TEXTURE_VIEW, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %5
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %14, align 8
  %36 = call i32 @context_release(%struct.wined3d_context* %35)
  %37 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %159

38:                                               ; preds = %5
  %39 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %40 = load %struct.wined3d_context*, %struct.wined3d_context** %14, align 8
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @wined3d_texture_prepare_texture(%struct.wined3d_texture* %39, %struct.wined3d_context* %40, i32 %41)
  %43 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %44 = load %struct.wined3d_context*, %struct.wined3d_context** %14, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @wined3d_texture_get_texture_name(%struct.wined3d_texture* %43, %struct.wined3d_context* %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %8, align 8
  %48 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %8, align 8
  %53 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @GL_TEXTURE_3D, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %38
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %70

70:                                               ; preds = %66, %63, %38
  %71 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %72 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i32 (i32, i32*)*, i32 (i32, i32*)** %74, align 8
  %76 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %6, align 8
  %77 = getelementptr inbounds %struct.wined3d_gl_view, %struct.wined3d_gl_view* %76, i32 0, i32 1
  %78 = call i32 %75(i32 1, i32* %77)
  %79 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %6, align 8
  %80 = getelementptr inbounds %struct.wined3d_gl_view, %struct.wined3d_gl_view* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %6, align 8
  %83 = getelementptr inbounds %struct.wined3d_gl_view, %struct.wined3d_gl_view* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %87 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %8, align 8
  %90 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %8, align 8
  %95 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @glTextureView(i32 %81, i64 %84, i32 %85, i32 %88, i32 %93, i32 %98, i32 %99, i32 %100)
  %102 = call i32 @GL_EXTCALL(i32 %101)
  %103 = call i32 @checkGLcall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %105 = call i64 @is_stencil_view_format(%struct.wined3d_format* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %156

107:                                              ; preds = %70
  %108 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %109 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @ARB_STENCIL_TEXTURING, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %107
  %116 = load %struct.wined3d_context*, %struct.wined3d_context** %14, align 8
  %117 = call i32 @context_release(%struct.wined3d_context* %116)
  %118 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %159

119:                                              ; preds = %107
  %120 = load %struct.wined3d_context*, %struct.wined3d_context** %14, align 8
  %121 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %6, align 8
  %122 = getelementptr inbounds %struct.wined3d_gl_view, %struct.wined3d_gl_view* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %6, align 8
  %125 = getelementptr inbounds %struct.wined3d_gl_view, %struct.wined3d_gl_view* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @context_bind_texture(%struct.wined3d_context* %120, i64 %123, i32 %126)
  %128 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %129 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i32 (i64, i32, i32*)*, i32 (i64, i32, i32*)** %131, align 8
  %133 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %6, align 8
  %134 = getelementptr inbounds %struct.wined3d_gl_view, %struct.wined3d_gl_view* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @GL_TEXTURE_SWIZZLE_RGBA, align 4
  %137 = call i32 %132(i64 %135, i32 %136, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @create_texture_view.swizzle, i64 0, i64 0))
  %138 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %139 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %141, align 8
  %143 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %6, align 8
  %144 = getelementptr inbounds %struct.wined3d_gl_view, %struct.wined3d_gl_view* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @GL_DEPTH_STENCIL_TEXTURE_MODE, align 4
  %147 = load i32, i32* @GL_STENCIL_INDEX, align 4
  %148 = call i32 %142(i64 %145, i32 %146, i32 %147)
  %149 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %150 = load %struct.wined3d_context*, %struct.wined3d_context** %14, align 8
  %151 = load i32, i32* @STATE_COMPUTE_SHADER_RESOURCE_BINDING, align 4
  %152 = call i32 @context_invalidate_compute_state(%struct.wined3d_context* %150, i32 %151)
  %153 = load %struct.wined3d_context*, %struct.wined3d_context** %14, align 8
  %154 = load i32, i32* @STATE_GRAPHICS_SHADER_RESOURCE_BINDING, align 4
  %155 = call i32 @context_invalidate_state(%struct.wined3d_context* %153, i32 %154)
  br label %156

156:                                              ; preds = %119, %70
  %157 = load %struct.wined3d_context*, %struct.wined3d_context** %14, align 8
  %158 = call i32 @context_release(%struct.wined3d_context* %157)
  br label %159

159:                                              ; preds = %156, %115, %34
  ret void
}

declare dso_local %struct.wined3d_context* @context_acquire(i32, i32*, i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @wined3d_texture_prepare_texture(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_get_texture_name(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glTextureView(i32, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i64 @is_stencil_view_format(%struct.wined3d_format*) #1

declare dso_local i32 @context_bind_texture(%struct.wined3d_context*, i64, i32) #1

declare dso_local i32 @context_invalidate_compute_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
