; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_dispatch.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, %struct.wined3d_state }
%struct.wined3d_state = type { i32*, i32* }
%struct.wined3d_cs_dispatch = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@WINED3D_PIPELINE_COMPUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_dispatch(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_dispatch*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wined3d_cs_dispatch*
  store %struct.wined3d_cs_dispatch* %8, %struct.wined3d_cs_dispatch** %5, align 8
  %9 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %9, i32 0, i32 1
  store %struct.wined3d_state* %10, %struct.wined3d_state** %6, align 8
  %11 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %15 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %15, i32 0, i32 0
  %17 = call i32 @dispatch_compute(i32 %13, %struct.wined3d_state* %14, %struct.TYPE_8__* %16)
  %18 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.wined3d_cs_dispatch*, %struct.wined3d_cs_dispatch** %5, align 8
  %25 = getelementptr inbounds %struct.wined3d_cs_dispatch, %struct.wined3d_cs_dispatch* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @wined3d_resource_release(i32* %30)
  br label %32

32:                                               ; preds = %23, %2
  %33 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %34 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %35 = shl i32 1, %34
  %36 = call i32 @release_shader_resources(%struct.wined3d_state* %33, i32 %35)
  %37 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %38 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %45 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @WINED3D_PIPELINE_COMPUTE, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @release_unordered_access_resources(i32 %43, i32 %49)
  ret void
}

declare dso_local i32 @dispatch_compute(i32, %struct.wined3d_state*, %struct.TYPE_8__*) #1

declare dso_local i32 @wined3d_resource_release(i32*) #1

declare dso_local i32 @release_shader_resources(%struct.wined3d_state*, i32) #1

declare dso_local i32 @release_unordered_access_resources(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
