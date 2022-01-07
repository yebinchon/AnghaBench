; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_vertexdeclaration.c_append_decl_element.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_vertexdeclaration.c_append_decl_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_fvf_convert_state = type { i64, i64, i32, %struct.wined3d_vertex_element* }
%struct.wined3d_vertex_element = type { i32, i64, i32, i64, i32, i64, i32, i32, i64 }
%struct.wined3d_format = type { i64 }

@WINED3D_OUTPUT_SLOT_SEMANTIC = common dso_local global i32 0, align 4
@WINED3D_INPUT_PER_VERTEX_DATA = common dso_local global i32 0, align 4
@WINED3D_DECL_METHOD_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_fvf_convert_state*, i32, i32, i64)* @append_decl_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_decl_element(%struct.wined3d_fvf_convert_state* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.wined3d_fvf_convert_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.wined3d_vertex_element*, align 8
  %10 = alloca %struct.wined3d_format*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.wined3d_fvf_convert_state* %0, %struct.wined3d_fvf_convert_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.wined3d_fvf_convert_state*, %struct.wined3d_fvf_convert_state** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_fvf_convert_state, %struct.wined3d_fvf_convert_state* %13, i32 0, i32 3
  %15 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %14, align 8
  store %struct.wined3d_vertex_element* %15, %struct.wined3d_vertex_element** %9, align 8
  %16 = load %struct.wined3d_fvf_convert_state*, %struct.wined3d_fvf_convert_state** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_fvf_convert_state, %struct.wined3d_fvf_convert_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.wined3d_fvf_convert_state*, %struct.wined3d_fvf_convert_state** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_fvf_convert_state, %struct.wined3d_fvf_convert_state* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %9, align 8
  %24 = load i64, i64* %12, align 8
  %25 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %23, i64 %24
  %26 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %9, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %27, i64 %28
  %30 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %29, i32 0, i32 8
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %9, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %32, i64 %33
  %35 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %34, i32 0, i32 1
  store i64 %31, i64* %35, align 8
  %36 = load i32, i32* @WINED3D_OUTPUT_SLOT_SEMANTIC, align 4
  %37 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %37, i64 %38
  %40 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %39, i32 0, i32 7
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @WINED3D_INPUT_PER_VERTEX_DATA, align 4
  %42 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %9, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %42, i64 %43
  %45 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %44, i32 0, i32 6
  store i32 %41, i32* %45, align 8
  %46 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %9, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %46, i64 %47
  %49 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @WINED3D_DECL_METHOD_DEFAULT, align 4
  %51 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %9, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %51, i64 %52
  %54 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %53, i32 0, i32 4
  store i32 %50, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %9, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %56, i64 %57
  %59 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %58, i32 0, i32 2
  store i32 %55, i32* %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %9, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %61, i64 %62
  %64 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %63, i32 0, i32 3
  store i64 %60, i64* %64, align 8
  %65 = load %struct.wined3d_fvf_convert_state*, %struct.wined3d_fvf_convert_state** %5, align 8
  %66 = getelementptr inbounds %struct.wined3d_fvf_convert_state, %struct.wined3d_fvf_convert_state* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call %struct.wined3d_format* @wined3d_get_format(i32 %67, i32 %68, i32 0)
  store %struct.wined3d_format* %69, %struct.wined3d_format** %10, align 8
  %70 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %71 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.wined3d_fvf_convert_state*, %struct.wined3d_fvf_convert_state** %5, align 8
  %74 = getelementptr inbounds %struct.wined3d_fvf_convert_state, %struct.wined3d_fvf_convert_state* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = load %struct.wined3d_fvf_convert_state*, %struct.wined3d_fvf_convert_state** %5, align 8
  %78 = getelementptr inbounds %struct.wined3d_fvf_convert_state, %struct.wined3d_fvf_convert_state* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  ret void
}

declare dso_local %struct.wined3d_format* @wined3d_get_format(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
