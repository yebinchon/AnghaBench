; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_frame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_parse_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ID3DXFileData = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ID3DXFileData*, i32*)*, i32 (%struct.ID3DXFileData*, i64, %struct.ID3DXFileData**)*, i32 (%struct.ID3DXFileData*, i64*)* }
%struct.IDirect3DDevice9 = type { i32 }
%struct.list = type { i32 }
%struct.mesh_container = type { i32, i32, i32, i32, i32, i32 }

@TID_D3DRMMesh = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@PROVIDE_ADJACENCY = common dso_local global i32 0, align 4
@PROVIDE_MATERIALS = common dso_local global i32 0, align 4
@TID_D3DRMFrameTransformMatrix = common dso_local global i32 0, align 4
@TID_D3DRMFrame = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ID3DXFileData*, i32, %struct.IDirect3DDevice9*, i32*, %struct.list*, i32)* @parse_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_frame(%struct.ID3DXFileData* %0, i32 %1, %struct.IDirect3DDevice9* %2, i32* %3, %struct.list* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ID3DXFileData*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.IDirect3DDevice9*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.list*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ID3DXFileData*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.mesh_container*, align 8
  %21 = alloca i32, align 4
  store %struct.ID3DXFileData* %0, %struct.ID3DXFileData** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.IDirect3DDevice9* %2, %struct.IDirect3DDevice9** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.list* %4, %struct.list** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %15, align 4
  %24 = load %struct.ID3DXFileData*, %struct.ID3DXFileData** %8, align 8
  %25 = getelementptr inbounds %struct.ID3DXFileData, %struct.ID3DXFileData* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32 (%struct.ID3DXFileData*, i64*)*, i32 (%struct.ID3DXFileData*, i64*)** %27, align 8
  %29 = load %struct.ID3DXFileData*, %struct.ID3DXFileData** %8, align 8
  %30 = call i32 %28(%struct.ID3DXFileData* %29, i64* %19)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %7, align 4
  br label %150

36:                                               ; preds = %6
  store i64 0, i64* %18, align 8
  br label %37

37:                                               ; preds = %141, %36
  %38 = load i64, i64* %18, align 8
  %39 = load i64, i64* %19, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %144

41:                                               ; preds = %37
  %42 = load %struct.ID3DXFileData*, %struct.ID3DXFileData** %8, align 8
  %43 = getelementptr inbounds %struct.ID3DXFileData, %struct.ID3DXFileData* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (%struct.ID3DXFileData*, i64, %struct.ID3DXFileData**)*, i32 (%struct.ID3DXFileData*, i64, %struct.ID3DXFileData**)** %45, align 8
  %47 = load %struct.ID3DXFileData*, %struct.ID3DXFileData** %8, align 8
  %48 = load i64, i64* %18, align 8
  %49 = call i32 %46(%struct.ID3DXFileData* %47, i64 %48, %struct.ID3DXFileData** %16)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i64 @FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %7, align 4
  br label %150

55:                                               ; preds = %41
  %56 = load %struct.ID3DXFileData*, %struct.ID3DXFileData** %16, align 8
  %57 = getelementptr inbounds %struct.ID3DXFileData, %struct.ID3DXFileData* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.ID3DXFileData*, i32*)*, i32 (%struct.ID3DXFileData*, i32*)** %59, align 8
  %61 = load %struct.ID3DXFileData*, %struct.ID3DXFileData** %16, align 8
  %62 = call i32 %60(%struct.ID3DXFileData* %61, i32* %17)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i64 @FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %146

67:                                               ; preds = %55
  %68 = call i64 @IsEqualGUID(i32* %17, i32* @TID_D3DRMMesh)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %114

70:                                               ; preds = %67
  %71 = call i32 (...) @GetProcessHeap()
  %72 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %73 = call %struct.mesh_container* @HeapAlloc(i32 %71, i32 %72, i32 24)
  store %struct.mesh_container* %73, %struct.mesh_container** %20, align 8
  %74 = load %struct.mesh_container*, %struct.mesh_container** %20, align 8
  %75 = icmp ne %struct.mesh_container* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %77, i32* %14, align 4
  br label %146

78:                                               ; preds = %70
  %79 = load %struct.list*, %struct.list** %12, align 8
  %80 = load %struct.mesh_container*, %struct.mesh_container** %20, align 8
  %81 = getelementptr inbounds %struct.mesh_container, %struct.mesh_container* %80, i32 0, i32 5
  %82 = call i32 @list_add_tail(%struct.list* %79, i32* %81)
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.mesh_container*, %struct.mesh_container** %20, align 8
  %85 = getelementptr inbounds %struct.mesh_container, %struct.mesh_container* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ID3DXFileData*, %struct.ID3DXFileData** %16, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %10, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @PROVIDE_ADJACENCY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load %struct.mesh_container*, %struct.mesh_container** %20, align 8
  %95 = getelementptr inbounds %struct.mesh_container, %struct.mesh_container* %94, i32 0, i32 3
  br label %97

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %93
  %98 = phi i32* [ %95, %93 ], [ null, %96 ]
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @PROVIDE_MATERIALS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.mesh_container*, %struct.mesh_container** %20, align 8
  %105 = getelementptr inbounds %struct.mesh_container, %struct.mesh_container* %104, i32 0, i32 2
  br label %107

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %103
  %108 = phi i32* [ %105, %103 ], [ null, %106 ]
  %109 = load %struct.mesh_container*, %struct.mesh_container** %20, align 8
  %110 = getelementptr inbounds %struct.mesh_container, %struct.mesh_container* %109, i32 0, i32 1
  %111 = load %struct.mesh_container*, %struct.mesh_container** %20, align 8
  %112 = getelementptr inbounds %struct.mesh_container, %struct.mesh_container* %111, i32 0, i32 0
  %113 = call i32 @D3DXLoadSkinMeshFromXof(%struct.ID3DXFileData* %86, i32 %87, %struct.IDirect3DDevice9* %88, i32* %98, i32* %108, i32* null, i32* %110, i32* null, i32* %112)
  store i32 %113, i32* %14, align 4
  br label %133

114:                                              ; preds = %67
  %115 = call i64 @IsEqualGUID(i32* %17, i32* @TID_D3DRMFrameTransformMatrix)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.ID3DXFileData*, %struct.ID3DXFileData** %16, align 8
  %119 = call i32 @parse_transform_matrix(%struct.ID3DXFileData* %118, i32* %21)
  store i32 %119, i32* %14, align 4
  %120 = call i32 @D3DXMatrixMultiply(i32* %15, i32* %15, i32* %21)
  br label %132

121:                                              ; preds = %114
  %122 = call i64 @IsEqualGUID(i32* %17, i32* @TID_D3DRMFrame)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.ID3DXFileData*, %struct.ID3DXFileData** %16, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %10, align 8
  %128 = load %struct.list*, %struct.list** %12, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @parse_frame(%struct.ID3DXFileData* %125, i32 %126, %struct.IDirect3DDevice9* %127, i32* %15, %struct.list* %128, i32 %129)
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %124, %121
  br label %132

132:                                              ; preds = %131, %117
  br label %133

133:                                              ; preds = %132, %107
  %134 = load i32, i32* %14, align 4
  %135 = call i64 @FAILED(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %146

138:                                              ; preds = %133
  %139 = load %struct.ID3DXFileData*, %struct.ID3DXFileData** %16, align 8
  %140 = call i32 @IUnknown_Release(%struct.ID3DXFileData* %139)
  br label %141

141:                                              ; preds = %138
  %142 = load i64, i64* %18, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %18, align 8
  br label %37

144:                                              ; preds = %37
  %145 = load i32, i32* @D3D_OK, align 4
  store i32 %145, i32* %7, align 4
  br label %150

146:                                              ; preds = %137, %76, %66
  %147 = load %struct.ID3DXFileData*, %struct.ID3DXFileData** %16, align 8
  %148 = call i32 @IUnknown_Release(%struct.ID3DXFileData* %147)
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %146, %144, %53, %34
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local %struct.mesh_container* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @list_add_tail(%struct.list*, i32*) #1

declare dso_local i32 @D3DXLoadSkinMeshFromXof(%struct.ID3DXFileData*, i32, %struct.IDirect3DDevice9*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @parse_transform_matrix(%struct.ID3DXFileData*, i32*) #1

declare dso_local i32 @D3DXMatrixMultiply(i32*, i32*, i32*) #1

declare dso_local i32 @IUnknown_Release(%struct.ID3DXFileData*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
