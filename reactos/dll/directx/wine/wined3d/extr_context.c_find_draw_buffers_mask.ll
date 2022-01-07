; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_find_draw_buffers_mask.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_find_draw_buffers_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.wined3d_context = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.wined3d_state = type { %struct.wined3d_shader**, %struct.TYPE_7__* }
%struct.wined3d_shader = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.wined3d_rendertarget_view** }
%struct.wined3d_rendertarget_view = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@wined3d_settings = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@WINED3DFMT_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.wined3d_state*)* @find_draw_buffers_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_draw_buffers_mask(%struct.wined3d_context* %0, %struct.wined3d_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca %struct.wined3d_rendertarget_view**, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  %11 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %14, align 8
  store %struct.wined3d_rendertarget_view** %15, %struct.wined3d_rendertarget_view*** %6, align 8
  %16 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %16, i32 0, i32 0
  %18 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %17, align 8
  %19 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %18, i64 %19
  %21 = load %struct.wined3d_shader*, %struct.wined3d_shader** %20, align 8
  store %struct.wined3d_shader* %21, %struct.wined3d_shader** %7, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @wined3d_settings, i32 0, i32 0), align 8
  %23 = load i64, i64* @ORM_FBO, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %27 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %6, align 8
  %28 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %27, i64 0
  %29 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %28, align 8
  %30 = call %struct.TYPE_12__* @wined3d_rendertarget_view_get_surface(%struct.wined3d_rendertarget_view* %29)
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @context_generate_rt_mask_no_fbo(%struct.wined3d_context* %26, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %114

34:                                               ; preds = %2
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %36 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %6, align 8
  %41 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %40, i64 0
  %42 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %41, align 8
  %43 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @context_generate_rt_mask_from_resource(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %114

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %49 = icmp ne %struct.wined3d_shader* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %50
  %57 = phi i32 [ %54, %50 ], [ 1, %55 ]
  store i32 %57, i32* %8, align 4
  %58 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %59 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %60 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @wined3d_dualblend_enabled(%struct.wined3d_state* %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %66 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %80

72:                                               ; preds = %56
  %73 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %74 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %72, %64
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %111, %80
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %82
  %86 = call i32 @wined3d_bit_scan(i32* %9)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %87, i64 %89
  %91 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %90, align 8
  %92 = icmp ne %struct.wined3d_rendertarget_view* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %85
  %94 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %94, i64 %96
  %98 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %97, align 8
  %99 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @WINED3DFMT_NULL, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %93, %85
  %106 = load i32, i32* %10, align 4
  %107 = shl i32 1, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %105, %93
  br label %82

112:                                              ; preds = %82
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %39, %25
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @context_generate_rt_mask_no_fbo(%struct.wined3d_context*, i32) #1

declare dso_local %struct.TYPE_12__* @wined3d_rendertarget_view_get_surface(%struct.wined3d_rendertarget_view*) #1

declare dso_local i32 @context_generate_rt_mask_from_resource(i32) #1

declare dso_local i64 @wined3d_dualblend_enabled(%struct.wined3d_state*, i32) #1

declare dso_local i32 @wined3d_bit_scan(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
