; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_adapter.c_Get16BitD3DFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_adapter.c_Get16BitD3DFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32 }

@D3DFMT_R5G6B5 = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@BI_BITFIELDS = common dso_local global i64 0, align 8
@D3DFMT_X1R5G5B5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Get16BitD3DFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Get16BitD3DFormat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @D3DFMT_R5G6B5, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32* @CreateDCA(i32* null, i32 %9, i32* null, i32* null)
  store i32* %10, i32** %4, align 8
  %11 = icmp eq i32* null, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %83

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @CreateCompatibleBitmap(i32* %15, i32 1, i32 1)
  store i32* %16, i32** %5, align 8
  %17 = icmp eq i32* null, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @DeleteDC(i32* %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %83

22:                                               ; preds = %14
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %25 = call %struct.TYPE_7__* @HeapAlloc(i32 %23, i32 %24, i32 20)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %6, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = icmp eq %struct.TYPE_7__* null, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @DeleteObject(i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @DeleteDC(i32* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %83

34:                                               ; preds = %22
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = load i32, i32* @DIB_RGB_COLORS, align 4
  %42 = call i64 @GetDIBits(i32* %38, i32* %39, i32 0, i32 0, i32* null, %struct.TYPE_7__* %40, i32 %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %34
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BI_BITFIELDS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = load i32, i32* @DIB_RGB_COLORS, align 4
  %60 = call i64 @GetDIBits(i32* %52, i32* %53, i32 0, i32 %57, i32* null, %struct.TYPE_7__* %58, i32 %59)
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %51
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 992
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @D3DFMT_X1R5G5B5, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %62
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72, %44
  br label %74

74:                                               ; preds = %73, %34
  %75 = call i32 (...) @GetProcessHeap()
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = call i32 @HeapFree(i32 %75, i32 0, %struct.TYPE_7__* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @DeleteObject(i32* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @DeleteDC(i32* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %74, %28, %18, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32* @CreateDCA(i32*, i32, i32*, i32*) #1

declare dso_local i32* @CreateCompatibleBitmap(i32*, i32, i32) #1

declare dso_local i32 @DeleteDC(i32*) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i64 @GetDIBits(i32*, i32*, i32, i32, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
