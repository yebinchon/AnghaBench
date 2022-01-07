; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_shader.c_d3d8_vertex_shader_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_shader.c_d3d8_vertex_shader_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_vertex_shader = type { i32, i32 }
%struct.d3d8_device = type { i32 }
%struct.wined3d_shader_desc = type { i64*, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@D3DVSD_TOKENTYPEMASK = common dso_local global i64 0, align 8
@D3DVSD_TOKENTYPESHIFT = common dso_local global i64 0, align 8
@D3DVSD_TOKEN_STREAMDATA = common dso_local global i32 0, align 4
@D3DVSD_DATATYPEMASK = common dso_local global i64 0, align 8
@D3DVSD_DATATYPESHIFT = common dso_local global i64 0, align 8
@D3DVSD_VERTEXREGMASK = common dso_local global i64 0, align 8
@D3DVSD_VERTEXREGSHIFT = common dso_local global i64 0, align 8
@D3DVSDE_NORMAL = common dso_local global i64 0, align 8
@D3DVSDT_FLOAT3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"Attempt to use a non-FLOAT3 normal with the fixed-function function\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to create vertex declaration, hr %#x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Usage %#x not implemented.\0A\00", align 1
@WINED3D_SHADER_BYTE_CODE_FORMAT_SM1 = common dso_local global i32 0, align 4
@d3d8_vertexshader_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to create wined3d vertex shader, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3d8_vertex_shader_init(%struct.d3d8_vertex_shader* %0, %struct.d3d8_device* %1, i64* %2, i64* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.d3d8_vertex_shader*, align 8
  %9 = alloca %struct.d3d8_device*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.wined3d_shader_desc, align 8
  store %struct.d3d8_vertex_shader* %0, %struct.d3d8_vertex_shader** %8, align 8
  store %struct.d3d8_device* %1, %struct.d3d8_device** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load i64*, i64** %10, align 8
  store i64* %20, i64** %14, align 8
  br label %21

21:                                               ; preds = %68, %6
  %22 = call i64 (...) @D3DVSD_END()
  %23 = load i64*, i64** %14, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %21
  %27 = load i64*, i64** %14, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @D3DVSD_TOKENTYPEMASK, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* @D3DVSD_TOKENTYPESHIFT, align 8
  %32 = ashr i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @D3DVSD_TOKEN_STREAMDATA, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %26
  %38 = load i32, i32* %16, align 4
  %39 = and i32 %38, 268435456
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %68, label %41

41:                                               ; preds = %37
  %42 = load i64*, i64** %14, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @D3DVSD_DATATYPEMASK, align 8
  %45 = and i64 %43, %44
  %46 = load i64, i64* @D3DVSD_DATATYPESHIFT, align 8
  %47 = ashr i64 %45, %46
  store i64 %47, i64* %17, align 8
  %48 = load i64*, i64** %14, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @D3DVSD_VERTEXREGMASK, align 8
  %51 = and i64 %49, %50
  %52 = load i64, i64* @D3DVSD_VERTEXREGSHIFT, align 8
  %53 = ashr i64 %51, %52
  store i64 %53, i64* %18, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i64, i64* @D3DVSDE_NORMAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %41
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* @D3DVSDT_FLOAT3, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i64*, i64** %11, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %66, i32* %7, align 4
  br label %138

67:                                               ; preds = %61, %57, %41
  br label %68

68:                                               ; preds = %67, %37, %26
  %69 = load i64*, i64** %14, align 8
  %70 = call i32 @parse_token(i64* %69)
  %71 = load i64*, i64** %14, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64* %73, i64** %14, align 8
  br label %21

74:                                               ; preds = %21
  %75 = load %struct.d3d8_device*, %struct.d3d8_device** %9, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.d3d8_vertex_shader*, %struct.d3d8_vertex_shader** %8, align 8
  %79 = getelementptr inbounds %struct.d3d8_vertex_shader, %struct.d3d8_vertex_shader* %78, i32 0, i32 1
  %80 = call i32 @d3d8_vertexshader_create_vertexdeclaration(%struct.d3d8_device* %75, i64* %76, i64 %77, i32* %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i64 @FAILED(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %74
  %85 = load i32, i32* %15, align 4
  %86 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %7, align 4
  br label %138

88:                                               ; preds = %74
  %89 = load i64*, i64** %11, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %136

91:                                               ; preds = %88
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i64*, i64** %11, align 8
  %99 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %19, i32 0, i32 0
  store i64* %98, i64** %99, align 8
  %100 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %19, i32 0, i32 1
  store i64 -1, i64* %100, align 8
  %101 = load i32, i32* @WINED3D_SHADER_BYTE_CODE_FORMAT_SM1, align 4
  %102 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %19, i32 0, i32 6
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %19, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %19, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %19, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = getelementptr inbounds %struct.wined3d_shader_desc, %struct.wined3d_shader_desc* %19, i32 0, i32 2
  store i32 1, i32* %109, align 8
  %110 = call i32 (...) @wined3d_mutex_lock()
  %111 = load %struct.d3d8_device*, %struct.d3d8_device** %9, align 8
  %112 = getelementptr inbounds %struct.d3d8_device, %struct.d3d8_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.d3d8_vertex_shader*, %struct.d3d8_vertex_shader** %8, align 8
  %115 = load %struct.d3d8_vertex_shader*, %struct.d3d8_vertex_shader** %8, align 8
  %116 = getelementptr inbounds %struct.d3d8_vertex_shader, %struct.d3d8_vertex_shader* %115, i32 0, i32 0
  %117 = call i32 @wined3d_shader_create_vs(i32 %113, %struct.wined3d_shader_desc* %19, %struct.d3d8_vertex_shader* %114, i32* @d3d8_vertexshader_wined3d_parent_ops, i32* %116)
  store i32 %117, i32* %15, align 4
  %118 = call i32 (...) @wined3d_mutex_unlock()
  %119 = load i32, i32* %15, align 4
  %120 = call i64 @FAILED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %97
  %123 = load i32, i32* %15, align 4
  %124 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load %struct.d3d8_vertex_shader*, %struct.d3d8_vertex_shader** %8, align 8
  %126 = getelementptr inbounds %struct.d3d8_vertex_shader, %struct.d3d8_vertex_shader* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @d3d8_vertex_declaration_destroy(i32 %127)
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %7, align 4
  br label %138

130:                                              ; preds = %97
  %131 = load i64*, i64** %10, align 8
  %132 = load %struct.d3d8_vertex_shader*, %struct.d3d8_vertex_shader** %8, align 8
  %133 = getelementptr inbounds %struct.d3d8_vertex_shader, %struct.d3d8_vertex_shader* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @load_local_constants(i64* %131, i32 %134)
  br label %136

136:                                              ; preds = %130, %88
  %137 = load i32, i32* @D3D_OK, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %136, %122, %84, %64
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i64 @D3DVSD_END(...) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @parse_token(i64*) #1

declare dso_local i32 @d3d8_vertexshader_create_vertexdeclaration(%struct.d3d8_device*, i64*, i64, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i32 @wined3d_shader_create_vs(i32, %struct.wined3d_shader_desc*, %struct.d3d8_vertex_shader*, i32*, i32*) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i32 @d3d8_vertex_declaration_destroy(i32) #1

declare dso_local i32 @load_local_constants(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
