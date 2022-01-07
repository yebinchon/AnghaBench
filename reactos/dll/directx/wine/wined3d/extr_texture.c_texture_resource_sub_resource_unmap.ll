; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture_resource_sub_resource_unmap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture_resource_sub_resource_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_resource = type { i32, %struct.wined3d_device* }
%struct.wined3d_device = type { i64 }
%struct.wined3d_texture_sub_resource = type { i32, i32 }
%struct.wined3d_context = type { i32 }
%struct.wined3d_texture = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.wined3d_texture* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_bo_address = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"resource %p, sub_resource_idx %u.\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Trying to unmap unmapped sub-resource.\0A\00", align 1
@WINED3D_TEXTURE_DC_IN_USE = common dso_local global i32 0, align 4
@WINED3D_OK = common dso_local global i32 0, align 4
@WINEDDERR_NOTLOCKED = common dso_local global i32 0, align 4
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DRAWABLE = common dso_local global i32 0, align 4
@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_resource*, i32)* @texture_resource_sub_resource_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @texture_resource_sub_resource_unmap(%struct.wined3d_resource* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_texture_sub_resource*, align 8
  %7 = alloca %struct.wined3d_device*, align 8
  %8 = alloca %struct.wined3d_context*, align 8
  %9 = alloca %struct.wined3d_texture*, align 8
  %10 = alloca %struct.wined3d_bo_address, align 4
  store %struct.wined3d_resource* %0, %struct.wined3d_resource** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %11, i32 0, i32 1
  %13 = load %struct.wined3d_device*, %struct.wined3d_device** %12, align 8
  store %struct.wined3d_device* %13, %struct.wined3d_device** %7, align 8
  store %struct.wined3d_context* null, %struct.wined3d_context** %8, align 8
  %14 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.wined3d_resource* %14, i32 %15)
  %17 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %18 = call %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource* %17)
  store %struct.wined3d_texture* %18, %struct.wined3d_texture** %9, align 8
  %19 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.wined3d_texture_sub_resource* @wined3d_texture_get_sub_resource(%struct.wined3d_texture* %19, i32 %20)
  store %struct.wined3d_texture_sub_resource* %21, %struct.wined3d_texture_sub_resource** %6, align 8
  %22 = icmp ne %struct.wined3d_texture_sub_resource* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %24, i32* %3, align 4
  br label %121

25:                                               ; preds = %2
  %26 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %6, align 8
  %27 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %33 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @WINED3D_TEXTURE_DC_IN_USE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @WINED3D_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %121

40:                                               ; preds = %30
  %41 = load i32, i32* @WINEDDERR_NOTLOCKED, align 4
  store i32 %41, i32* %3, align 4
  br label %121

42:                                               ; preds = %25
  %43 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %44 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %49 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %48, i32* null, i32 0)
  store %struct.wined3d_context* %49, %struct.wined3d_context** %8, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %54 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @wined3d_texture_get_memory(%struct.wined3d_texture* %51, i32 %52, %struct.wined3d_bo_address* %10, i32 %56)
  %58 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %59 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %60 = call i32 @context_unmap_bo_address(%struct.wined3d_context* %58, %struct.wined3d_bo_address* %10, i32 %59)
  %61 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %62 = icmp ne %struct.wined3d_context* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %65 = call i32 @context_release(%struct.wined3d_context* %64)
  br label %66

66:                                               ; preds = %63, %50
  %67 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %68 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = icmp ne %struct.TYPE_6__* %69, null
  br i1 %70, label %71, label %101

71:                                               ; preds = %66
  %72 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %73 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.wined3d_texture*, %struct.wined3d_texture** %75, align 8
  %77 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %78 = icmp eq %struct.wined3d_texture* %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %71
  %80 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %6, align 8
  %81 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %84 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %79
  %89 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %90 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %94, align 8
  %96 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %97 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = call i32 %95(%struct.TYPE_6__* %98)
  br label %100

100:                                              ; preds = %88, %79
  br label %101

101:                                              ; preds = %100, %71, %66
  %102 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %6, align 8
  %103 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %107 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %101
  %112 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %113 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %118 = call i32 @wined3d_texture_update_map_binding(%struct.wined3d_texture* %117)
  br label %119

119:                                              ; preds = %116, %111, %101
  %120 = load i32, i32* @WINED3D_OK, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %40, %38, %23
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_resource*, i32) #1

declare dso_local %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource*) #1

declare dso_local %struct.wined3d_texture_sub_resource* @wined3d_texture_get_sub_resource(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @wined3d_texture_get_memory(%struct.wined3d_texture*, i32, %struct.wined3d_bo_address*, i32) #1

declare dso_local i32 @context_unmap_bo_address(%struct.wined3d_context*, %struct.wined3d_bo_address*, i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local i32 @wined3d_texture_update_map_binding(%struct.wined3d_texture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
