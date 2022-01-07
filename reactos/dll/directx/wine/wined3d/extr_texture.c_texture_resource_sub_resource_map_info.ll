; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture_resource_sub_resource_map_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture_resource_sub_resource_map_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_resource = type { i32, %struct.wined3d_format* }
%struct.wined3d_format = type { i32 }
%struct.wined3d_map_info = type { i32, i32, i32 }
%struct.wined3d_texture_sub_resource = type { i32 }
%struct.wined3d_texture = type { i32 }

@E_INVALIDARG = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_BROKEN_PITCH = common dso_local global i32 0, align 4
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_resource*, i32, %struct.wined3d_map_info*, i32)* @texture_resource_sub_resource_map_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @texture_resource_sub_resource_map_info(%struct.wined3d_resource* %0, i32 %1, %struct.wined3d_map_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_map_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_format*, align 8
  %11 = alloca %struct.wined3d_texture_sub_resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_texture*, align 8
  %14 = alloca i32, align 4
  store %struct.wined3d_resource* %0, %struct.wined3d_resource** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.wined3d_map_info* %2, %struct.wined3d_map_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %16 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %15, i32 0, i32 1
  %17 = load %struct.wined3d_format*, %struct.wined3d_format** %16, align 8
  store %struct.wined3d_format* %17, %struct.wined3d_format** %10, align 8
  %18 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %19 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load %struct.wined3d_resource*, %struct.wined3d_resource** %6, align 8
  %22 = call %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource* %21)
  store %struct.wined3d_texture* %22, %struct.wined3d_texture** %13, align 8
  %23 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.wined3d_texture_sub_resource* @wined3d_texture_get_sub_resource(%struct.wined3d_texture* %23, i32 %24)
  store %struct.wined3d_texture_sub_resource* %25, %struct.wined3d_texture_sub_resource** %11, align 8
  %26 = icmp ne %struct.wined3d_texture_sub_resource* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %28, i32* %5, align 4
  br label %77

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %32 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = urem i32 %30, %33
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @WINED3DFMT_FLAG_BROKEN_PITCH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %29
  %40 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @wined3d_texture_get_level_width(%struct.wined3d_texture* %40, i32 %41)
  %43 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %44 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load %struct.wined3d_map_info*, %struct.wined3d_map_info** %8, align 8
  %48 = getelementptr inbounds %struct.wined3d_map_info, %struct.wined3d_map_info* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @wined3d_texture_get_level_height(%struct.wined3d_texture* %49, i32 %50)
  %52 = load %struct.wined3d_map_info*, %struct.wined3d_map_info** %8, align 8
  %53 = getelementptr inbounds %struct.wined3d_map_info, %struct.wined3d_map_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = load %struct.wined3d_map_info*, %struct.wined3d_map_info** %8, align 8
  %57 = getelementptr inbounds %struct.wined3d_map_info, %struct.wined3d_map_info* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %66

58:                                               ; preds = %29
  %59 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.wined3d_map_info*, %struct.wined3d_map_info** %8, align 8
  %62 = getelementptr inbounds %struct.wined3d_map_info, %struct.wined3d_map_info* %61, i32 0, i32 0
  %63 = load %struct.wined3d_map_info*, %struct.wined3d_map_info** %8, align 8
  %64 = getelementptr inbounds %struct.wined3d_map_info, %struct.wined3d_map_info* %63, i32 0, i32 1
  %65 = call i32 @wined3d_texture_get_pitch(%struct.wined3d_texture* %59, i32 %60, i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %58, %39
  %67 = load %struct.wined3d_map_info*, %struct.wined3d_map_info** %8, align 8
  %68 = getelementptr inbounds %struct.wined3d_map_info, %struct.wined3d_map_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @wined3d_texture_get_level_depth(%struct.wined3d_texture* %70, i32 %71)
  %73 = mul nsw i32 %69, %72
  %74 = load %struct.wined3d_map_info*, %struct.wined3d_map_info** %8, align 8
  %75 = getelementptr inbounds %struct.wined3d_map_info, %struct.wined3d_map_info* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @WINED3D_OK, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %66, %27
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource*) #1

declare dso_local %struct.wined3d_texture_sub_resource* @wined3d_texture_get_sub_resource(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_pitch(%struct.wined3d_texture*, i32, i32*, i32*) #1

declare dso_local i32 @wined3d_texture_get_level_depth(%struct.wined3d_texture*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
