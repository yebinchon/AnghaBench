; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_vertexdeclaration.c_d3d8_vertex_declaration_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_vertexdeclaration.c_d3d8_vertex_declaration_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_vertex_declaration = type { %struct.wined3d_vertex_element*, i32, i32, i32 }
%struct.wined3d_vertex_element = type { i32 }
%struct.d3d8_device = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Failed to allocate vertex declaration elements memory.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@d3d8_vertexdeclaration_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Failed to create wined3d vertex declaration, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3d8_vertex_declaration_init(%struct.d3d8_vertex_declaration* %0, %struct.d3d8_device* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3d8_vertex_declaration*, align 8
  %7 = alloca %struct.d3d8_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_vertex_element*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.d3d8_vertex_declaration* %0, %struct.d3d8_vertex_declaration** %6, align 8
  store %struct.d3d8_device* %1, %struct.d3d8_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %6, align 8
  %15 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %6, align 8
  %18 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %17, i32 0, i32 2
  %19 = call i32 @convert_to_wined3d_declaration(i32* %16, i32* %18, %struct.wined3d_vertex_element** %10)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %6, align 8
  %21 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.wined3d_vertex_element* @heap_alloc(i32 %22)
  %24 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %6, align 8
  %25 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %24, i32 0, i32 0
  store %struct.wined3d_vertex_element* %23, %struct.wined3d_vertex_element** %25, align 8
  %26 = icmp ne %struct.wined3d_vertex_element* %23, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %4
  %28 = call i32 @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %10, align 8
  %30 = call i32 @heap_free(%struct.wined3d_vertex_element* %29)
  %31 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %31, i32* %5, align 4
  br label %67

32:                                               ; preds = %4
  %33 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %6, align 8
  %34 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %33, i32 0, i32 0
  %35 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %34, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %6, align 8
  %38 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(%struct.wined3d_vertex_element* %35, i32* %36, i32 %39)
  %41 = call i32 (...) @wined3d_mutex_lock()
  %42 = load %struct.d3d8_device*, %struct.d3d8_device** %7, align 8
  %43 = getelementptr inbounds %struct.d3d8_device, %struct.d3d8_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %6, align 8
  %48 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %6, align 8
  %49 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %48, i32 0, i32 1
  %50 = call i32 @wined3d_vertex_declaration_create(i32 %44, %struct.wined3d_vertex_element* %45, i32 %46, %struct.d3d8_vertex_declaration* %47, i32* @d3d8_vertexdeclaration_wined3d_parent_ops, i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = call i32 (...) @wined3d_mutex_unlock()
  %52 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %10, align 8
  %53 = call i32 @heap_free(%struct.wined3d_vertex_element* %52)
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %32
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @WARN(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %6, align 8
  %61 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %60, i32 0, i32 0
  %62 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %61, align 8
  %63 = call i32 @heap_free(%struct.wined3d_vertex_element* %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %67

65:                                               ; preds = %32
  %66 = load i32, i32* @D3D_OK, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %57, %27
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @convert_to_wined3d_declaration(i32*, i32*, %struct.wined3d_vertex_element**) #1

declare dso_local %struct.wined3d_vertex_element* @heap_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @heap_free(%struct.wined3d_vertex_element*) #1

declare dso_local i32 @memcpy(%struct.wined3d_vertex_element*, i32*, i32) #1

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i32 @wined3d_vertex_declaration_create(i32, %struct.wined3d_vertex_element*, i32, %struct.d3d8_vertex_declaration*, i32*, i32*) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
