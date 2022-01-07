; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_stateblock.c_stateblock_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_stateblock.c_stateblock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_stateblock = type { i32, i32*, %struct.wined3d_stateblock*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.d3d9_device = type { i32, i32 }
%struct.wined3d_stateblock = type { i32 }

@d3d9_stateblock_vtbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to create wined3d stateblock, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stateblock_init(%struct.d3d9_stateblock* %0, %struct.d3d9_device* %1, i64 %2, %struct.wined3d_stateblock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3d9_stateblock*, align 8
  %7 = alloca %struct.d3d9_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wined3d_stateblock*, align 8
  %10 = alloca i32, align 4
  store %struct.d3d9_stateblock* %0, %struct.d3d9_stateblock** %6, align 8
  store %struct.d3d9_device* %1, %struct.d3d9_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.wined3d_stateblock* %3, %struct.wined3d_stateblock** %9, align 8
  %11 = load %struct.d3d9_stateblock*, %struct.d3d9_stateblock** %6, align 8
  %12 = getelementptr inbounds %struct.d3d9_stateblock, %struct.d3d9_stateblock* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32* @d3d9_stateblock_vtbl, i32** %13, align 8
  %14 = load %struct.d3d9_stateblock*, %struct.d3d9_stateblock** %6, align 8
  %15 = getelementptr inbounds %struct.d3d9_stateblock, %struct.d3d9_stateblock* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %9, align 8
  %17 = icmp ne %struct.wined3d_stateblock* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %9, align 8
  %20 = load %struct.d3d9_stateblock*, %struct.d3d9_stateblock** %6, align 8
  %21 = getelementptr inbounds %struct.d3d9_stateblock, %struct.d3d9_stateblock* %20, i32 0, i32 2
  store %struct.wined3d_stateblock* %19, %struct.wined3d_stateblock** %21, align 8
  br label %41

22:                                               ; preds = %4
  %23 = call i32 (...) @wined3d_mutex_lock()
  %24 = load %struct.d3d9_device*, %struct.d3d9_device** %7, align 8
  %25 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.d3d9_stateblock*, %struct.d3d9_stateblock** %6, align 8
  %30 = getelementptr inbounds %struct.d3d9_stateblock, %struct.d3d9_stateblock* %29, i32 0, i32 2
  %31 = call i32 @wined3d_stateblock_create(i32 %26, i32 %28, %struct.wined3d_stateblock** %30)
  store i32 %31, i32* %10, align 4
  %32 = call i32 (...) @wined3d_mutex_unlock()
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %51

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40, %18
  %42 = load %struct.d3d9_device*, %struct.d3d9_device** %7, align 8
  %43 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %42, i32 0, i32 0
  %44 = load %struct.d3d9_stateblock*, %struct.d3d9_stateblock** %6, align 8
  %45 = getelementptr inbounds %struct.d3d9_stateblock, %struct.d3d9_stateblock* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.d3d9_stateblock*, %struct.d3d9_stateblock** %6, align 8
  %47 = getelementptr inbounds %struct.d3d9_stateblock, %struct.d3d9_stateblock* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @IDirect3DDevice9Ex_AddRef(i32* %48)
  %50 = load i32, i32* @D3D_OK, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %41, %36
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i32 @wined3d_stateblock_create(i32, i32, %struct.wined3d_stateblock**) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
