; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_acquire_shader_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_acquire_shader_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_state = type { %struct.wined3d_shader_resource_view***, %struct.TYPE_4__***, %struct.wined3d_shader** }
%struct.wined3d_shader_resource_view = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_shader = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.wined3d_shader_sampler_map_entry* }
%struct.wined3d_shader_sampler_map_entry = type { i64 }

@WINED3D_SHADER_TYPE_COUNT = common dso_local global i32 0, align 4
@WINED3D_MAX_CBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_state*, i32)* @acquire_shader_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acquire_shader_resources(%struct.wined3d_state* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_shader_sampler_map_entry*, align 8
  %6 = alloca %struct.wined3d_shader_resource_view*, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wined3d_state* %0, %struct.wined3d_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %108, %2
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @WINED3D_SHADER_TYPE_COUNT, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %111

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %108

21:                                               ; preds = %14
  %22 = load %struct.wined3d_state*, %struct.wined3d_state** %3, align 8
  %23 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %22, i32 0, i32 2
  %24 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %24, i64 %26
  %28 = load %struct.wined3d_shader*, %struct.wined3d_shader** %27, align 8
  store %struct.wined3d_shader* %28, %struct.wined3d_shader** %7, align 8
  %29 = icmp ne %struct.wined3d_shader* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %108

31:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @WINED3D_MAX_CBS, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load %struct.wined3d_state*, %struct.wined3d_state** %3, align 8
  %38 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %39, i64 %41
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %36
  %50 = load %struct.wined3d_state*, %struct.wined3d_state** %3, align 8
  %51 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__***, %struct.TYPE_4__**** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %52, i64 %54
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @wined3d_resource_acquire(i32* %61)
  br label %63

63:                                               ; preds = %49, %36
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %32

67:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %104, %67
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %71 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %69, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %68
  %77 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %78 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %81, i64 %83
  store %struct.wined3d_shader_sampler_map_entry* %84, %struct.wined3d_shader_sampler_map_entry** %5, align 8
  %85 = load %struct.wined3d_state*, %struct.wined3d_state** %3, align 8
  %86 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %85, i32 0, i32 0
  %87 = load %struct.wined3d_shader_resource_view***, %struct.wined3d_shader_resource_view**** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.wined3d_shader_resource_view**, %struct.wined3d_shader_resource_view*** %87, i64 %89
  %91 = load %struct.wined3d_shader_resource_view**, %struct.wined3d_shader_resource_view*** %90, align 8
  %92 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %5, align 8
  %93 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %91, i64 %94
  %96 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %95, align 8
  store %struct.wined3d_shader_resource_view* %96, %struct.wined3d_shader_resource_view** %6, align 8
  %97 = icmp ne %struct.wined3d_shader_resource_view* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %76
  br label %104

99:                                               ; preds = %76
  %100 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %6, align 8
  %101 = getelementptr inbounds %struct.wined3d_shader_resource_view, %struct.wined3d_shader_resource_view* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @wined3d_resource_acquire(i32* %102)
  br label %104

104:                                              ; preds = %99, %98
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %68

107:                                              ; preds = %68
  br label %108

108:                                              ; preds = %107, %30, %20
  %109 = load i32, i32* %8, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %10

111:                                              ; preds = %10
  ret void
}

declare dso_local i32 @wined3d_resource_acquire(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
