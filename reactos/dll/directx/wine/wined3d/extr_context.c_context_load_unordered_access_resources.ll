; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_load_unordered_access_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_load_unordered_access_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_shader = type { i32 }
%struct.wined3d_unordered_access_view = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.wined3d_texture = type { i32 }
%struct.wined3d_buffer = type { i32 }

@MAX_UNORDERED_ACCESS_VIEWS = common dso_local global i32 0, align 4
@WINED3D_RTYPE_BUFFER = common dso_local global i64 0, align 8
@WINED3D_LOCATION_BUFFER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_shader*, %struct.wined3d_unordered_access_view**)* @context_load_unordered_access_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_load_unordered_access_resources(%struct.wined3d_context* %0, %struct.wined3d_shader* %1, %struct.wined3d_unordered_access_view** %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_shader*, align 8
  %6 = alloca %struct.wined3d_unordered_access_view**, align 8
  %7 = alloca %struct.wined3d_unordered_access_view*, align 8
  %8 = alloca %struct.wined3d_texture*, align 8
  %9 = alloca %struct.wined3d_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_shader* %1, %struct.wined3d_shader** %5, align 8
  store %struct.wined3d_unordered_access_view** %2, %struct.wined3d_unordered_access_view*** %6, align 8
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.wined3d_shader*, %struct.wined3d_shader** %5, align 8
  %14 = icmp ne %struct.wined3d_shader* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %69

16:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %66, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @MAX_UNORDERED_ACCESS_VIEWS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %17
  %22 = load %struct.wined3d_unordered_access_view**, %struct.wined3d_unordered_access_view*** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %22, i64 %24
  %26 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %25, align 8
  store %struct.wined3d_unordered_access_view* %26, %struct.wined3d_unordered_access_view** %7, align 8
  %27 = icmp ne %struct.wined3d_unordered_access_view* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %66

29:                                               ; preds = %21
  %30 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %7, align 8
  %31 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WINED3D_RTYPE_BUFFER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %7, align 8
  %39 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call %struct.wined3d_buffer* @buffer_from_resource(%struct.TYPE_3__* %40)
  store %struct.wined3d_buffer* %41, %struct.wined3d_buffer** %9, align 8
  %42 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %9, align 8
  %43 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %44 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %45 = call i32 @wined3d_buffer_load_location(%struct.wined3d_buffer* %42, %struct.wined3d_context* %43, i32 %44)
  %46 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %7, align 8
  %47 = load i32, i32* @WINED3D_LOCATION_BUFFER, align 4
  %48 = xor i32 %47, -1
  %49 = call i32 @wined3d_unordered_access_view_invalidate_location(%struct.wined3d_unordered_access_view* %46, i32 %48)
  br label %63

50:                                               ; preds = %29
  %51 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %7, align 8
  %52 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call %struct.wined3d_texture* @texture_from_resource(%struct.TYPE_3__* %53)
  store %struct.wined3d_texture* %54, %struct.wined3d_texture** %8, align 8
  %55 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %56 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @wined3d_texture_load(%struct.wined3d_texture* %55, %struct.wined3d_context* %56, i32 %57)
  %59 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %7, align 8
  %60 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %61 = xor i32 %60, -1
  %62 = call i32 @wined3d_unordered_access_view_invalidate_location(%struct.wined3d_unordered_access_view* %59, i32 %61)
  br label %63

63:                                               ; preds = %50, %37
  %64 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %65 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %28
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %17

69:                                               ; preds = %15, %17
  ret void
}

declare dso_local %struct.wined3d_buffer* @buffer_from_resource(%struct.TYPE_3__*) #1

declare dso_local i32 @wined3d_buffer_load_location(%struct.wined3d_buffer*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_unordered_access_view_invalidate_location(%struct.wined3d_unordered_access_view*, i32) #1

declare dso_local %struct.wined3d_texture* @texture_from_resource(%struct.TYPE_3__*) #1

declare dso_local i32 @wined3d_texture_load(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
