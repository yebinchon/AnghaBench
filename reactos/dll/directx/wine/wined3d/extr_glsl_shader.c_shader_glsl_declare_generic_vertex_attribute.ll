; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_declare_generic_vertex_attribute.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_declare_generic_vertex_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_shader_signature_element = type { i32, i64, i32 }

@WINED3D_SV_VERTEX_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"vec4 vs_in%u = vec4(intBitsToFloat(gl_VertexID), 0.0, 0.0, 0.0);\0A\00", align 1
@WINED3D_SV_INSTANCE_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"vec4 vs_in%u = vec4(intBitsToFloat(gl_InstanceID), 0.0, 0.0, 0.0);\0A\00", align 1
@WINED3D_SV_POSITION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Unhandled sysval semantic %#x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"layout(location = %u) \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"uvec\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ivec\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Unhandled type %#x.\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%s vec4 vs_in%u;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*, %struct.wined3d_shader_signature_element*)* @shader_glsl_declare_generic_vertex_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_declare_generic_vertex_attribute(%struct.wined3d_string_buffer* %0, %struct.wined3d_gl_info* %1, %struct.wined3d_shader_signature_element* %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_shader_signature_element*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  store %struct.wined3d_shader_signature_element* %2, %struct.wined3d_shader_signature_element** %6, align 8
  %8 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WINED3D_SV_VERTEX_ID, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %17, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %80

20:                                               ; preds = %3
  %21 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WINED3D_SV_INSTANCE_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %27, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %80

30:                                               ; preds = %20
  %31 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @WINED3D_SV_POSITION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %43 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %35, %30
  %48 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %49 = call i64 @shader_glsl_use_explicit_attrib_location(%struct.wined3d_gl_info* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %57 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %69 [
    i32 129, label %59
    i32 130, label %64
    i32 128, label %74
    i32 131, label %74
  ]

59:                                               ; preds = %55
  %60 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %61 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @shader_glsl_declare_typed_vertex_attribute(%struct.wined3d_string_buffer* %60, %struct.wined3d_gl_info* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  br label %80

64:                                               ; preds = %55
  %65 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %66 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @shader_glsl_declare_typed_vertex_attribute(%struct.wined3d_string_buffer* %65, %struct.wined3d_gl_info* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  br label %80

69:                                               ; preds = %55
  %70 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %71 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %55, %55, %69
  %75 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %76 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %77 = call i32 @get_attribute_keyword(%struct.wined3d_gl_info* %76)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, ...) @shader_addline(%struct.wined3d_string_buffer* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %16, %26, %74, %64, %59
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, ...) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @shader_glsl_use_explicit_attrib_location(%struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_glsl_declare_typed_vertex_attribute(%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*, i8*, i8*, i32) #1

declare dso_local i32 @get_attribute_keyword(%struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
