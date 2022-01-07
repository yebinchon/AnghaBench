; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_surface.c_d3d8_surface_acquire_rendertarget_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_surface.c_d3d8_surface_acquire_rendertarget_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_rendertarget_view = type { i32 }
%struct.d3d8_surface = type { %struct.wined3d_rendertarget_view*, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@d3d8_view_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to create rendertarget view, hr %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wined3d_rendertarget_view* @d3d8_surface_acquire_rendertarget_view(%struct.d3d8_surface* %0) #0 {
  %2 = alloca %struct.wined3d_rendertarget_view*, align 8
  %3 = alloca %struct.d3d8_surface*, align 8
  %4 = alloca i32, align 4
  store %struct.d3d8_surface* %0, %struct.d3d8_surface** %3, align 8
  %5 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %6 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %5, i32 0, i32 3
  %7 = call i32 @d3d8_surface_AddRef(i32* %6)
  %8 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %9 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %8, i32 0, i32 0
  %10 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %9, align 8
  %11 = icmp ne %struct.wined3d_rendertarget_view* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %14 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %13, i32 0, i32 0
  %15 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %14, align 8
  store %struct.wined3d_rendertarget_view* %15, %struct.wined3d_rendertarget_view** %2, align 8
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %18 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %21 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %24 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %25 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %24, i32 0, i32 0
  %26 = call i32 @wined3d_rendertarget_view_create_from_sub_resource(i32 %19, i32 %22, %struct.d3d8_surface* %23, i32* @d3d8_view_wined3d_parent_ops, %struct.wined3d_rendertarget_view** %25)
  store i32 %26, i32* %4, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %33 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %32, i32 0, i32 3
  %34 = call i32 @d3d8_surface_Release(i32* %33)
  store %struct.wined3d_rendertarget_view* null, %struct.wined3d_rendertarget_view** %2, align 8
  br label %52

35:                                               ; preds = %16
  %36 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %37 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %42 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %46 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %45, i32 0, i32 1
  %47 = call i32 @list_add_head(i32* %44, i32* %46)
  br label %48

48:                                               ; preds = %40, %35
  %49 = load %struct.d3d8_surface*, %struct.d3d8_surface** %3, align 8
  %50 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %49, i32 0, i32 0
  %51 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %50, align 8
  store %struct.wined3d_rendertarget_view* %51, %struct.wined3d_rendertarget_view** %2, align 8
  br label %52

52:                                               ; preds = %48, %29, %12
  %53 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %2, align 8
  ret %struct.wined3d_rendertarget_view* %53
}

declare dso_local i32 @d3d8_surface_AddRef(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_rendertarget_view_create_from_sub_resource(i32, i32, %struct.d3d8_surface*, i32*, %struct.wined3d_rendertarget_view**) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @d3d8_surface_Release(i32*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
