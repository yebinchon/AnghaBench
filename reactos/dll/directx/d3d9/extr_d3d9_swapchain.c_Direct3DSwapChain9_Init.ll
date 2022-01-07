; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_swapchain.c_Direct3DSwapChain9_Init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_swapchain.c_Direct3DSwapChain9_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32*, i32, %struct.TYPE_13__, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [35 x i8] c"Could not get the swapchain device\00", align 1
@DDERR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not allocate D3D9Cursor\00", align 1
@DDERR_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Direct3DSwapChain9_Init(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %12, i32* %19, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %12, i32* %26, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %12, i32* %33, align 4
  br label %34

34:                                               ; preds = %11
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 %43
  %45 = bitcast %struct.TYPE_13__* %39 to i8*
  %46 = bitcast %struct.TYPE_13__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = call i32 @Direct3DSwapChain9_SetDisplayMode(%struct.TYPE_12__* %52, %struct.TYPE_13__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = call i32 @D3D9BaseObject_GetDeviceInt(i32* %57, i32** %7)
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %37
  %62 = call i32 @DPRINT1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @DDERR_GENERIC, align 4
  store i32 %63, i32* %3, align 4
  br label %81

64:                                               ; preds = %37
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = call i32* @CreateD3D9Cursor(i32* %65, %struct.TYPE_12__* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* null, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = call i32 @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @DDERR_OUTOFMEMORY, align 4
  store i32 %76, i32* %3, align 4
  br label %81

77:                                               ; preds = %64
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = call i32 @Direct3DSwapChain9_Reset(%struct.TYPE_12__* %78, %struct.TYPE_13__* %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %74, %61
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Direct3DSwapChain9_SetDisplayMode(%struct.TYPE_12__*, %struct.TYPE_13__*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @D3D9BaseObject_GetDeviceInt(i32*, i32**) #2

declare dso_local i32 @DPRINT1(i8*) #2

declare dso_local i32* @CreateD3D9Cursor(i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @Direct3DSwapChain9_Reset(%struct.TYPE_12__*, %struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
