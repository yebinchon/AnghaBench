; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_ffp_blitter_use_cpu_clear.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_ffp_blitter_use_cpu_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_rendertarget_view = type { i64, %struct.wined3d_resource* }
%struct.wined3d_resource = type { i64, i32, i32 }
%struct.wined3d_texture = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WINED3D_RTYPE_BUFFER = common dso_local global i64 0, align 8
@WINED3D_RESOURCE_ACCESS_GPU = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DISCARDED = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_PIN_SYSMEM = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_CONVERTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_rendertarget_view*)* @ffp_blitter_use_cpu_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffp_blitter_use_cpu_clear(%struct.wined3d_rendertarget_view* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_rendertarget_view*, align 8
  %4 = alloca %struct.wined3d_resource*, align 8
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca i32, align 4
  store %struct.wined3d_rendertarget_view* %0, %struct.wined3d_rendertarget_view** %3, align 8
  %7 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %3, align 8
  %8 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %7, i32 0, i32 1
  %9 = load %struct.wined3d_resource*, %struct.wined3d_resource** %8, align 8
  store %struct.wined3d_resource* %9, %struct.wined3d_resource** %4, align 8
  %10 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WINED3D_RTYPE_BUFFER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %79

24:                                               ; preds = %1
  %25 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %26 = call %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource* %25)
  store %struct.wined3d_texture* %26, %struct.wined3d_texture** %5, align 8
  %27 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %3, align 8
  %31 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %38 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @WINED3D_LOCATION_DISCARDED, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %36, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %24
  %45 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %46 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %53 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @WINED3D_TEXTURE_PIN_SYSMEM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %51, %44
  %59 = phi i1 [ true, %44 ], [ %57, %51 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %2, align 4
  br label %79

61:                                               ; preds = %24
  %62 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %63 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %61
  %69 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %70 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @WINED3D_TEXTURE_CONVERTED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %68, %61
  %77 = phi i1 [ false, %61 ], [ %75, %68 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %58, %15
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
