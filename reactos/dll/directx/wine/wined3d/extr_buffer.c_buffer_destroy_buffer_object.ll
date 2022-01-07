; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_destroy_buffer_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_destroy_buffer_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_buffer = type { i32, i32, i32*, i64, %struct.wined3d_resource }
%struct.wined3d_resource = type { i32, i64 }
%struct.wined3d_context = type { i64, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }

@WINED3D_BIND_VERTEX_BUFFER = common dso_local global i32 0, align 4
@STATE_STREAMSRC = common dso_local global i32 0, align 4
@WINED3D_BIND_INDEX_BUFFER = common dso_local global i32 0, align 4
@STATE_INDEXBUFFER = common dso_local global i32 0, align 4
@WINED3D_BIND_CONSTANT_BUFFER = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_HULL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_DOMAIN = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_GEOMETRY = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@WINED3D_BIND_STREAM_OUTPUT = common dso_local global i32 0, align 4
@STATE_STREAM_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Deleting buffer object for buffer %p, disabling transform feedback.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"glDeleteBuffers\00", align 1
@WINED3D_BUFFER_APPLESYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_buffer*, %struct.wined3d_context*)* @buffer_destroy_buffer_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_destroy_buffer_object(%struct.wined3d_buffer* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca %struct.wined3d_buffer*, align 8
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_resource*, align 8
  store %struct.wined3d_buffer* %0, %struct.wined3d_buffer** %3, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %4, align 8
  %7 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %8 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %7, i32 0, i32 1
  %9 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  store %struct.wined3d_gl_info* %9, %struct.wined3d_gl_info** %5, align 8
  %10 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %10, i32 0, i32 4
  store %struct.wined3d_resource* %11, %struct.wined3d_resource** %6, align 8
  %12 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %142

17:                                               ; preds = %2
  %18 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %19 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %116

22:                                               ; preds = %17
  %23 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @WINED3D_BIND_VERTEX_BUFFER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %31 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @STATE_STREAMSRC, align 4
  %34 = call i32 @device_invalidate_state(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %37 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WINED3D_BIND_INDEX_BUFFER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %44 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @STATE_INDEXBUFFER, align 4
  %47 = call i32 @device_invalidate_state(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %35
  %49 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %50 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @WINED3D_BIND_CONSTANT_BUFFER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %48
  %56 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %57 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %60 = call i32 @STATE_CONSTANT_BUFFER(i32 %59)
  %61 = call i32 @device_invalidate_state(i32 %58, i32 %60)
  %62 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %63 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @WINED3D_SHADER_TYPE_HULL, align 4
  %66 = call i32 @STATE_CONSTANT_BUFFER(i32 %65)
  %67 = call i32 @device_invalidate_state(i32 %64, i32 %66)
  %68 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %69 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @WINED3D_SHADER_TYPE_DOMAIN, align 4
  %72 = call i32 @STATE_CONSTANT_BUFFER(i32 %71)
  %73 = call i32 @device_invalidate_state(i32 %70, i32 %72)
  %74 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %75 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @WINED3D_SHADER_TYPE_GEOMETRY, align 4
  %78 = call i32 @STATE_CONSTANT_BUFFER(i32 %77)
  %79 = call i32 @device_invalidate_state(i32 %76, i32 %78)
  %80 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %81 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %84 = call i32 @STATE_CONSTANT_BUFFER(i32 %83)
  %85 = call i32 @device_invalidate_state(i32 %82, i32 %84)
  %86 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %87 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %90 = call i32 @STATE_CONSTANT_BUFFER(i32 %89)
  %91 = call i32 @device_invalidate_state(i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %55, %48
  %93 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %94 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @WINED3D_BIND_STREAM_OUTPUT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %92
  %100 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %101 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @STATE_STREAM_OUTPUT, align 4
  %104 = call i32 @device_invalidate_state(i32 %102, i32 %103)
  %105 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %106 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %111 = call i32 @WARN(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), %struct.wined3d_buffer* %110)
  %112 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %113 = call i32 @context_end_transform_feedback(%struct.wined3d_context* %112)
  br label %114

114:                                              ; preds = %109, %99
  br label %115

115:                                              ; preds = %114, %92
  br label %116

116:                                              ; preds = %115, %17
  %117 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %118 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %117, i32 0, i32 3
  %119 = call i32 @glDeleteBuffers(i32 1, i64* %118)
  %120 = call i32 @GL_EXTCALL(i32 %119)
  %121 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %122 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %123 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  %124 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %125 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %116
  %129 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %130 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @wined3d_fence_destroy(i32* %131)
  %133 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %134 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %133, i32 0, i32 2
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %128, %116
  %136 = load i32, i32* @WINED3D_BUFFER_APPLESYNC, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %3, align 8
  %139 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %135, %16
  ret void
}

declare dso_local i32 @device_invalidate_state(i32, i32) #1

declare dso_local i32 @STATE_CONSTANT_BUFFER(i32) #1

declare dso_local i32 @WARN(i8*, %struct.wined3d_buffer*) #1

declare dso_local i32 @context_end_transform_feedback(%struct.wined3d_context*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glDeleteBuffers(i32, i64*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @wined3d_fence_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
