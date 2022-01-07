; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_texture.c_d3d9_texture_acquire_shader_resource_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_texture.c_d3d9_texture_acquire_shader_resource_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_resource_view = type { i32 }
%struct.d3d9_texture = type { %struct.wined3d_shader_resource_view*, i32 }
%struct.wined3d_sub_resource_desc = type { i32, i32 }
%struct.wined3d_view_desc = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i64 }

@WINED3DUSAGE_LEGACY_CUBEMAP = common dso_local global i32 0, align 4
@d3d9_srv_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to create shader resource view, hr %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_shader_resource_view* (%struct.d3d9_texture*)* @d3d9_texture_acquire_shader_resource_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_shader_resource_view* @d3d9_texture_acquire_shader_resource_view(%struct.d3d9_texture* %0) #0 {
  %2 = alloca %struct.wined3d_shader_resource_view*, align 8
  %3 = alloca %struct.d3d9_texture*, align 8
  %4 = alloca %struct.wined3d_sub_resource_desc, align 4
  %5 = alloca %struct.wined3d_view_desc, align 8
  %6 = alloca i32, align 4
  store %struct.d3d9_texture* %0, %struct.d3d9_texture** %3, align 8
  %7 = load %struct.d3d9_texture*, %struct.d3d9_texture** %3, align 8
  %8 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %7, i32 0, i32 0
  %9 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %8, align 8
  %10 = icmp ne %struct.wined3d_shader_resource_view* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.d3d9_texture*, %struct.d3d9_texture** %3, align 8
  %13 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %12, i32 0, i32 0
  %14 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %13, align 8
  store %struct.wined3d_shader_resource_view* %14, %struct.wined3d_shader_resource_view** %2, align 8
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.d3d9_texture*, %struct.d3d9_texture** %3, align 8
  %17 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @wined3d_texture_get_sub_resource_desc(i32 %18, i32 0, %struct.wined3d_sub_resource_desc* %4)
  %20 = getelementptr inbounds %struct.wined3d_sub_resource_desc, %struct.wined3d_sub_resource_desc* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %5, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %5, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %5, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.d3d9_texture*, %struct.d3d9_texture** %3, align 8
  %28 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @wined3d_texture_get_level_count(i32 %29)
  %31 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.wined3d_sub_resource_desc, %struct.wined3d_sub_resource_desc* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @WINED3DUSAGE_LEGACY_CUBEMAP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 6, i32 1
  %44 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %5, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.d3d9_texture*, %struct.d3d9_texture** %3, align 8
  %48 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @wined3d_texture_get_resource(i32 %49)
  %51 = load %struct.d3d9_texture*, %struct.d3d9_texture** %3, align 8
  %52 = load %struct.d3d9_texture*, %struct.d3d9_texture** %3, align 8
  %53 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %52, i32 0, i32 0
  %54 = call i32 @wined3d_shader_resource_view_create(%struct.wined3d_view_desc* %5, i32 %50, %struct.d3d9_texture* %51, i32* @d3d9_srv_wined3d_parent_ops, %struct.wined3d_shader_resource_view** %53)
  store i32 %54, i32* %6, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %15
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %58)
  store %struct.wined3d_shader_resource_view* null, %struct.wined3d_shader_resource_view** %2, align 8
  br label %64

60:                                               ; preds = %15
  %61 = load %struct.d3d9_texture*, %struct.d3d9_texture** %3, align 8
  %62 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %61, i32 0, i32 0
  %63 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %62, align 8
  store %struct.wined3d_shader_resource_view* %63, %struct.wined3d_shader_resource_view** %2, align 8
  br label %64

64:                                               ; preds = %60, %57, %11
  %65 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %2, align 8
  ret %struct.wined3d_shader_resource_view* %65
}

declare dso_local i32 @wined3d_texture_get_sub_resource_desc(i32, i32, %struct.wined3d_sub_resource_desc*) #1

declare dso_local i32 @wined3d_texture_get_level_count(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_shader_resource_view_create(%struct.wined3d_view_desc*, i32, %struct.d3d9_texture*, i32*, %struct.wined3d_shader_resource_view**) #1

declare dso_local i32 @wined3d_texture_get_resource(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
