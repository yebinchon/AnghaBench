; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_create_buffer_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_create_buffer_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_view = type { i32 }
%struct.wined3d_context = type { i32 }
%struct.wined3d_view_desc = type { i32 }
%struct.wined3d_buffer = type { i32 }
%struct.wined3d_format = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_view*, %struct.wined3d_context*, %struct.wined3d_view_desc*, %struct.wined3d_buffer*, %struct.wined3d_format*)* @create_buffer_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_buffer_view(%struct.wined3d_gl_view* %0, %struct.wined3d_context* %1, %struct.wined3d_view_desc* %2, %struct.wined3d_buffer* %3, %struct.wined3d_format* %4) #0 {
  %6 = alloca %struct.wined3d_gl_view*, align 8
  %7 = alloca %struct.wined3d_context*, align 8
  %8 = alloca %struct.wined3d_view_desc*, align 8
  %9 = alloca %struct.wined3d_buffer*, align 8
  %10 = alloca %struct.wined3d_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_gl_view* %0, %struct.wined3d_gl_view** %6, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %7, align 8
  store %struct.wined3d_view_desc* %2, %struct.wined3d_view_desc** %8, align 8
  store %struct.wined3d_buffer* %3, %struct.wined3d_buffer** %9, align 8
  store %struct.wined3d_format* %4, %struct.wined3d_format** %10, align 8
  %13 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %9, align 8
  %14 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %8, align 8
  %15 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %16 = call i32 @get_buffer_view_range(%struct.wined3d_buffer* %13, %struct.wined3d_view_desc* %14, %struct.wined3d_format* %15, i32* %11, i32* %12)
  %17 = load %struct.wined3d_gl_view*, %struct.wined3d_gl_view** %6, align 8
  %18 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %19 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %9, align 8
  %20 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @create_buffer_texture(%struct.wined3d_gl_view* %17, %struct.wined3d_context* %18, %struct.wined3d_buffer* %19, %struct.wined3d_format* %20, i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @get_buffer_view_range(%struct.wined3d_buffer*, %struct.wined3d_view_desc*, %struct.wined3d_format*, i32*, i32*) #1

declare dso_local i32 @create_buffer_texture(%struct.wined3d_gl_view*, %struct.wined3d_context*, %struct.wined3d_buffer*, %struct.wined3d_format*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
