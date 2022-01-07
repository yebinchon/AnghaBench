; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_wined3d_view_invalidate_location.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_wined3d_view_invalidate_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_resource = type { i64 }
%struct.wined3d_view_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.wined3d_texture = type { i32 }

@WINED3D_RTYPE_BUFFER = common dso_local global i64 0, align 8
@WINED3D_RTYPE_TEXTURE_3D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_resource*, %struct.wined3d_view_desc*, i32)* @wined3d_view_invalidate_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_view_invalidate_location(%struct.wined3d_resource* %0, %struct.wined3d_view_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_resource*, align 8
  %5 = alloca %struct.wined3d_view_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_texture*, align 8
  store %struct.wined3d_resource* %0, %struct.wined3d_resource** %4, align 8
  store %struct.wined3d_view_desc* %1, %struct.wined3d_view_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WINED3D_RTYPE_BUFFER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %18 = call i32 @buffer_from_resource(%struct.wined3d_resource* %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @wined3d_buffer_invalidate_location(i32 %18, i32 %19)
  br label %70

21:                                               ; preds = %3
  %22 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %23 = call %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource* %22)
  store %struct.wined3d_texture* %23, %struct.wined3d_texture** %10, align 8
  %24 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %5, align 8
  %25 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %30 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul i32 %28, %31
  %33 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %5, align 8
  %34 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %32, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.wined3d_resource*, %struct.wined3d_resource** %4, align 8
  %40 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WINED3D_RTYPE_TEXTURE_3D, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %21
  %45 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %5, align 8
  %46 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  br label %51

50:                                               ; preds = %21
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi i32 [ %49, %44 ], [ 1, %50 ]
  store i32 %52, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %62, %51
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  %66 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %53

70:                                               ; preds = %16, %53
  ret void
}

declare dso_local i32 @wined3d_buffer_invalidate_location(i32, i32) #1

declare dso_local i32 @buffer_from_resource(%struct.wined3d_resource*) #1

declare dso_local %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource*) #1

declare dso_local i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
