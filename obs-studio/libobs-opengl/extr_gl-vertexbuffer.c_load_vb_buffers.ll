; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-vertexbuffer.c_load_vb_buffers.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-vertexbuffer.c_load_vb_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_program = type { %struct.TYPE_3__, %struct.gs_shader* }
%struct.TYPE_3__ = type { i32* }
%struct.gs_shader = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.shader_attrib* }
%struct.shader_attrib = type { i32 }
%struct.gs_vertex_buffer = type { i32 }
%struct.gs_index_buffer = type { i32 }

@GL_ELEMENT_ARRAY_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_vb_buffers(%struct.gs_program* %0, %struct.gs_vertex_buffer* %1, %struct.gs_index_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs_program*, align 8
  %6 = alloca %struct.gs_vertex_buffer*, align 8
  %7 = alloca %struct.gs_index_buffer*, align 8
  %8 = alloca %struct.gs_shader*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.shader_attrib*, align 8
  store %struct.gs_program* %0, %struct.gs_program** %5, align 8
  store %struct.gs_vertex_buffer* %1, %struct.gs_vertex_buffer** %6, align 8
  store %struct.gs_index_buffer* %2, %struct.gs_index_buffer** %7, align 8
  %11 = load %struct.gs_program*, %struct.gs_program** %5, align 8
  %12 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %11, i32 0, i32 1
  %13 = load %struct.gs_shader*, %struct.gs_shader** %12, align 8
  store %struct.gs_shader* %13, %struct.gs_shader** %8, align 8
  %14 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gl_bind_vertex_array(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.gs_shader*, %struct.gs_shader** %8, align 8
  %24 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %22, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %21
  %29 = load %struct.gs_shader*, %struct.gs_shader** %8, align 8
  %30 = getelementptr inbounds %struct.gs_shader, %struct.gs_shader* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.shader_attrib*, %struct.shader_attrib** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.shader_attrib, %struct.shader_attrib* %32, i64 %33
  store %struct.shader_attrib* %34, %struct.shader_attrib** %10, align 8
  %35 = load %struct.shader_attrib*, %struct.shader_attrib** %10, align 8
  %36 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %6, align 8
  %37 = load %struct.gs_program*, %struct.gs_program** %5, align 8
  %38 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @load_vb_buffer(%struct.shader_attrib* %35, %struct.gs_vertex_buffer* %36, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %63

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %21

51:                                               ; preds = %21
  %52 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %7, align 8
  %53 = icmp ne %struct.gs_index_buffer* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %56 = load %struct.gs_index_buffer*, %struct.gs_index_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.gs_index_buffer, %struct.gs_index_buffer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gl_bind_buffer(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %63

62:                                               ; preds = %54, %51
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %46, %19
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @gl_bind_vertex_array(i32) #1

declare dso_local i32 @load_vb_buffer(%struct.shader_attrib*, %struct.gs_vertex_buffer*, i32) #1

declare dso_local i32 @gl_bind_buffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
