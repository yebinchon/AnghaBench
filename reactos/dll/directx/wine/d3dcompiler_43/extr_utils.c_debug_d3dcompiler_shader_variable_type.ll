; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_d3dcompiler_shader_variable_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_d3dcompiler_shader_variable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"Unrecognized D3D_SHADER_VARIABLE_TYPE %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"unrecognized\00", align 1
@D3D_SVT_APPEND_STRUCTURED_BUFFER = common dso_local global i32 0, align 4
@D3D_SVT_BLEND = common dso_local global i32 0, align 4
@D3D_SVT_BOOL = common dso_local global i32 0, align 4
@D3D_SVT_BUFFER = common dso_local global i32 0, align 4
@D3D_SVT_BYTEADDRESS_BUFFER = common dso_local global i32 0, align 4
@D3D_SVT_CBUFFER = common dso_local global i32 0, align 4
@D3D_SVT_COMPUTESHADER = common dso_local global i32 0, align 4
@D3D_SVT_CONSUME_STRUCTURED_BUFFER = common dso_local global i32 0, align 4
@D3D_SVT_DEPTHSTENCIL = common dso_local global i32 0, align 4
@D3D_SVT_DEPTHSTENCILVIEW = common dso_local global i32 0, align 4
@D3D_SVT_DOMAINSHADER = common dso_local global i32 0, align 4
@D3D_SVT_DOUBLE = common dso_local global i32 0, align 4
@D3D_SVT_FLOAT = common dso_local global i32 0, align 4
@D3D_SVT_GEOMETRYSHADER = common dso_local global i32 0, align 4
@D3D_SVT_HULLSHADER = common dso_local global i32 0, align 4
@D3D_SVT_INT = common dso_local global i32 0, align 4
@D3D_SVT_INTERFACE_POINTER = common dso_local global i32 0, align 4
@D3D_SVT_PIXELSHADER = common dso_local global i32 0, align 4
@D3D_SVT_RASTERIZER = common dso_local global i32 0, align 4
@D3D_SVT_RENDERTARGETVIEW = common dso_local global i32 0, align 4
@D3D_SVT_RWBUFFER = common dso_local global i32 0, align 4
@D3D_SVT_RWBYTEADDRESS_BUFFER = common dso_local global i32 0, align 4
@D3D_SVT_RWSTRUCTURED_BUFFER = common dso_local global i32 0, align 4
@D3D_SVT_RWTEXTURE1D = common dso_local global i32 0, align 4
@D3D_SVT_RWTEXTURE1DARRAY = common dso_local global i32 0, align 4
@D3D_SVT_RWTEXTURE2D = common dso_local global i32 0, align 4
@D3D_SVT_RWTEXTURE2DARRAY = common dso_local global i32 0, align 4
@D3D_SVT_RWTEXTURE3D = common dso_local global i32 0, align 4
@D3D_SVT_SAMPLER = common dso_local global i32 0, align 4
@D3D_SVT_STRING = common dso_local global i32 0, align 4
@D3D_SVT_STRUCTURED_BUFFER = common dso_local global i32 0, align 4
@D3D_SVT_TBUFFER = common dso_local global i32 0, align 4
@D3D_SVT_TEXTURE = common dso_local global i32 0, align 4
@D3D_SVT_TEXTURE1D = common dso_local global i32 0, align 4
@D3D_SVT_TEXTURE1DARRAY = common dso_local global i32 0, align 4
@D3D_SVT_TEXTURE2D = common dso_local global i32 0, align 4
@D3D_SVT_TEXTURE2DARRAY = common dso_local global i32 0, align 4
@D3D_SVT_TEXTURE2DMS = common dso_local global i32 0, align 4
@D3D_SVT_TEXTURE2DMSARRAY = common dso_local global i32 0, align 4
@D3D_SVT_TEXTURE3D = common dso_local global i32 0, align 4
@D3D_SVT_TEXTURECUBE = common dso_local global i32 0, align 4
@D3D_SVT_TEXTURECUBEARRAY = common dso_local global i32 0, align 4
@D3D_SVT_UINT = common dso_local global i32 0, align 4
@D3D_SVT_UINT8 = common dso_local global i32 0, align 4
@D3D_SVT_VERTEXSHADER = common dso_local global i32 0, align 4
@D3D_SVT_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debug_d3dcompiler_shader_variable_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %4 [
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %5)
  ret i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
