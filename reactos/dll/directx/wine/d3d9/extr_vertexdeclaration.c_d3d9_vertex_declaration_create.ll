; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_vertexdeclaration.c_d3d9_vertex_declaration_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_vertexdeclaration.c_d3d9_vertex_declaration_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_device = type { i32 }
%struct.d3d9_vertex_declaration = type { i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to initialize vertex declaration, hr %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Created vertex declaration %p.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3d9_vertex_declaration_create(%struct.d3d9_device* %0, i32* %1, %struct.d3d9_vertex_declaration** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3d9_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.d3d9_vertex_declaration**, align 8
  %8 = alloca %struct.d3d9_vertex_declaration*, align 8
  %9 = alloca i32, align 4
  store %struct.d3d9_device* %0, %struct.d3d9_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.d3d9_vertex_declaration** %2, %struct.d3d9_vertex_declaration*** %7, align 8
  %10 = call %struct.d3d9_vertex_declaration* @heap_alloc_zero(i32 4)
  store %struct.d3d9_vertex_declaration* %10, %struct.d3d9_vertex_declaration** %8, align 8
  %11 = icmp ne %struct.d3d9_vertex_declaration* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %4, align 4
  br label %34

14:                                               ; preds = %3
  %15 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %8, align 8
  %16 = load %struct.d3d9_device*, %struct.d3d9_device** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @vertexdeclaration_init(%struct.d3d9_vertex_declaration* %15, %struct.d3d9_device* %16, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %8, align 8
  %26 = call i32 @heap_free(%struct.d3d9_vertex_declaration* %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %34

28:                                               ; preds = %14
  %29 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %8, align 8
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.d3d9_vertex_declaration* %29)
  %31 = load %struct.d3d9_vertex_declaration*, %struct.d3d9_vertex_declaration** %8, align 8
  %32 = load %struct.d3d9_vertex_declaration**, %struct.d3d9_vertex_declaration*** %7, align 8
  store %struct.d3d9_vertex_declaration* %31, %struct.d3d9_vertex_declaration** %32, align 8
  %33 = load i32, i32* @D3D_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %22, %12
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.d3d9_vertex_declaration* @heap_alloc_zero(i32) #1

declare dso_local i32 @vertexdeclaration_init(%struct.d3d9_vertex_declaration*, %struct.d3d9_device*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @heap_free(%struct.d3d9_vertex_declaration*) #1

declare dso_local i32 @TRACE(i8*, %struct.d3d9_vertex_declaration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
