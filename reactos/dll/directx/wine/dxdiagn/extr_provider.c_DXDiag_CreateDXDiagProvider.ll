; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_DXDiag_CreateDXDiagProvider.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_DXDiag_CreateDXDiagProvider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"(%p, %s, %p)\0A\00", align 1
@CLASS_E_NOAGGREGATION = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@DxDiagProvider_Vtbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DXDiag_CreateDXDiagProvider(i32 %0, i64 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @debugstr_guid(i32 %12)
  %14 = load i32**, i32*** %9, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %13, i32** %14)
  %16 = load i32**, i32*** %9, align 8
  store i32* null, i32** %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @CLASS_E_NOAGGREGATION, align 4
  store i32 %20, i32* %5, align 4
  br label %40

21:                                               ; preds = %4
  %22 = call i32 (...) @GetProcessHeap()
  %23 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %24 = call %struct.TYPE_4__* @HeapAlloc(i32 %22, i32 %23, i32 16)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %10, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = icmp eq %struct.TYPE_4__* null, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %28, i32* %5, align 4
  br label %40

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32* @DxDiagProvider_Vtbl, i32** %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = load i32**, i32*** %9, align 8
  %39 = call i32 @IDxDiagProviderImpl_QueryInterface(%struct.TYPE_5__* %36, i32 %37, i32** %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %29, %27, %19
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @TRACE(i8*, i64, i32, i32**) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IDxDiagProviderImpl_QueryInterface(%struct.TYPE_5__*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
