; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_container.c_DXDiag_CreateDXDiagContainer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_container.c_DXDiag_CreateDXDiagContainer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, i32*, i32*, i64 }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"(%s, %p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@DxDiagContainer_Vtbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DXDiag_CreateDXDiagContainer(i32 %0, i32* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @debugstr_guid(i32 %11)
  %13 = load i32**, i32*** %9, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12, i32** %13)
  %15 = call i32 (...) @GetProcessHeap()
  %16 = call %struct.TYPE_4__* @HeapAlloc(i32 %15, i32 0, i32 32)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = icmp eq %struct.TYPE_4__* null, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32**, i32*** %9, align 8
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %21, i32* %5, align 4
  br label %41

22:                                               ; preds = %4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32* @DxDiagContainer_Vtbl, i32** %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @IDxDiagProvider_AddRef(i32* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %6, align 4
  %39 = load i32**, i32*** %9, align 8
  %40 = call i32 @IDxDiagContainerImpl_QueryInterface(%struct.TYPE_5__* %37, i32 %38, i32** %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %22, %19
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @TRACE(i8*, i32, i32**) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IDxDiagProvider_AddRef(i32*) #1

declare dso_local i32 @IDxDiagContainerImpl_QueryInterface(%struct.TYPE_5__*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
