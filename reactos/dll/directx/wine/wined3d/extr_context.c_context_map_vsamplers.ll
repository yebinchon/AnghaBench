; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_map_vsamplers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_map_vsamplers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32*, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_state = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.wined3d_shader_resource_info* }
%struct.wined3d_shader_resource_info = type { i64 }

@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i64 0, align 8
@MAX_COMBINED_SAMPLERS = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@MAX_VERTEX_SAMPLERS = common dso_local global i32 0, align 4
@MAX_FRAGMENT_SAMPLERS = common dso_local global i64 0, align 8
@WINED3D_UNMAPPED_STAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Couldn't find a free texture unit for vertex sampler %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, i64, %struct.wined3d_state*)* @context_map_vsamplers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_map_vsamplers(%struct.wined3d_context* %0, i64 %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca %struct.wined3d_shader_resource_info*, align 8
  %8 = alloca %struct.wined3d_shader_resource_info*, align 8
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %6, align 8
  %13 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %14 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %16 = load i64, i64* @WINED3D_SHADER_TYPE_VERTEX, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %15, i64 %16
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %20, align 8
  store %struct.wined3d_shader_resource_info* %21, %struct.wined3d_shader_resource_info** %7, align 8
  store %struct.wined3d_shader_resource_info* null, %struct.wined3d_shader_resource_info** %8, align 8
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %23 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %22, i32 0, i32 1
  %24 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %23, align 8
  store %struct.wined3d_gl_info* %24, %struct.wined3d_gl_info** %9, align 8
  %25 = load i32, i32* @MAX_COMBINED_SAMPLERS, align 4
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %27 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @min(i32 %25, i32 %29)
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %3
  %35 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %36 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %42, align 8
  store %struct.wined3d_shader_resource_info* %43, %struct.wined3d_shader_resource_info** %8, align 8
  br label %44

44:                                               ; preds = %34, %3
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %109, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @MAX_VERTEX_SAMPLERS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %112

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @MAX_FRAGMENT_SAMPLERS, align 8
  %53 = add i64 %51, %52
  store i64 %53, i64* %12, align 8
  %54 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %54, i64 %56
  %58 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %108

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %92, %61
  %63 = load i32, i32* %10, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %67 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @context_unit_free_for_vs(%struct.wined3d_context* %66, %struct.wined3d_shader_resource_info* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %73 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @context_map_stage(%struct.wined3d_context* %81, i64 %82, i32 %83)
  %85 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @STATE_SAMPLER(i64 %86)
  %88 = call i32 @context_invalidate_state(%struct.wined3d_context* %85, i32 %87)
  br label %89

89:                                               ; preds = %80, %71
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %10, align 4
  br label %95

92:                                               ; preds = %65
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %10, align 4
  br label %62

95:                                               ; preds = %89, %62
  %96 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %97 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @WINED3D_UNMAPPED_STAGE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @WARN(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %104, %95
  br label %108

108:                                              ; preds = %107, %49
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %45

112:                                              ; preds = %45
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @context_unit_free_for_vs(%struct.wined3d_context*, %struct.wined3d_shader_resource_info*, i32) #1

declare dso_local i32 @context_map_stage(%struct.wined3d_context*, i64, i32) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_SAMPLER(i64) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
