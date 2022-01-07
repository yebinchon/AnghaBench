; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_upload_from_surface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_upload_from_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_surface = type { %struct.wined3d_texture* }
%struct.wined3d_texture = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_bo_address = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"dst_surface %p, dst_point %s, src_surface %p, src_rect %s.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i32 0, align 4
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_surface*, i32*, %struct.wined3d_surface*, %struct.TYPE_9__*)* @surface_upload_from_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface_upload_from_surface(%struct.wined3d_surface* %0, i32* %1, %struct.wined3d_surface* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca %struct.wined3d_surface*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wined3d_surface*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wined3d_texture*, align 8
  %12 = alloca %struct.wined3d_texture*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_gl_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.wined3d_context*, align 8
  %19 = alloca %struct.wined3d_bo_address, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.wined3d_surface* %0, %struct.wined3d_surface** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.wined3d_surface* %2, %struct.wined3d_surface** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %22 = load %struct.wined3d_surface*, %struct.wined3d_surface** %7, align 8
  %23 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %25 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.wined3d_surface*, %struct.wined3d_surface** %7, align 8
  %27 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %26, i32 0, i32 0
  %28 = load %struct.wined3d_texture*, %struct.wined3d_texture** %27, align 8
  store %struct.wined3d_texture* %28, %struct.wined3d_texture** %11, align 8
  %29 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %30 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %29, i32 0, i32 0
  %31 = load %struct.wined3d_texture*, %struct.wined3d_texture** %30, align 8
  store %struct.wined3d_texture* %31, %struct.wined3d_texture** %12, align 8
  %32 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @wine_dbgstr_point(i32* %33)
  %35 = load %struct.wined3d_surface*, %struct.wined3d_surface** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = call i32 @wine_dbgstr_rect(%struct.TYPE_9__* %36)
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.wined3d_surface* %32, i32 %34, %struct.wined3d_surface* %35, i32 %37)
  %39 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %40 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.wined3d_context* @context_acquire(i32 %42, i32* null, i32 0)
  store %struct.wined3d_context* %43, %struct.wined3d_context** %18, align 8
  %44 = load %struct.wined3d_context*, %struct.wined3d_context** %18, align 8
  %45 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %44, i32 0, i32 0
  %46 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %45, align 8
  store %struct.wined3d_gl_info* %46, %struct.wined3d_gl_info** %15, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  store i64 %53, i64* %20, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  store i64 %60, i64* %21, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %63 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = urem i32 %61, %64
  store i32 %65, i32* %17, align 4
  %66 = load i64, i64* %20, align 8
  %67 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %68 = load i32, i32* %17, align 4
  %69 = call i64 @wined3d_texture_get_level_width(%struct.wined3d_texture* %67, i32 %68)
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %4
  %72 = load i64, i64* %21, align 8
  %73 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %74 = load i32, i32* %17, align 4
  %75 = call i64 @wined3d_texture_get_level_height(%struct.wined3d_texture* %73, i32 %74)
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %79 = load %struct.wined3d_context*, %struct.wined3d_context** %18, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @wined3d_texture_prepare_texture(%struct.wined3d_texture* %78, %struct.wined3d_context* %79, i32 %80)
  br label %88

82:                                               ; preds = %71, %4
  %83 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.wined3d_context*, %struct.wined3d_context** %18, align 8
  %86 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %87 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %83, i32 %84, %struct.wined3d_context* %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %77
  %89 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %90 = load %struct.wined3d_context*, %struct.wined3d_context** %18, align 8
  %91 = load i32, i32* @FALSE, align 4
  %92 = call i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %89, %struct.wined3d_context* %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.wined3d_texture*, %struct.wined3d_texture** %11, align 8
  %95 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = urem i32 %93, %96
  store i32 %97, i32* %16, align 4
  %98 = load %struct.wined3d_texture*, %struct.wined3d_texture** %11, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.wined3d_texture*, %struct.wined3d_texture** %11, align 8
  %101 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %100, i32 0, i32 2
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @wined3d_texture_get_memory(%struct.wined3d_texture* %98, i32 %99, %struct.wined3d_bo_address* %19, i32 %107)
  %109 = load %struct.wined3d_texture*, %struct.wined3d_texture** %11, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @wined3d_texture_get_pitch(%struct.wined3d_texture* %109, i32 %110, i32* %13, i32* %14)
  %112 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %113 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %15, align 8
  %114 = load %struct.wined3d_texture*, %struct.wined3d_texture** %11, align 8
  %115 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* @FALSE, align 4
  %122 = call i32 @wined3d_const_bo_address(%struct.wined3d_bo_address* %19)
  %123 = call i32 @wined3d_surface_upload_data(%struct.wined3d_surface* %112, %struct.wined3d_gl_info* %113, i32 %117, %struct.TYPE_9__* %118, i32 %119, i32* %120, i32 %121, i32 %122)
  %124 = load %struct.wined3d_context*, %struct.wined3d_context** %18, align 8
  %125 = call i32 @context_release(%struct.wined3d_context* %124)
  %126 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %129 = call i32 @wined3d_texture_validate_location(%struct.wined3d_texture* %126, i32 %127, i32 %128)
  %130 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %133 = xor i32 %132, -1
  %134 = call i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture* %130, i32 %131, i32 %133)
  %135 = load i32, i32* @WINED3D_OK, align 4
  ret i32 %135
}

declare dso_local i32 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_surface*, i32, %struct.wined3d_surface*, i32) #1

declare dso_local i32 @wine_dbgstr_point(i32*) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_9__*) #1

declare dso_local %struct.wined3d_context* @context_acquire(i32, i32*, i32) #1

declare dso_local i64 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i64 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_prepare_texture(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_load_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_get_memory(%struct.wined3d_texture*, i32, %struct.wined3d_bo_address*, i32) #1

declare dso_local i32 @wined3d_texture_get_pitch(%struct.wined3d_texture*, i32, i32*, i32*) #1

declare dso_local i32 @wined3d_surface_upload_data(%struct.wined3d_surface*, %struct.wined3d_gl_info*, i32, %struct.TYPE_9__*, i32, i32*, i32, i32) #1

declare dso_local i32 @wined3d_const_bo_address(%struct.wined3d_bo_address*) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local i32 @wined3d_texture_validate_location(%struct.wined3d_texture*, i32, i32) #1

declare dso_local i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
