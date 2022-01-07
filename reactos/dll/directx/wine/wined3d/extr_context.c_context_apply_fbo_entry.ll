; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_fbo_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_fbo_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_8__, %struct.TYPE_5__, i64* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i32)* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.fbo_entry = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@WINED3D_FBO_ENTRY_FLAG_ATTACHED = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i64 0, align 8
@ARB_FRAMEBUFFER_NO_ATTACHMENTS = common dso_local global i64 0, align 8
@GL_FRAMEBUFFER_DEFAULT_WIDTH = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER_DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER_DEFAULT_LAYERS = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER_DEFAULT_SAMPLES = common dso_local global i32 0, align 4
@GL_NONE = common dso_local global i32 0, align 4
@GL_READ_FRAMEBUFFER = common dso_local global i64 0, align 8
@GL_DRAW_FRAMEBUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, i64, %struct.fbo_entry*)* @context_apply_fbo_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_apply_fbo_entry(%struct.wined3d_context* %0, i64 %1, %struct.fbo_entry* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fbo_entry*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.fbo_entry* %2, %struct.fbo_entry** %6, align 8
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 2
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  store %struct.wined3d_gl_info* %13, %struct.wined3d_gl_info** %7, align 8
  %14 = load %struct.fbo_entry*, %struct.fbo_entry** %6, align 8
  %15 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @WINED3D_FBO_ENTRY_FLAG_ATTACHED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.fbo_entry*, %struct.fbo_entry** %6, align 8
  %24 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @context_bind_fbo(%struct.wined3d_context* %21, i64 %22, i32 %25)
  br label %155

27:                                               ; preds = %3
  %28 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %29 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %32 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %35 = load i64, i64* @GL_FRAMEBUFFER, align 8
  %36 = load %struct.fbo_entry*, %struct.fbo_entry** %6, align 8
  %37 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @context_bind_fbo(%struct.wined3d_context* %34, i64 %35, i32 %38)
  %40 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %41 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @ARB_FRAMEBUFFER_NO_ATTACHMENTS, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %27
  %48 = load i64, i64* @GL_FRAMEBUFFER, align 8
  %49 = load i32, i32* @GL_FRAMEBUFFER_DEFAULT_WIDTH, align 4
  %50 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %51 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @glFramebufferParameteri(i64 %48, i32 %49, i32 %53)
  %55 = call i32 @GL_EXTCALL(i32 %54)
  %56 = load i64, i64* @GL_FRAMEBUFFER, align 8
  %57 = load i32, i32* @GL_FRAMEBUFFER_DEFAULT_HEIGHT, align 4
  %58 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %59 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @glFramebufferParameteri(i64 %56, i32 %57, i32 %61)
  %63 = call i32 @GL_EXTCALL(i32 %62)
  %64 = load i64, i64* @GL_FRAMEBUFFER, align 8
  %65 = load i32, i32* @GL_FRAMEBUFFER_DEFAULT_LAYERS, align 4
  %66 = call i32 @glFramebufferParameteri(i64 %64, i32 %65, i32 1)
  %67 = call i32 @GL_EXTCALL(i32 %66)
  %68 = load i64, i64* @GL_FRAMEBUFFER, align 8
  %69 = load i32, i32* @GL_FRAMEBUFFER_DEFAULT_SAMPLES, align 4
  %70 = call i32 @glFramebufferParameteri(i64 %68, i32 %69, i32 1)
  %71 = call i32 @GL_EXTCALL(i32 %70)
  br label %72

72:                                               ; preds = %47, %27
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %101, %72
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %76 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ult i32 %74, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %73
  %81 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.fbo_entry*, %struct.fbo_entry** %6, align 8
  %85 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load %struct.fbo_entry*, %struct.fbo_entry** %6, align 8
  %93 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, 1
  %98 = shl i32 1, %97
  %99 = and i32 %95, %98
  %100 = call i32 @context_attach_surface_fbo(%struct.wined3d_context* %81, i64 %82, i32 %83, i32* %91, i32 %99)
  br label %101

101:                                              ; preds = %80
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %73

104:                                              ; preds = %73
  %105 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %106 = load i64, i64* %5, align 8
  %107 = load %struct.fbo_entry*, %struct.fbo_entry** %6, align 8
  %108 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load %struct.fbo_entry*, %struct.fbo_entry** %6, align 8
  %113 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 1
  %117 = load %struct.fbo_entry*, %struct.fbo_entry** %6, align 8
  %118 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @context_attach_depth_stencil_fbo(%struct.wined3d_context* %105, i64 %106, i32* %111, i32 %116, i32 %119)
  %121 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %122 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32 (i32)*, i32 (i32)** %124, align 8
  %126 = load i32, i32* @GL_NONE, align 4
  %127 = call i32 %125(i32 %126)
  %128 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %129 = load i32, i32* @GL_NONE, align 4
  %130 = call i32 @context_set_draw_buffer(%struct.wined3d_context* %128, i32 %129)
  %131 = load i64, i64* %5, align 8
  %132 = load i64, i64* @GL_FRAMEBUFFER, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %104
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* @GL_READ_FRAMEBUFFER, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %140 = load i64, i64* @GL_DRAW_FRAMEBUFFER, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @context_bind_fbo(%struct.wined3d_context* %139, i64 %140, i32 %141)
  br label %148

143:                                              ; preds = %134
  %144 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %145 = load i64, i64* @GL_READ_FRAMEBUFFER, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @context_bind_fbo(%struct.wined3d_context* %144, i64 %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %138
  br label %149

149:                                              ; preds = %148, %104
  %150 = load i32, i32* @WINED3D_FBO_ENTRY_FLAG_ATTACHED, align 4
  %151 = load %struct.fbo_entry*, %struct.fbo_entry** %6, align 8
  %152 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %20
  ret void
}

declare dso_local i32 @context_bind_fbo(%struct.wined3d_context*, i64, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glFramebufferParameteri(i64, i32, i32) #1

declare dso_local i32 @context_attach_surface_fbo(%struct.wined3d_context*, i64, i32, i32*, i32) #1

declare dso_local i32 @context_attach_depth_stencil_fbo(%struct.wined3d_context*, i64, i32*, i32, i32) #1

declare dso_local i32 @context_set_draw_buffer(%struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
