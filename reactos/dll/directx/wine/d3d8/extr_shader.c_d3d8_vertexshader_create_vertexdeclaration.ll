; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_shader.c_d3d8_vertexshader_create_vertexdeclaration.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_shader.c_d3d8_vertexshader_create_vertexdeclaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_device = type { i32 }
%struct.d3d8_vertex_declaration = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"device %p, declaration %p, shader_handle %#x, decl_ptr %p.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to initialize vertex declaration, hr %#x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Created vertex declaration %p.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3d8_device*, i32*, i32, %struct.d3d8_vertex_declaration**)* @d3d8_vertexshader_create_vertexdeclaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d8_vertexshader_create_vertexdeclaration(%struct.d3d8_device* %0, i32* %1, i32 %2, %struct.d3d8_vertex_declaration** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3d8_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.d3d8_vertex_declaration**, align 8
  %10 = alloca %struct.d3d8_vertex_declaration*, align 8
  %11 = alloca i32, align 4
  store %struct.d3d8_device* %0, %struct.d3d8_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.d3d8_vertex_declaration** %3, %struct.d3d8_vertex_declaration*** %9, align 8
  %12 = load %struct.d3d8_device*, %struct.d3d8_device** %6, align 8
  %13 = bitcast %struct.d3d8_device* %12 to %struct.d3d8_vertex_declaration*
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.d3d8_vertex_declaration**, %struct.d3d8_vertex_declaration*** %9, align 8
  %17 = call i32 (i8*, %struct.d3d8_vertex_declaration*, ...) @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.d3d8_vertex_declaration* %13, i32* %14, i32 %15, %struct.d3d8_vertex_declaration** %16)
  %18 = call %struct.d3d8_vertex_declaration* @heap_alloc_zero(i32 4)
  store %struct.d3d8_vertex_declaration* %18, %struct.d3d8_vertex_declaration** %10, align 8
  %19 = icmp ne %struct.d3d8_vertex_declaration* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %21, i32* %5, align 4
  br label %43

22:                                               ; preds = %4
  %23 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %10, align 8
  %24 = load %struct.d3d8_device*, %struct.d3d8_device** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @d3d8_vertex_declaration_init(%struct.d3d8_vertex_declaration* %23, %struct.d3d8_device* %24, i32* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %10, align 8
  %35 = call i32 @heap_free(%struct.d3d8_vertex_declaration* %34)
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %43

37:                                               ; preds = %22
  %38 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %10, align 8
  %39 = call i32 (i8*, %struct.d3d8_vertex_declaration*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.d3d8_vertex_declaration* %38)
  %40 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %10, align 8
  %41 = load %struct.d3d8_vertex_declaration**, %struct.d3d8_vertex_declaration*** %9, align 8
  store %struct.d3d8_vertex_declaration* %40, %struct.d3d8_vertex_declaration** %41, align 8
  %42 = load i32, i32* @D3D_OK, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %31, %20
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @TRACE(i8*, %struct.d3d8_vertex_declaration*, ...) #1

declare dso_local %struct.d3d8_vertex_declaration* @heap_alloc_zero(i32) #1

declare dso_local i32 @d3d8_vertex_declaration_init(%struct.d3d8_vertex_declaration*, %struct.d3d8_device*, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @heap_free(%struct.d3d8_vertex_declaration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
