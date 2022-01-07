; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_load_shader_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_load_shader_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_state = type { %struct.wined3d_shader_resource_view***, i64**, %struct.wined3d_shader** }
%struct.wined3d_shader_resource_view = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.wined3d_shader = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.wined3d_shader_sampler_map_entry* }
%struct.wined3d_shader_sampler_map_entry = type { i64 }

@WINED3D_SHADER_TYPE_COUNT = common dso_local global i32 0, align 4
@WINED3D_MAX_CBS = common dso_local global i32 0, align 4
@WINED3D_RTYPE_BUFFER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @context_load_shader_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_load_shader_resources(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_shader_sampler_map_entry*, align 8
  %8 = alloca %struct.wined3d_shader_resource_view*, align 8
  %9 = alloca %struct.wined3d_shader*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %131, %3
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @WINED3D_SHADER_TYPE_COUNT, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %134

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %10, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %131

23:                                               ; preds = %16
  %24 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %25 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %24, i32 0, i32 2
  %26 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %26, i64 %28
  %30 = load %struct.wined3d_shader*, %struct.wined3d_shader** %29, align 8
  store %struct.wined3d_shader* %30, %struct.wined3d_shader** %9, align 8
  %31 = icmp ne %struct.wined3d_shader* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %131

33:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %67, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @WINED3D_MAX_CBS, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %40 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %39, i32 0, i32 1
  %41 = load i64**, i64*** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %38
  %52 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %53 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %52, i32 0, i32 1
  %54 = load i64**, i64*** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64*, i64** %54, i64 %56
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %64 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %65 = call i32 @wined3d_buffer_load(i64 %62, %struct.wined3d_context* %63, %struct.wined3d_state* %64)
  br label %66

66:                                               ; preds = %51, %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %34

70:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %127, %70
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.wined3d_shader*, %struct.wined3d_shader** %9, align 8
  %74 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ult i32 %72, %77
  br i1 %78, label %79, label %130

79:                                               ; preds = %71
  %80 = load %struct.wined3d_shader*, %struct.wined3d_shader** %9, align 8
  %81 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %84, i64 %86
  store %struct.wined3d_shader_sampler_map_entry* %87, %struct.wined3d_shader_sampler_map_entry** %7, align 8
  %88 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %89 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %88, i32 0, i32 0
  %90 = load %struct.wined3d_shader_resource_view***, %struct.wined3d_shader_resource_view**** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.wined3d_shader_resource_view**, %struct.wined3d_shader_resource_view*** %90, i64 %92
  %94 = load %struct.wined3d_shader_resource_view**, %struct.wined3d_shader_resource_view*** %93, align 8
  %95 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %7, align 8
  %96 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %94, i64 %97
  %99 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %98, align 8
  store %struct.wined3d_shader_resource_view* %99, %struct.wined3d_shader_resource_view** %8, align 8
  %100 = icmp ne %struct.wined3d_shader_resource_view* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %79
  br label %127

102:                                              ; preds = %79
  %103 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %8, align 8
  %104 = getelementptr inbounds %struct.wined3d_shader_resource_view, %struct.wined3d_shader_resource_view* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @WINED3D_RTYPE_BUFFER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %8, align 8
  %112 = getelementptr inbounds %struct.wined3d_shader_resource_view, %struct.wined3d_shader_resource_view* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = call i64 @buffer_from_resource(%struct.TYPE_7__* %113)
  %115 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %116 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %117 = call i32 @wined3d_buffer_load(i64 %114, %struct.wined3d_context* %115, %struct.wined3d_state* %116)
  br label %126

118:                                              ; preds = %102
  %119 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %8, align 8
  %120 = getelementptr inbounds %struct.wined3d_shader_resource_view, %struct.wined3d_shader_resource_view* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = call i32 @texture_from_resource(%struct.TYPE_7__* %121)
  %123 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %124 = load i32, i32* @FALSE, align 4
  %125 = call i32 @wined3d_texture_load(i32 %122, %struct.wined3d_context* %123, i32 %124)
  br label %126

126:                                              ; preds = %118, %110
  br label %127

127:                                              ; preds = %126, %101
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %71

130:                                              ; preds = %71
  br label %131

131:                                              ; preds = %130, %32, %22
  %132 = load i32, i32* %10, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %12

134:                                              ; preds = %12
  ret void
}

declare dso_local i32 @wined3d_buffer_load(i64, %struct.wined3d_context*, %struct.wined3d_state*) #1

declare dso_local i64 @buffer_from_resource(%struct.TYPE_7__*) #1

declare dso_local i32 @wined3d_texture_load(i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @texture_from_resource(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
