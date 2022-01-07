; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_shader_resource_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_shader_resource_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.wined3d_shader_resource_view*** }
%struct.wined3d_shader_resource_view = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_cs_set_shader_resource_view = type { i64, i64, %struct.wined3d_shader_resource_view* }

@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i64 0, align 8
@STATE_GRAPHICS_SHADER_RESOURCE_BINDING = common dso_local global i32 0, align 4
@STATE_COMPUTE_SHADER_RESOURCE_BINDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_set_shader_resource_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_set_shader_resource_view(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_set_shader_resource_view*, align 8
  %6 = alloca %struct.wined3d_shader_resource_view*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wined3d_cs_set_shader_resource_view*
  store %struct.wined3d_cs_set_shader_resource_view* %8, %struct.wined3d_cs_set_shader_resource_view** %5, align 8
  %9 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.wined3d_shader_resource_view***, %struct.wined3d_shader_resource_view**** %11, align 8
  %13 = load %struct.wined3d_cs_set_shader_resource_view*, %struct.wined3d_cs_set_shader_resource_view** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_cs_set_shader_resource_view, %struct.wined3d_cs_set_shader_resource_view* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_resource_view**, %struct.wined3d_shader_resource_view*** %12, i64 %15
  %17 = load %struct.wined3d_shader_resource_view**, %struct.wined3d_shader_resource_view*** %16, align 8
  %18 = load %struct.wined3d_cs_set_shader_resource_view*, %struct.wined3d_cs_set_shader_resource_view** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_cs_set_shader_resource_view, %struct.wined3d_cs_set_shader_resource_view* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %17, i64 %20
  %22 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %21, align 8
  store %struct.wined3d_shader_resource_view* %22, %struct.wined3d_shader_resource_view** %6, align 8
  %23 = load %struct.wined3d_cs_set_shader_resource_view*, %struct.wined3d_cs_set_shader_resource_view** %5, align 8
  %24 = getelementptr inbounds %struct.wined3d_cs_set_shader_resource_view, %struct.wined3d_cs_set_shader_resource_view* %23, i32 0, i32 2
  %25 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %24, align 8
  %26 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %27 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.wined3d_shader_resource_view***, %struct.wined3d_shader_resource_view**** %28, align 8
  %30 = load %struct.wined3d_cs_set_shader_resource_view*, %struct.wined3d_cs_set_shader_resource_view** %5, align 8
  %31 = getelementptr inbounds %struct.wined3d_cs_set_shader_resource_view, %struct.wined3d_cs_set_shader_resource_view* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_resource_view**, %struct.wined3d_shader_resource_view*** %29, i64 %32
  %34 = load %struct.wined3d_shader_resource_view**, %struct.wined3d_shader_resource_view*** %33, align 8
  %35 = load %struct.wined3d_cs_set_shader_resource_view*, %struct.wined3d_cs_set_shader_resource_view** %5, align 8
  %36 = getelementptr inbounds %struct.wined3d_cs_set_shader_resource_view, %struct.wined3d_cs_set_shader_resource_view* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %34, i64 %37
  store %struct.wined3d_shader_resource_view* %25, %struct.wined3d_shader_resource_view** %38, align 8
  %39 = load %struct.wined3d_cs_set_shader_resource_view*, %struct.wined3d_cs_set_shader_resource_view** %5, align 8
  %40 = getelementptr inbounds %struct.wined3d_cs_set_shader_resource_view, %struct.wined3d_cs_set_shader_resource_view* %39, i32 0, i32 2
  %41 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %40, align 8
  %42 = icmp ne %struct.wined3d_shader_resource_view* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %2
  %44 = load %struct.wined3d_cs_set_shader_resource_view*, %struct.wined3d_cs_set_shader_resource_view** %5, align 8
  %45 = getelementptr inbounds %struct.wined3d_cs_set_shader_resource_view, %struct.wined3d_cs_set_shader_resource_view* %44, i32 0, i32 2
  %46 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %45, align 8
  %47 = getelementptr inbounds %struct.wined3d_shader_resource_view, %struct.wined3d_shader_resource_view* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @InterlockedIncrement(i32* %49)
  br label %51

51:                                               ; preds = %43, %2
  %52 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %6, align 8
  %53 = icmp ne %struct.wined3d_shader_resource_view* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %6, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader_resource_view, %struct.wined3d_shader_resource_view* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @InterlockedDecrement(i32* %58)
  br label %60

60:                                               ; preds = %54, %51
  %61 = load %struct.wined3d_cs_set_shader_resource_view*, %struct.wined3d_cs_set_shader_resource_view** %5, align 8
  %62 = getelementptr inbounds %struct.wined3d_cs_set_shader_resource_view, %struct.wined3d_cs_set_shader_resource_view* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WINED3D_SHADER_TYPE_COMPUTE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %68 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @STATE_GRAPHICS_SHADER_RESOURCE_BINDING, align 4
  %71 = call i32 @device_invalidate_state(i32 %69, i32 %70)
  br label %78

72:                                               ; preds = %60
  %73 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %74 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @STATE_COMPUTE_SHADER_RESOURCE_BINDING, align 4
  %77 = call i32 @device_invalidate_state(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %66
  ret void
}

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @device_invalidate_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
