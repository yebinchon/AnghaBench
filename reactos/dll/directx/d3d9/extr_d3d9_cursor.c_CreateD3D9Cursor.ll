; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_cursor.c_CreateD3D9Cursor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_cursor.c_CreateD3D9Cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct._Direct3DSwapChain9_INT*, %struct._Direct3DDevice9_INT* }
%struct._Direct3DDevice9_INT = type { i32 }
%struct._Direct3DSwapChain9_INT = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate D3D9Cursor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @CreateD3D9Cursor(%struct._Direct3DDevice9_INT* %0, %struct._Direct3DSwapChain9_INT* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct._Direct3DDevice9_INT*, align 8
  %5 = alloca %struct._Direct3DSwapChain9_INT*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct._Direct3DDevice9_INT* %0, %struct._Direct3DDevice9_INT** %4, align 8
  store %struct._Direct3DSwapChain9_INT* %1, %struct._Direct3DSwapChain9_INT** %5, align 8
  %7 = bitcast %struct.TYPE_3__** %6 to i32*
  %8 = call i32 @AlignedAlloc(i32* %7, i32 24)
  %9 = call i64 @FAILED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load %struct._Direct3DDevice9_INT*, %struct._Direct3DDevice9_INT** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store %struct._Direct3DDevice9_INT* %14, %struct._Direct3DDevice9_INT** %16, align 8
  %17 = load %struct._Direct3DSwapChain9_INT*, %struct._Direct3DSwapChain9_INT** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store %struct._Direct3DSwapChain9_INT* %17, %struct._Direct3DSwapChain9_INT** %19, align 8
  %20 = load %struct._Direct3DSwapChain9_INT*, %struct._Direct3DSwapChain9_INT** %5, align 8
  %21 = getelementptr inbounds %struct._Direct3DSwapChain9_INT, %struct._Direct3DSwapChain9_INT* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct._Direct3DSwapChain9_INT*, %struct._Direct3DSwapChain9_INT** %5, align 8
  %27 = getelementptr inbounds %struct._Direct3DSwapChain9_INT, %struct._Direct3DSwapChain9_INT* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %3, align 8
  br label %33

33:                                               ; preds = %13, %11
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %34
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @AlignedAlloc(i32*, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
