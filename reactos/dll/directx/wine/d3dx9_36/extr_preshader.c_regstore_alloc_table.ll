; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_regstore_alloc_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_regstore_alloc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.d3dx_regstore = type { i32*, i32* }

@table_info = common dso_local global %struct.TYPE_2__* null, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_regstore*, i32)* @regstore_alloc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regstore_alloc_table(%struct.d3dx_regstore* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3dx_regstore*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.d3dx_regstore* %0, %struct.d3dx_regstore** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %4, align 8
  %9 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @get_offset_reg(i32 %7, i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table_info, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %15, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %2
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @HeapAlloc(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %4, align 8
  %31 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  %36 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %4, align 8
  %37 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %25
  %45 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* @D3D_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @get_offset_reg(i32, i32) #1

declare dso_local i32 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
