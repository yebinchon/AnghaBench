; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_create_buffer_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_create_buffer_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_view = type { i32, i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32, i32*)* }
%struct.TYPE_5__ = type { i32 }
%struct.wined3d_buffer = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wined3d_format = type { i32 }

@ARB_TEXTURE_BUFFER_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"OpenGL implementation does not support buffer textures.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Buffer offset %u is not %u byte aligned.\0A\00", align 1
@WINED3D_LOCATION_BUFFER = common dso_local global i32 0, align 4
@GL_TEXTURE_BUFFER = common dso_local global i32 0, align 4
@ARB_TEXTURE_BUFFER_RANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"OpenGL implementation does not support ARB_texture_buffer_range.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Create buffer texture\00", align 1
@STATE_COMPUTE_SHADER_RESOURCE_BINDING = common dso_local global i32 0, align 4
@STATE_GRAPHICS_SHADER_RESOURCE_BINDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_view*, %struct.wined3d_context*, %struct.wined3d_buffer*, %struct.wined3d_format*, i32, i32)* @create_buffer_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_buffer_texture(%struct.wined3d_gl_view* %0, %struct.wined3d_context* %1, %struct.wined3d_buffer* %2, %struct.wined3d_format* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.wined3d_gl_view*, align 8
  %8 = alloca %struct.wined3d_context*, align 8
  %9 = alloca %struct.wined3d_buffer*, align 8
  %10 = alloca %struct.wined3d_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_gl_view* %0, %struct.wined3d_gl_view** %7, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %8, align 8
  store %struct.wined3d_buffer* %2, %struct.wined3d_buffer** %9, align 8
  store %struct.wined3d_format* %3, %struct.wined3d_format** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 0
  %16 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %15, align 8
  store %struct.wined3d_gl_info* %16, %struct.wined3d_gl_info** %13, align 8
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %18 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @ARB_TEXTURE_BUFFER_OBJECT, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %6
  %25 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %113

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %29 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %27, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %38 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %40)
  br label %113

42:                                               ; preds = %26
  %43 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %9, align 8
  %44 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %45 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %46 = call i32 @wined3d_buffer_load_location(%struct.wined3d_buffer* %43, %struct.wined3d_context* %44, i32 %45)
  %47 = load i32, i32* @GL_TEXTURE_BUFFER, align 4
  %48 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %7, align 8
  %49 = getelementptr inbounds %struct.wined3d_gl_view, %struct.wined3d_gl_view* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %51 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (i32, i32*)*, i32 (i32, i32*)** %53, align 8
  %55 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %7, align 8
  %56 = getelementptr inbounds %struct.wined3d_gl_view, %struct.wined3d_gl_view* %55, i32 0, i32 0
  %57 = call i32 %54(i32 1, i32* %56)
  %58 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %59 = load i32, i32* @GL_TEXTURE_BUFFER, align 4
  %60 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %7, align 8
  %61 = getelementptr inbounds %struct.wined3d_gl_view, %struct.wined3d_gl_view* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @context_bind_texture(%struct.wined3d_context* %58, i32 %59, i32 %62)
  %64 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %65 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @ARB_TEXTURE_BUFFER_RANGE, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %42
  %72 = load i32, i32* @GL_TEXTURE_BUFFER, align 4
  %73 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %74 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %9, align 8
  %77 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @glTexBufferRange(i32 %72, i32 %75, i32 %78, i32 %79, i32 %80)
  %82 = call i32 @GL_EXTCALL(i32 %81)
  br label %105

83:                                               ; preds = %42
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %9, align 8
  %89 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %87, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86, %83
  %94 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %86
  %96 = load i32, i32* @GL_TEXTURE_BUFFER, align 4
  %97 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %98 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %9, align 8
  %101 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @glTexBuffer(i32 %96, i32 %99, i32 %102)
  %104 = call i32 @GL_EXTCALL(i32 %103)
  br label %105

105:                                              ; preds = %95, %71
  %106 = call i32 @checkGLcall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %108 = load i32, i32* @STATE_COMPUTE_SHADER_RESOURCE_BINDING, align 4
  %109 = call i32 @context_invalidate_compute_state(%struct.wined3d_context* %107, i32 %108)
  %110 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %111 = load i32, i32* @STATE_GRAPHICS_SHADER_RESOURCE_BINDING, align 4
  %112 = call i32 @context_invalidate_state(%struct.wined3d_context* %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %35, %24
  ret void
}

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @wined3d_buffer_load_location(%struct.wined3d_buffer*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @context_bind_texture(%struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glTexBufferRange(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glTexBuffer(i32, i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @context_invalidate_compute_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
