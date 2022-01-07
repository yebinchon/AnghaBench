; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_bind_shader_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_bind_shader_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_device* }
%struct.wined3d_device = type { %struct.wined3d_sampler*, %struct.wined3d_sampler* }
%struct.wined3d_sampler = type { i32 }
%struct.wined3d_state = type { %struct.wined3d_sampler***, %struct.wined3d_shader_resource_view***, %struct.wined3d_shader** }
%struct.wined3d_shader_resource_view = type { i32 }
%struct.wined3d_shader = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.wined3d_shader_sampler_map_entry* }
%struct.wined3d_shader_sampler_map_entry = type { i32, i64, i64 }

@.str = private unnamed_addr constant [57 x i8] c"Shader %p needs %u samplers, but only %u are supported.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"No resource view bound at index %u, %u.\0A\00", align 1
@WINED3D_SAMPLER_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32)* @context_bind_shader_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_bind_shader_resources(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_device*, align 8
  %13 = alloca %struct.wined3d_shader_sampler_map_entry*, align 8
  %14 = alloca %struct.wined3d_shader_resource_view*, align 8
  %15 = alloca %struct.wined3d_shader*, align 8
  %16 = alloca %struct.wined3d_sampler*, align 8
  %17 = alloca i32*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %18, i32 0, i32 0
  %20 = load %struct.wined3d_device*, %struct.wined3d_device** %19, align 8
  store %struct.wined3d_device* %20, %struct.wined3d_device** %12, align 8
  %21 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %22 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %21, i32 0, i32 2
  %23 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %23, i64 %25
  %27 = load %struct.wined3d_shader*, %struct.wined3d_shader** %26, align 8
  store %struct.wined3d_shader* %27, %struct.wined3d_shader** %15, align 8
  %28 = icmp ne %struct.wined3d_shader* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %137

30:                                               ; preds = %3
  %31 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %32 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32* @context_get_tex_unit_mapping(%struct.wined3d_context* %31, i32* %34, i32* %9, i32* %10)
  store i32* %35, i32** %17, align 8
  %36 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @FIXME(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.wined3d_shader* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %30
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %134, %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %137

57:                                               ; preds = %53
  %58 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %59 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %62, i64 %64
  store %struct.wined3d_shader_sampler_map_entry* %65, %struct.wined3d_shader_sampler_map_entry** %13, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %13, align 8
  %68 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add i32 %66, %69
  store i32 %70, i32* %7, align 4
  %71 = load i32*, i32** %17, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %57
  %74 = load i32*, i32** %17, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %73, %57
  %80 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %81 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %80, i32 0, i32 1
  %82 = load %struct.wined3d_shader_resource_view***, %struct.wined3d_shader_resource_view**** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.wined3d_shader_resource_view**, %struct.wined3d_shader_resource_view*** %82, i64 %84
  %86 = load %struct.wined3d_shader_resource_view**, %struct.wined3d_shader_resource_view*** %85, align 8
  %87 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %13, align 8
  %88 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %86, i64 %89
  %91 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %90, align 8
  store %struct.wined3d_shader_resource_view* %91, %struct.wined3d_shader_resource_view** %14, align 8
  %92 = icmp ne %struct.wined3d_shader_resource_view* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %13, align 8
  %96 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %94, i64 %97)
  br label %134

99:                                               ; preds = %79
  %100 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %13, align 8
  %101 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @WINED3D_SAMPLER_DEFAULT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct.wined3d_device*, %struct.wined3d_device** %12, align 8
  %107 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %106, i32 0, i32 1
  %108 = load %struct.wined3d_sampler*, %struct.wined3d_sampler** %107, align 8
  store %struct.wined3d_sampler* %108, %struct.wined3d_sampler** %16, align 8
  br label %128

109:                                              ; preds = %99
  %110 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %111 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %110, i32 0, i32 0
  %112 = load %struct.wined3d_sampler***, %struct.wined3d_sampler**** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.wined3d_sampler**, %struct.wined3d_sampler*** %112, i64 %114
  %116 = load %struct.wined3d_sampler**, %struct.wined3d_sampler*** %115, align 8
  %117 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %13, align 8
  %118 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.wined3d_sampler*, %struct.wined3d_sampler** %116, i64 %119
  %121 = load %struct.wined3d_sampler*, %struct.wined3d_sampler** %120, align 8
  store %struct.wined3d_sampler* %121, %struct.wined3d_sampler** %16, align 8
  %122 = icmp ne %struct.wined3d_sampler* %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %109
  %124 = load %struct.wined3d_device*, %struct.wined3d_device** %12, align 8
  %125 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %124, i32 0, i32 0
  %126 = load %struct.wined3d_sampler*, %struct.wined3d_sampler** %125, align 8
  store %struct.wined3d_sampler* %126, %struct.wined3d_sampler** %16, align 8
  br label %127

127:                                              ; preds = %123, %109
  br label %128

128:                                              ; preds = %127, %105
  %129 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %14, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.wined3d_sampler*, %struct.wined3d_sampler** %16, align 8
  %132 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %133 = call i32 @wined3d_shader_resource_view_bind(%struct.wined3d_shader_resource_view* %129, i32 %130, %struct.wined3d_sampler* %131, %struct.wined3d_context* %132)
  br label %134

134:                                              ; preds = %128, %93
  %135 = load i32, i32* %11, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %53

137:                                              ; preds = %29, %53
  ret void
}

declare dso_local i32* @context_get_tex_unit_mapping(%struct.wined3d_context*, i32*, i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, %struct.wined3d_shader*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @WARN(i8*, i32, i64) #1

declare dso_local i32 @wined3d_shader_resource_view_bind(%struct.wined3d_shader_resource_view*, i32, %struct.wined3d_sampler*, %struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
