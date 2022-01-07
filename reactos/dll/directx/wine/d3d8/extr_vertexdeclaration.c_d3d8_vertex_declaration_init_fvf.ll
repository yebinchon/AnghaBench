; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_vertexdeclaration.c_d3d8_vertex_declaration_init_fvf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_vertexdeclaration.c_d3d8_vertex_declaration_init_fvf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_vertex_declaration = type { i32, i32, i64, i32* }
%struct.d3d8_device = type { i32 }

@d3d8_vertexdeclaration_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to create wined3d vertex declaration, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3d8_vertex_declaration_init_fvf(%struct.d3d8_vertex_declaration* %0, %struct.d3d8_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3d8_vertex_declaration*, align 8
  %6 = alloca %struct.d3d8_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.d3d8_vertex_declaration* %0, %struct.d3d8_vertex_declaration** %5, align 8
  store %struct.d3d8_device* %1, %struct.d3d8_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %5, align 8
  %10 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %5, align 8
  %12 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %5, align 8
  %15 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.d3d8_device*, %struct.d3d8_device** %6, align 8
  %17 = getelementptr inbounds %struct.d3d8_device, %struct.d3d8_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %5, align 8
  %21 = load %struct.d3d8_vertex_declaration*, %struct.d3d8_vertex_declaration** %5, align 8
  %22 = getelementptr inbounds %struct.d3d8_vertex_declaration, %struct.d3d8_vertex_declaration* %21, i32 0, i32 0
  %23 = call i32 @wined3d_vertex_declaration_create_from_fvf(i32 %18, i32 %19, %struct.d3d8_vertex_declaration* %20, i32* @d3d8_vertexdeclaration_wined3d_parent_ops, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @WARN(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @D3D_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @wined3d_vertex_declaration_create_from_fvf(i32, i32, %struct.d3d8_vertex_declaration*, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
