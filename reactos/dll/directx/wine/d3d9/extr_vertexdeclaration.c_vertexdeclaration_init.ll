; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_vertexdeclaration.c_vertexdeclaration_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_vertexdeclaration.c_vertexdeclaration_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_vertex_declaration = type { i32, i32, i32*, %struct.wined3d_vertex_element*, i32, %struct.TYPE_2__ }
%struct.wined3d_vertex_element = type { i32 }
%struct.TYPE_2__ = type { i32* }
%struct.d3d9_device = type { i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"Failed to create wined3d vertex declaration elements, hr %#x.\0A\00", align 1
@d3d9_vertex_declaration_vtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Failed to allocate vertex declaration elements memory.\0A\00", align 1
@D3DERR_OUTOFVIDEOMEMORY = common dso_local global i32 0, align 4
@d3d9_vertexdeclaration_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Failed to create wined3d vertex declaration, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3d9_vertex_declaration*, %struct.d3d9_device*, i32*)* @vertexdeclaration_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vertexdeclaration_init(%struct.d3d9_vertex_declaration* %0, %struct.d3d9_device* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3d9_vertex_declaration*, align 8
  %6 = alloca %struct.d3d9_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wined3d_vertex_element*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.d3d9_vertex_declaration* %0, %struct.d3d9_vertex_declaration** %5, align 8
  store %struct.d3d9_device* %1, %struct.d3d9_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @convert_to_wined3d_declaration(i32* %12, %struct.wined3d_vertex_element** %8, i32* %9)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @WARN(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %89

21:                                               ; preds = %3
  %22 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %5, align 8
  %23 = getelementptr inbounds %struct.d3d9_vertex_declaration, %struct.d3d9_vertex_declaration* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* @d3d9_vertex_declaration_vtbl, i32** %24, align 8
  %25 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %5, align 8
  %26 = getelementptr inbounds %struct.d3d9_vertex_declaration, %struct.d3d9_vertex_declaration* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call %struct.wined3d_vertex_element* @heap_alloc(i32 %32)
  %34 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %5, align 8
  %35 = getelementptr inbounds %struct.d3d9_vertex_declaration, %struct.d3d9_vertex_declaration* %34, i32 0, i32 3
  store %struct.wined3d_vertex_element* %33, %struct.wined3d_vertex_element** %35, align 8
  %36 = icmp ne %struct.wined3d_vertex_element* %33, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %21
  %38 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %8, align 8
  %39 = call i32 @heap_free(%struct.wined3d_vertex_element* %38)
  %40 = call i32 @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @D3DERR_OUTOFVIDEOMEMORY, align 4
  store i32 %41, i32* %4, align 4
  br label %89

42:                                               ; preds = %21
  %43 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %5, align 8
  %44 = getelementptr inbounds %struct.d3d9_vertex_declaration, %struct.d3d9_vertex_declaration* %43, i32 0, i32 3
  %45 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memcpy(%struct.wined3d_vertex_element* %45, i32* %46, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %5, align 8
  %54 = getelementptr inbounds %struct.d3d9_vertex_declaration, %struct.d3d9_vertex_declaration* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = call i32 (...) @wined3d_mutex_lock()
  %56 = load %struct.d3d9_device*, %struct.d3d9_device** %6, align 8
  %57 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %5, align 8
  %62 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %5, align 8
  %63 = getelementptr inbounds %struct.d3d9_vertex_declaration, %struct.d3d9_vertex_declaration* %62, i32 0, i32 4
  %64 = call i32 @wined3d_vertex_declaration_create(i32 %58, %struct.wined3d_vertex_element* %59, i32 %60, %struct.d3d9_vertex_declaration* %61, i32* @d3d9_vertexdeclaration_wined3d_parent_ops, i32* %63)
  store i32 %64, i32* %11, align 4
  %65 = call i32 (...) @wined3d_mutex_unlock()
  %66 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %8, align 8
  %67 = call i32 @heap_free(%struct.wined3d_vertex_element* %66)
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %42
  %72 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %5, align 8
  %73 = getelementptr inbounds %struct.d3d9_vertex_declaration, %struct.d3d9_vertex_declaration* %72, i32 0, i32 3
  %74 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %73, align 8
  %75 = call i32 @heap_free(%struct.wined3d_vertex_element* %74)
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @WARN(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %89

79:                                               ; preds = %42
  %80 = load %struct.d3d9_device*, %struct.d3d9_device** %6, align 8
  %81 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %80, i32 0, i32 0
  %82 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %5, align 8
  %83 = getelementptr inbounds %struct.d3d9_vertex_declaration, %struct.d3d9_vertex_declaration* %82, i32 0, i32 2
  store i32* %81, i32** %83, align 8
  %84 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %5, align 8
  %85 = getelementptr inbounds %struct.d3d9_vertex_declaration, %struct.d3d9_vertex_declaration* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @IDirect3DDevice9Ex_AddRef(i32* %86)
  %88 = load i32, i32* @D3D_OK, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %79, %71, %37, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @convert_to_wined3d_declaration(i32*, %struct.wined3d_vertex_element**, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local %struct.wined3d_vertex_element* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(%struct.wined3d_vertex_element*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memcpy(%struct.wined3d_vertex_element*, i32*, i32) #1

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i32 @wined3d_vertex_declaration_create(i32, %struct.wined3d_vertex_element*, i32, %struct.d3d9_vertex_declaration*, i32*, i32*) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i32 @IDirect3DDevice9Ex_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
