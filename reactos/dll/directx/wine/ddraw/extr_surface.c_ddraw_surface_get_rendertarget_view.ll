; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_surface.c_ddraw_surface_get_rendertarget_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_surface.c_ddraw_surface_get_rendertarget_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_rendertarget_view = type { i32 }
%struct.ddraw_surface = type { %struct.wined3d_rendertarget_view*, i32, i32 }

@ddraw_view_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to create rendertarget view, hr %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wined3d_rendertarget_view* @ddraw_surface_get_rendertarget_view(%struct.ddraw_surface* %0) #0 {
  %2 = alloca %struct.wined3d_rendertarget_view*, align 8
  %3 = alloca %struct.ddraw_surface*, align 8
  %4 = alloca i32, align 4
  store %struct.ddraw_surface* %0, %struct.ddraw_surface** %3, align 8
  %5 = load %struct.ddraw_surface*, %struct.ddraw_surface** %3, align 8
  %6 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %5, i32 0, i32 0
  %7 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %6, align 8
  %8 = icmp ne %struct.wined3d_rendertarget_view* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.ddraw_surface*, %struct.ddraw_surface** %3, align 8
  %11 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %10, i32 0, i32 0
  %12 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %11, align 8
  store %struct.wined3d_rendertarget_view* %12, %struct.wined3d_rendertarget_view** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.ddraw_surface*, %struct.ddraw_surface** %3, align 8
  %15 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ddraw_surface*, %struct.ddraw_surface** %3, align 8
  %18 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ddraw_surface*, %struct.ddraw_surface** %3, align 8
  %21 = load %struct.ddraw_surface*, %struct.ddraw_surface** %3, align 8
  %22 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %21, i32 0, i32 0
  %23 = call i32 @wined3d_rendertarget_view_create_from_sub_resource(i32 %16, i32 %19, %struct.ddraw_surface* %20, i32* @ddraw_view_wined3d_parent_ops, %struct.wined3d_rendertarget_view** %22)
  store i32 %23, i32* %4, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %27)
  store %struct.wined3d_rendertarget_view* null, %struct.wined3d_rendertarget_view** %2, align 8
  br label %33

29:                                               ; preds = %13
  %30 = load %struct.ddraw_surface*, %struct.ddraw_surface** %3, align 8
  %31 = getelementptr inbounds %struct.ddraw_surface, %struct.ddraw_surface* %30, i32 0, i32 0
  %32 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %31, align 8
  store %struct.wined3d_rendertarget_view* %32, %struct.wined3d_rendertarget_view** %2, align 8
  br label %33

33:                                               ; preds = %29, %26, %9
  %34 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %2, align 8
  ret %struct.wined3d_rendertarget_view* %34
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_rendertarget_view_create_from_sub_resource(i32, i32, %struct.ddraw_surface*, i32*, %struct.wined3d_rendertarget_view**) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
