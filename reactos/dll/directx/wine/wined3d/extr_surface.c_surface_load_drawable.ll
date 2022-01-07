; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_load_drawable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_load_drawable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.wined3d_surface = type { %struct.wined3d_texture* }
%struct.wined3d_texture = type { i32, %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, %struct.wined3d_device* }
%struct.wined3d_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*, i32*, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.wined3d_context = type { i32 }

@WINED3DUSAGE_DEPTHSTENCIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unimplemented copy from %s for depth/stencil buffers.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@wined3d_settings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"Trying to load offscreen surface into WINED3D_LOCATION_DRAWABLE.\0A\00", align 1
@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i32 0, align 4
@WINED3D_BLIT_OP_COLOR_BLIT = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DRAWABLE = common dso_local global i32 0, align 4
@WINED3D_TEXF_POINT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_surface*, %struct.wined3d_context*)* @surface_load_drawable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface_load_drawable(%struct.wined3d_surface* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_surface*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_texture*, align 8
  %8 = alloca %struct.wined3d_surface*, align 8
  %9 = alloca %struct.wined3d_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_surface* %0, %struct.wined3d_surface** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  %13 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %14 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %16 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %15, i32 0, i32 0
  %17 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  store %struct.wined3d_texture* %17, %struct.wined3d_texture** %7, align 8
  store %struct.wined3d_surface* null, %struct.wined3d_surface** %8, align 8
  %18 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %19 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WINED3DUSAGE_DEPTHSTENCIL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %27 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @wined3d_debug_location(i32 %34)
  %36 = call i32 @FIXME(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %110

38:                                               ; preds = %2
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wined3d_settings, i32 0, i32 0), align 8
  %40 = load i64, i64* @ORM_FBO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %44 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %43, i32 0, i32 1
  %45 = call i64 @wined3d_resource_is_offscreen(%struct.TYPE_9__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 @ERR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  br label %110

50:                                               ; preds = %42, %38
  %51 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %52 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.wined3d_device*, %struct.wined3d_device** %53, align 8
  store %struct.wined3d_device* %54, %struct.wined3d_device** %9, align 8
  %55 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %56 = call %struct.wined3d_surface* @context_get_rt_surface(%struct.wined3d_context* %55)
  store %struct.wined3d_surface* %56, %struct.wined3d_surface** %8, align 8
  %57 = load %struct.wined3d_surface*, %struct.wined3d_surface** %8, align 8
  %58 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %59 = icmp ne %struct.wined3d_surface* %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %62 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %61, %struct.wined3d_texture* %62, i32 %63)
  store %struct.wined3d_context* %64, %struct.wined3d_context** %5, align 8
  br label %66

65:                                               ; preds = %50
  store %struct.wined3d_surface* null, %struct.wined3d_surface** %8, align 8
  br label %66

66:                                               ; preds = %65, %60
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %69 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = urem i32 %67, %70
  store i32 %71, i32* %10, align 4
  %72 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @wined3d_texture_get_level_width(%struct.wined3d_texture* %72, i32 %73)
  %75 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @wined3d_texture_get_level_height(%struct.wined3d_texture* %75, i32 %76)
  %78 = call i32 @SetRect(i32* %11, i32 0, i32 0, i32 %74, i32 %77)
  %79 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %82 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %83 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %79, i32 %80, %struct.wined3d_context* %81, i32 %82)
  %84 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %85 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_10__*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*, i32*, i32)*, i32 (%struct.TYPE_10__*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, i32*, %struct.wined3d_surface*, i32, i32*, i32*, i32)** %89, align 8
  %91 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %92 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* @WINED3D_BLIT_OP_COLOR_BLIT, align 4
  %95 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %96 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %97 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %98 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %99 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %100 = load i32, i32* @WINED3D_TEXF_POINT, align 4
  %101 = call i32 %90(%struct.TYPE_10__* %93, i32 %94, %struct.wined3d_context* %95, %struct.wined3d_surface* %96, i32 %97, i32* %11, %struct.wined3d_surface* %98, i32 %99, i32* %11, i32* null, i32 %100)
  %102 = load %struct.wined3d_surface*, %struct.wined3d_surface** %8, align 8
  %103 = icmp ne %struct.wined3d_surface* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %66
  %105 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %106 = load %struct.wined3d_surface*, %struct.wined3d_surface** %8, align 8
  %107 = call i32 @context_restore(%struct.wined3d_context* %105, %struct.wined3d_surface* %106)
  br label %108

108:                                              ; preds = %104, %66
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %47, %25
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i64 @wined3d_resource_is_offscreen(%struct.TYPE_9__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.wined3d_surface* @context_get_rt_surface(%struct.wined3d_context*) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, %struct.wined3d_texture*, i32) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_load_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @context_restore(%struct.wined3d_context*, %struct.wined3d_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
