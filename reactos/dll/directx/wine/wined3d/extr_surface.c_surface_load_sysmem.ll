; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_load_sysmem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_load_sysmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_surface = type { %struct.wined3d_texture* }
%struct.wined3d_texture = type { %struct.TYPE_2__, i32, %struct.wined3d_texture_sub_resource* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wined3d_texture_sub_resource = type { i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }

@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i32 0, align 4
@WINED3D_LOCATION_RB_RESOLVED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WINED3D_LOCATION_RB_MULTISAMPLE = common dso_local global i32 0, align 4
@WINED3D_LOCATION_TEXTURE_SRGB = common dso_local global i32 0, align 4
@WINED3DUSAGE_DEPTHSTENCIL = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DRAWABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Can't load surface %p with location flags %s into sysmem.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_surface*, %struct.wined3d_context*, i32)* @surface_load_sysmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface_load_sysmem(%struct.wined3d_surface* %0, %struct.wined3d_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_surface*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca %struct.wined3d_texture*, align 8
  %11 = alloca %struct.wined3d_texture_sub_resource*, align 8
  store %struct.wined3d_surface* %0, %struct.wined3d_surface** %5, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %13 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 0
  %16 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %15, align 8
  store %struct.wined3d_gl_info* %16, %struct.wined3d_gl_info** %9, align 8
  %17 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %18 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %17, i32 0, i32 0
  %19 = load %struct.wined3d_texture*, %struct.wined3d_texture** %18, align 8
  store %struct.wined3d_texture* %19, %struct.wined3d_texture** %10, align 8
  %20 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %21 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %20, i32 0, i32 2
  %22 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %22, i64 %24
  store %struct.wined3d_texture_sub_resource* %25, %struct.wined3d_texture_sub_resource** %11, align 8
  %26 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @wined3d_texture_prepare_location(%struct.wined3d_texture* %26, i32 %27, %struct.wined3d_context* %28, i32 %29)
  %31 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %32 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %33 = call i64 @is_multisample_location(%struct.wined3d_texture* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %3
  %36 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %39 = load i32, i32* @WINED3D_LOCATION_RB_RESOLVED, align 4
  %40 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %36, i32 %37, %struct.wined3d_context* %38, i32 %39)
  %41 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %43 = load i32, i32* @WINED3D_LOCATION_RB_RESOLVED, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @read_from_framebuffer(%struct.wined3d_surface* %41, %struct.wined3d_context* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %4, align 4
  br label %126

47:                                               ; preds = %3
  %48 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %11, align 8
  %49 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WINED3D_LOCATION_RB_MULTISAMPLE, align 4
  %52 = load i32, i32* @WINED3D_LOCATION_RB_RESOLVED, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %60 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %61 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %57, i32 %58, %struct.wined3d_context* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %47
  %63 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %11, align 8
  %64 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %67 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %62
  %72 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %73 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %74 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %11, align 8
  %75 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %72, %struct.wined3d_context* %73, i32 %81)
  %83 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %84 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @surface_download_data(%struct.wined3d_surface* %83, %struct.wined3d_gl_info* %84, i32 %85)
  %87 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %88 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %4, align 4
  br label %126

92:                                               ; preds = %62
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %95 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @WINED3DUSAGE_DEPTHSTENCIL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %118, label %101

101:                                              ; preds = %93
  %102 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %11, align 8
  %103 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %110 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %111 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %112 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @read_from_framebuffer(%struct.wined3d_surface* %109, %struct.wined3d_context* %110, i32 %114, i32 %115)
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %4, align 4
  br label %126

118:                                              ; preds = %101, %93
  %119 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %120 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %11, align 8
  %121 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @wined3d_debug_location(i32 %122)
  %124 = call i32 @FIXME(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.wined3d_surface* %119, i32 %123)
  %125 = load i32, i32* @FALSE, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %118, %108, %71, %35
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local i32 @wined3d_texture_prepare_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i64 @is_multisample_location(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_load_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @read_from_framebuffer(%struct.wined3d_surface*, %struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @surface_download_data(%struct.wined3d_surface*, %struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @FIXME(i8*, %struct.wined3d_surface*, i32) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
