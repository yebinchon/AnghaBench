; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_texture_coords.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_texture_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*, i32*, i8**)* }
%struct.mesh_data = type { i32, i32, i32* }

@E_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"truncated data (%ld bytes)\0A\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"number of texture coordinates (%u) doesn't match number of vertices (%u)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@D3DFVF_TEX1 = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.mesh_data*)* @parse_texture_coords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_texture_coords(%struct.TYPE_7__* %0, %struct.mesh_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.mesh_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.mesh_data* %1, %struct.mesh_data** %5, align 8
  %9 = call i32 (...) @GetProcessHeap()
  %10 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %11 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @HeapFree(i32 %9, i32 0, i32* %12)
  %14 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %15 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32 (%struct.TYPE_7__*, i32*, i8**)*, i32 (%struct.TYPE_7__*, i32*, i8**)** %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = bitcast i32** %8 to i8**
  %23 = call i32 %20(%struct.TYPE_7__* %21, i32* %7, i8** %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %110

29:                                               ; preds = %2
  %30 = load i32, i32* @E_FAIL, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %101

37:                                               ; preds = %29
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %41 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %48 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  br label %101

51:                                               ; preds = %37
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32* %53, i32** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %57 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = add i64 4, %60
  %62 = icmp ult i64 %55, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i8*, i32, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %101

66:                                               ; preds = %51
  %67 = call i32 (...) @GetProcessHeap()
  %68 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %69 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32* @HeapAlloc(i32 %67, i32 0, i32 %73)
  %75 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %76 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %78 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %66
  %82 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %82, i32* %6, align 4
  br label %101

83:                                               ; preds = %66
  %84 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %85 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %89 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memcpy(i32* %86, i32* %87, i32 %93)
  %95 = load i32, i32* @D3DFVF_TEX1, align 4
  %96 = load %struct.mesh_data*, %struct.mesh_data** %5, align 8
  %97 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @D3D_OK, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %83, %81, %63, %44, %34
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = call i32 %106(%struct.TYPE_7__* %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %101, %27
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32, ...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
