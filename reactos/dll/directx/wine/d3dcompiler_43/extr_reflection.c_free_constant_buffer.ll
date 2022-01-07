; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_free_constant_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_free_constant_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dcompiler_shader_reflection_constant_buffer = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dcompiler_shader_reflection_constant_buffer*)* @free_constant_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_constant_buffer(%struct.d3dcompiler_shader_reflection_constant_buffer* %0) #0 {
  %2 = alloca %struct.d3dcompiler_shader_reflection_constant_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.d3dcompiler_shader_reflection_constant_buffer* %0, %struct.d3dcompiler_shader_reflection_constant_buffer** %2, align 8
  %4 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_constant_buffer, %struct.d3dcompiler_shader_reflection_constant_buffer* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %23, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_constant_buffer, %struct.d3dcompiler_shader_reflection_constant_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %2, align 8
  %17 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_constant_buffer, %struct.d3dcompiler_shader_reflection_constant_buffer* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @free_variable(i32* %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %9

26:                                               ; preds = %9
  %27 = call i32 (...) @GetProcessHeap()
  %28 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %2, align 8
  %29 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_constant_buffer, %struct.d3dcompiler_shader_reflection_constant_buffer* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @HeapFree(i32 %27, i32 0, i32* %30)
  br label %32

32:                                               ; preds = %26, %1
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %2, align 8
  %35 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_constant_buffer, %struct.d3dcompiler_shader_reflection_constant_buffer* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @HeapFree(i32 %33, i32 0, i32* %36)
  ret void
}

declare dso_local i32 @free_variable(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
