; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_vertexbuffer.c_d3d_vertex_buffer_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_vertexbuffer.c_d3d_vertex_buffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d_vertex_buffer = type { i32, i32, i32, i32, i32, i32, i32, %struct.ddraw*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ddraw = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@D3D_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Vertex buffer description:\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"    dwSize %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"    dwCaps %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"    FVF %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"    dwNumVertices %u\0A\00", align 1
@DDERR_OUTOFMEMORY = common dso_local global i64 0, align 8
@d3d_vertex_buffer7_vtbl = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Failed to create wined3d vertex buffer, hr %#x.\0A\00", align 1
@WINED3DERR_INVALIDCALL = common dso_local global i64 0, align 8
@DDERR_INVALIDPARAMS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c"Failed to find vertex declaration for fvf %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @d3d_vertex_buffer_create(%struct.d3d_vertex_buffer** %0, %struct.ddraw* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.d3d_vertex_buffer**, align 8
  %6 = alloca %struct.ddraw*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.d3d_vertex_buffer*, align 8
  %9 = alloca i64, align 8
  store %struct.d3d_vertex_buffer** %0, %struct.d3d_vertex_buffer*** %5, align 8
  store %struct.ddraw* %1, %struct.ddraw** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %10 = load i64, i64* @D3D_OK, align 8
  store i64 %10, i64* %9, align 8
  %11 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = call %struct.d3d_vertex_buffer* @heap_alloc_zero(i32 48)
  store %struct.d3d_vertex_buffer* %28, %struct.d3d_vertex_buffer** %8, align 8
  %29 = icmp ne %struct.d3d_vertex_buffer* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %3
  %31 = load i64, i64* @DDERR_OUTOFMEMORY, align 8
  store i64 %31, i64* %4, align 8
  br label %129

32:                                               ; preds = %3
  %33 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %34 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32* @d3d_vertex_buffer7_vtbl, i32** %35, align 8
  %36 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %37 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.ddraw*, %struct.ddraw** %6, align 8
  %39 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %42 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %44 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 7
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load %struct.ddraw*, %struct.ddraw** %6, align 8
  %49 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %48, i32 0, i32 1
  %50 = call i32 @IDirectDraw7_AddRef(i32* %49)
  br label %51

51:                                               ; preds = %47, %32
  %52 = load %struct.ddraw*, %struct.ddraw** %6, align 8
  %53 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %54 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %53, i32 0, i32 7
  store %struct.ddraw* %52, %struct.ddraw** %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %59 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %64 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @get_flexible_vertex_size(i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %74 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = call i32 (...) @wined3d_mutex_lock()
  %76 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %79 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %78, i32 0, i32 6
  %80 = call i64 @d3d_vertex_buffer_create_wined3d_buffer(%struct.d3d_vertex_buffer* %76, i32 %77, i32* %79)
  store i64 %80, i64* %9, align 8
  %81 = call i64 @FAILED(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %51
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @WINED3DERR_INVALIDCALL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i64, i64* @DDERR_INVALIDPARAMS, align 8
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %89, %83
  br label %116

92:                                               ; preds = %51
  %93 = load %struct.ddraw*, %struct.ddraw** %6, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ddraw_find_decl(%struct.ddraw* %93, i32 %96)
  %98 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %99 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = icmp ne i32 %97, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %92
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %107 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @wined3d_buffer_decref(i32 %108)
  %110 = load i64, i64* @DDERR_INVALIDPARAMS, align 8
  store i64 %110, i64* %9, align 8
  br label %116

111:                                              ; preds = %92
  %112 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %113 = getelementptr inbounds %struct.d3d_vertex_buffer, %struct.d3d_vertex_buffer* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @wined3d_vertex_declaration_incref(i32 %114)
  br label %116

116:                                              ; preds = %111, %101, %91
  %117 = call i32 (...) @wined3d_mutex_unlock()
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @D3D_OK, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %123 = load %struct.d3d_vertex_buffer**, %struct.d3d_vertex_buffer*** %5, align 8
  store %struct.d3d_vertex_buffer* %122, %struct.d3d_vertex_buffer** %123, align 8
  br label %127

124:                                              ; preds = %116
  %125 = load %struct.d3d_vertex_buffer*, %struct.d3d_vertex_buffer** %8, align 8
  %126 = call i32 @heap_free(%struct.d3d_vertex_buffer* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i64, i64* %9, align 8
  store i64 %128, i64* %4, align 8
  br label %129

129:                                              ; preds = %127, %30
  %130 = load i64, i64* %4, align 8
  ret i64 %130
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.d3d_vertex_buffer* @heap_alloc_zero(i32) #1

declare dso_local i32 @IDirectDraw7_AddRef(i32*) #1

declare dso_local i32 @get_flexible_vertex_size(i32) #1

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @d3d_vertex_buffer_create_wined3d_buffer(%struct.d3d_vertex_buffer*, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @ddraw_find_decl(%struct.ddraw*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @wined3d_buffer_decref(i32) #1

declare dso_local i32 @wined3d_vertex_declaration_incref(i32) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i32 @heap_free(%struct.d3d_vertex_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
