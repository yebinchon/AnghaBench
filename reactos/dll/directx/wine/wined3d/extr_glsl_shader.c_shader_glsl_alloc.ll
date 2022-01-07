; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_alloc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.shader_glsl_priv*, i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.shader_glsl_priv = type { i32, i32, i32, i32, %struct.shader_glsl_priv*, i32, i32, %struct.fragment_pipeline*, %struct.wined3d_vertex_pipe_ops*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_vertex_pipe_ops = type { i32 (%struct.wined3d_device.0*)*, i8* (i32*, %struct.shader_glsl_priv.1*)* }
%struct.wined3d_device.0 = type opaque
%struct.shader_glsl_priv.1 = type opaque
%struct.fragment_pipeline = type { i32 (%struct.wined3d_device*)*, i32 (%struct.wined3d_gl_info*, %struct.fragment_caps*)*, i8* (i32*, %struct.shader_glsl_priv*)* }
%struct.fragment_caps = type opaque
%struct.fragment_caps.2 = type { i32 }

@WINED3D_MAX_VS_CONSTS_F = common dso_local global i32 0, align 4
@WINED3D_MAX_PS_CONSTS_F = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@glsl_shader_backend = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize vertex pipe.\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to initialize fragment pipe.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to initialize shader buffer.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to allocate memory.\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Failed to initialize vertex shader constant heap\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Failed to initialize pixel shader constant heap\0A\00", align 1
@glsl_program_key_compare = common dso_local global i32 0, align 4
@WINED3D_FRAGMENT_CAP_PROJ_CONTROL = common dso_local global i32 0, align 4
@WINED3D_LEGACY_FFP_LIGHTING = common dso_local global i32 0, align 4
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_device*, %struct.wined3d_vertex_pipe_ops*, %struct.fragment_pipeline*)* @shader_glsl_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_alloc(%struct.wined3d_device* %0, %struct.wined3d_vertex_pipe_ops* %1, %struct.fragment_pipeline* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_device*, align 8
  %6 = alloca %struct.wined3d_vertex_pipe_ops*, align 8
  %7 = alloca %struct.fragment_pipeline*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca %struct.fragment_caps.2, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.shader_glsl_priv*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %5, align 8
  store %struct.wined3d_vertex_pipe_ops* %1, %struct.wined3d_vertex_pipe_ops** %6, align 8
  store %struct.fragment_pipeline* %2, %struct.fragment_pipeline** %7, align 8
  %14 = load i32, i32* @WINED3D_MAX_VS_CONSTS_F, align 4
  %15 = load i32, i32* @WINED3D_MAX_PS_CONSTS_F, align 4
  %16 = call i32 @max(i32 %14, i32 %15)
  %17 = call i64 @wined3d_log2i(i32 %16)
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %8, align 8
  %19 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.wined3d_gl_info* %22, %struct.wined3d_gl_info** %9, align 8
  %23 = call %struct.shader_glsl_priv* @heap_alloc_zero(i32 56)
  store %struct.shader_glsl_priv* %23, %struct.shader_glsl_priv** %13, align 8
  %24 = icmp ne %struct.shader_glsl_priv* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %26, i32* %4, align 4
  br label %164

27:                                               ; preds = %3
  %28 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %29 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %28, i32 0, i32 10
  %30 = call i32 @string_buffer_list_init(i32* %29)
  %31 = load %struct.wined3d_vertex_pipe_ops*, %struct.wined3d_vertex_pipe_ops** %6, align 8
  %32 = getelementptr inbounds %struct.wined3d_vertex_pipe_ops, %struct.wined3d_vertex_pipe_ops* %31, i32 0, i32 1
  %33 = load i8* (i32*, %struct.shader_glsl_priv.1*)*, i8* (i32*, %struct.shader_glsl_priv.1*)** %32, align 8
  %34 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %35 = bitcast %struct.shader_glsl_priv* %34 to %struct.shader_glsl_priv.1*
  %36 = call i8* %33(i32* @glsl_shader_backend, %struct.shader_glsl_priv.1* %35)
  store i8* %36, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %27
  %39 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %41 = call i32 @heap_free(%struct.shader_glsl_priv* %40)
  %42 = load i32, i32* @E_FAIL, align 4
  store i32 %42, i32* %4, align 4
  br label %164

43:                                               ; preds = %27
  %44 = load %struct.fragment_pipeline*, %struct.fragment_pipeline** %7, align 8
  %45 = getelementptr inbounds %struct.fragment_pipeline, %struct.fragment_pipeline* %44, i32 0, i32 2
  %46 = load i8* (i32*, %struct.shader_glsl_priv*)*, i8* (i32*, %struct.shader_glsl_priv*)** %45, align 8
  %47 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %48 = call i8* %46(i32* @glsl_shader_backend, %struct.shader_glsl_priv* %47)
  store i8* %48, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %43
  %51 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.wined3d_vertex_pipe_ops*, %struct.wined3d_vertex_pipe_ops** %6, align 8
  %53 = getelementptr inbounds %struct.wined3d_vertex_pipe_ops, %struct.wined3d_vertex_pipe_ops* %52, i32 0, i32 0
  %54 = load i32 (%struct.wined3d_device.0*)*, i32 (%struct.wined3d_device.0*)** %53, align 8
  %55 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %56 = bitcast %struct.wined3d_device* %55 to %struct.wined3d_device.0*
  %57 = call i32 %54(%struct.wined3d_device.0* %56)
  %58 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %59 = call i32 @heap_free(%struct.shader_glsl_priv* %58)
  %60 = load i32, i32* @E_FAIL, align 4
  store i32 %60, i32* %4, align 4
  br label %164

61:                                               ; preds = %43
  %62 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %63 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %62, i32 0, i32 3
  %64 = call i32 @string_buffer_init(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %136

68:                                               ; preds = %61
  %69 = load i64, i64* %8, align 8
  %70 = call %struct.shader_glsl_priv* @heap_calloc(i64 %69, i32 56)
  %71 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %72 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %71, i32 0, i32 4
  store %struct.shader_glsl_priv* %70, %struct.shader_glsl_priv** %72, align 8
  %73 = icmp ne %struct.shader_glsl_priv* %70, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %136

76:                                               ; preds = %68
  %77 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %78 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %77, i32 0, i32 5
  %79 = load i32, i32* @WINED3D_MAX_VS_CONSTS_F, align 4
  %80 = call i32 @constant_heap_init(i32* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = call i32 @ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %136

84:                                               ; preds = %76
  %85 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %86 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %85, i32 0, i32 6
  %87 = load i32, i32* @WINED3D_MAX_PS_CONSTS_F, align 4
  %88 = call i32 @constant_heap_init(i32* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %136

92:                                               ; preds = %84
  %93 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %94 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %93, i32 0, i32 9
  %95 = load i32, i32* @glsl_program_key_compare, align 4
  %96 = call i32 @wine_rb_init(i32* %94, i32 %95)
  %97 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %98 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load %struct.wined3d_vertex_pipe_ops*, %struct.wined3d_vertex_pipe_ops** %6, align 8
  %100 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %101 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %100, i32 0, i32 8
  store %struct.wined3d_vertex_pipe_ops* %99, %struct.wined3d_vertex_pipe_ops** %101, align 8
  %102 = load %struct.fragment_pipeline*, %struct.fragment_pipeline** %7, align 8
  %103 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %104 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %103, i32 0, i32 7
  store %struct.fragment_pipeline* %102, %struct.fragment_pipeline** %104, align 8
  %105 = load %struct.fragment_pipeline*, %struct.fragment_pipeline** %7, align 8
  %106 = getelementptr inbounds %struct.fragment_pipeline, %struct.fragment_pipeline* %105, i32 0, i32 1
  %107 = load i32 (%struct.wined3d_gl_info*, %struct.fragment_caps*)*, i32 (%struct.wined3d_gl_info*, %struct.fragment_caps*)** %106, align 8
  %108 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %109 = bitcast %struct.fragment_caps.2* %10 to %struct.fragment_caps*
  %110 = call i32 %107(%struct.wined3d_gl_info* %108, %struct.fragment_caps* %109)
  %111 = getelementptr inbounds %struct.fragment_caps.2, %struct.fragment_caps.2* %10, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @WINED3D_FRAGMENT_CAP_PROJ_CONTROL, align 4
  %114 = and i32 %112, %113
  %115 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %116 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %118 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @WINED3D_LEGACY_FFP_LIGHTING, align 4
  %123 = and i32 %121, %122
  %124 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %125 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %128 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %131 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %133 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %134 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %133, i32 0, i32 0
  store %struct.shader_glsl_priv* %132, %struct.shader_glsl_priv** %134, align 8
  %135 = load i32, i32* @WINED3D_OK, align 4
  store i32 %135, i32* %4, align 4
  br label %164

136:                                              ; preds = %90, %82, %74, %66
  %137 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %138 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %137, i32 0, i32 6
  %139 = call i32 @constant_heap_free(i32* %138)
  %140 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %141 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %140, i32 0, i32 5
  %142 = call i32 @constant_heap_free(i32* %141)
  %143 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %144 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %143, i32 0, i32 4
  %145 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %144, align 8
  %146 = call i32 @heap_free(%struct.shader_glsl_priv* %145)
  %147 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %148 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %147, i32 0, i32 3
  %149 = call i32 @string_buffer_free(i32* %148)
  %150 = load %struct.fragment_pipeline*, %struct.fragment_pipeline** %7, align 8
  %151 = getelementptr inbounds %struct.fragment_pipeline, %struct.fragment_pipeline* %150, i32 0, i32 0
  %152 = load i32 (%struct.wined3d_device*)*, i32 (%struct.wined3d_device*)** %151, align 8
  %153 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %154 = call i32 %152(%struct.wined3d_device* %153)
  %155 = load %struct.wined3d_vertex_pipe_ops*, %struct.wined3d_vertex_pipe_ops** %6, align 8
  %156 = getelementptr inbounds %struct.wined3d_vertex_pipe_ops, %struct.wined3d_vertex_pipe_ops* %155, i32 0, i32 0
  %157 = load i32 (%struct.wined3d_device.0*)*, i32 (%struct.wined3d_device.0*)** %156, align 8
  %158 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %159 = bitcast %struct.wined3d_device* %158 to %struct.wined3d_device.0*
  %160 = call i32 %157(%struct.wined3d_device.0* %159)
  %161 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %13, align 8
  %162 = call i32 @heap_free(%struct.shader_glsl_priv* %161)
  %163 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %136, %92, %50, %38, %25
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i64 @wined3d_log2i(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.shader_glsl_priv* @heap_alloc_zero(i32) #1

declare dso_local i32 @string_buffer_list_init(i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @heap_free(%struct.shader_glsl_priv*) #1

declare dso_local i32 @string_buffer_init(i32*) #1

declare dso_local %struct.shader_glsl_priv* @heap_calloc(i64, i32) #1

declare dso_local i32 @constant_heap_init(i32*, i32) #1

declare dso_local i32 @wine_rb_init(i32*, i32) #1

declare dso_local i32 @constant_heap_free(i32*) #1

declare dso_local i32 @string_buffer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
