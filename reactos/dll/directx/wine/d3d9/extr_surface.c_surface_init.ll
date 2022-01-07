; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_surface.c_surface_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_surface.c_surface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_parent_ops = type { i32 }
%struct.d3d9_surface = type { i32, i32, i64, %struct.wined3d_texture*, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }
%struct.wined3d_texture = type { i32 }

@d3d9_surface_vtbl = common dso_local global i32 0, align 4
@IID_IDirect3DBaseTexture9 = common dso_local global i32 0, align 4
@d3d9_surface_wined3d_parent_ops = common dso_local global %struct.wined3d_parent_ops zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @surface_init(%struct.d3d9_surface* %0, %struct.wined3d_texture* %1, i32 %2, %struct.wined3d_parent_ops** %3) #0 {
  %5 = alloca %struct.d3d9_surface*, align 8
  %6 = alloca %struct.wined3d_texture*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_parent_ops**, align 8
  %9 = alloca i32*, align 8
  store %struct.d3d9_surface* %0, %struct.d3d9_surface** %5, align 8
  store %struct.wined3d_texture* %1, %struct.wined3d_texture** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_parent_ops** %3, %struct.wined3d_parent_ops*** %8, align 8
  %10 = load %struct.d3d9_surface*, %struct.d3d9_surface** %5, align 8
  %11 = getelementptr inbounds %struct.d3d9_surface, %struct.d3d9_surface* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32* @d3d9_surface_vtbl, i32** %12, align 8
  %13 = load %struct.d3d9_surface*, %struct.d3d9_surface** %5, align 8
  %14 = getelementptr inbounds %struct.d3d9_surface, %struct.d3d9_surface* %13, i32 0, i32 5
  %15 = call i32 @d3d9_resource_init(%struct.TYPE_4__* %14)
  %16 = load %struct.d3d9_surface*, %struct.d3d9_surface** %5, align 8
  %17 = getelementptr inbounds %struct.d3d9_surface, %struct.d3d9_surface* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.d3d9_surface*, %struct.d3d9_surface** %5, align 8
  %20 = getelementptr inbounds %struct.d3d9_surface, %struct.d3d9_surface* %19, i32 0, i32 4
  %21 = call i32 @list_init(i32* %20)
  %22 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %23 = call i64 @wined3d_texture_get_parent(%struct.wined3d_texture* %22)
  %24 = load %struct.d3d9_surface*, %struct.d3d9_surface** %5, align 8
  %25 = getelementptr inbounds %struct.d3d9_surface, %struct.d3d9_surface* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %27 = load %struct.d3d9_surface*, %struct.d3d9_surface** %5, align 8
  %28 = getelementptr inbounds %struct.d3d9_surface, %struct.d3d9_surface* %27, i32 0, i32 3
  store %struct.wined3d_texture* %26, %struct.wined3d_texture** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.d3d9_surface*, %struct.d3d9_surface** %5, align 8
  %31 = getelementptr inbounds %struct.d3d9_surface, %struct.d3d9_surface* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.d3d9_surface*, %struct.d3d9_surface** %5, align 8
  %33 = getelementptr inbounds %struct.d3d9_surface, %struct.d3d9_surface* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %4
  %37 = load %struct.d3d9_surface*, %struct.d3d9_surface** %5, align 8
  %38 = getelementptr inbounds %struct.d3d9_surface, %struct.d3d9_surface* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = bitcast i32** %9 to i8**
  %41 = call i32 @IUnknown_QueryInterface(i64 %39, i32* @IID_IDirect3DBaseTexture9, i8** %40)
  %42 = call i64 @SUCCEEDED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @unsafe_impl_from_IDirect3DBaseTexture9(i32* %45)
  %47 = load %struct.d3d9_surface*, %struct.d3d9_surface** %5, align 8
  %48 = getelementptr inbounds %struct.d3d9_surface, %struct.d3d9_surface* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @IDirect3DBaseTexture9_Release(i32* %49)
  br label %51

51:                                               ; preds = %44, %36, %4
  %52 = load %struct.wined3d_parent_ops**, %struct.wined3d_parent_ops*** %8, align 8
  store %struct.wined3d_parent_ops* @d3d9_surface_wined3d_parent_ops, %struct.wined3d_parent_ops** %52, align 8
  ret void
}

declare dso_local i32 @d3d9_resource_init(%struct.TYPE_4__*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i64 @wined3d_texture_get_parent(%struct.wined3d_texture*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IUnknown_QueryInterface(i64, i32*, i8**) #1

declare dso_local i32 @unsafe_impl_from_IDirect3DBaseTexture9(i32*) #1

declare dso_local i32 @IDirect3DBaseTexture9_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
