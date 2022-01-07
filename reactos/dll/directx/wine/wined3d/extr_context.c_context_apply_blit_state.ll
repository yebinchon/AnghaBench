; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_blit_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_blit_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.wined3d_context = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.wined3d_texture* }
%struct.wined3d_texture = type { %struct.TYPE_14__, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.wined3d_surface* }
%struct.wined3d_surface = type { i32 }
%struct.wined3d_device = type { i32 }

@wined3d_settings = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@WINED3DFMT_NULL = common dso_local global i64 0, align 8
@STATE_FRAMEBUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_apply_blit_state(%struct.wined3d_context* %0, %struct.wined3d_device* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca %struct.wined3d_surface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_device* %1, %struct.wined3d_device** %4, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.wined3d_texture*, %struct.wined3d_texture** %11, align 8
  store %struct.wined3d_texture* %12, %struct.wined3d_texture** %5, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @wined3d_settings, i32 0, i32 0), align 8
  %14 = load i64, i64* @ORM_FBO, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %2
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %16
  %22 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %23 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @wined3d_texture_load(%struct.wined3d_texture* %22, %struct.wined3d_context* %23, i32 %24)
  %26 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %27 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %30 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.wined3d_surface*, %struct.wined3d_surface** %35, align 8
  store %struct.wined3d_surface* %36, %struct.wined3d_surface** %6, align 8
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %38 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %39 = load %struct.wined3d_surface*, %struct.wined3d_surface** %6, align 8
  %40 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %41 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @context_apply_fbo_state_blit(%struct.wined3d_context* %37, i32 %38, %struct.wined3d_surface* %39, i32* null, i32 %43)
  %45 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %46 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @WINED3DFMT_NULL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %55

54:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %65

56:                                               ; preds = %16
  %57 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %58 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %57, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %58, align 8
  %59 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %60 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %61 = call i32 @context_bind_fbo(%struct.wined3d_context* %59, i32 %60, i32 0)
  %62 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %63 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %62, i32 0, i32 0
  %64 = call i32 @context_generate_rt_mask_from_resource(%struct.TYPE_14__* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %56, %55
  br label %70

66:                                               ; preds = %2
  %67 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %68 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %69 = call i32 @context_generate_rt_mask_no_fbo(%struct.wined3d_context* %67, %struct.wined3d_texture* %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %65
  %71 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %72 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = icmp ne %struct.TYPE_12__* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %77 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  br label %83

80:                                               ; preds = %70
  %81 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %82 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %81, i32 0, i32 0
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i32* [ %79, %75 ], [ %82, %80 ]
  store i32* %84, i32** %8, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @context_apply_draw_buffers(%struct.wined3d_context* %90, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32*, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %83
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @wined3d_settings, i32 0, i32 0), align 8
  %97 = load i64, i64* @ORM_FBO, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %101 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %102 = call i32 @context_check_fbo_status(%struct.wined3d_context* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %105 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %106 = call i32 @SetupForBlit(%struct.wined3d_device* %104, %struct.wined3d_context* %105)
  %107 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %108 = load i32, i32* @STATE_FRAMEBUFFER, align 4
  %109 = call i32 @context_invalidate_state(%struct.wined3d_context* %107, i32 %108)
  ret void
}

declare dso_local i32 @wined3d_texture_load(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @context_apply_fbo_state_blit(%struct.wined3d_context*, i32, %struct.wined3d_surface*, i32*, i32) #1

declare dso_local i32 @context_bind_fbo(%struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @context_generate_rt_mask_from_resource(%struct.TYPE_14__*) #1

declare dso_local i32 @context_generate_rt_mask_no_fbo(%struct.wined3d_context*, %struct.wined3d_texture*) #1

declare dso_local i32 @context_apply_draw_buffers(%struct.wined3d_context*, i32) #1

declare dso_local i32 @context_check_fbo_status(%struct.wined3d_context*, i32) #1

declare dso_local i32 @SetupForBlit(%struct.wined3d_device*, %struct.wined3d_context*) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
