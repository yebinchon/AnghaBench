; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_mipmap.c_CreateD3D9MipMap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_mipmap.c_CreateD3D9MipMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Could not create D3D9MipMap\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@D3D9MipMap_Vtbl = common dso_local global i32 0, align 4
@RT_EXTERNAL = common dso_local global i32 0, align 4
@UNIMPLEMENTED = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateD3D9MipMap(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32** %7, i32*** %17, align 8
  %19 = bitcast %struct.TYPE_2__** %18 to i32*
  %20 = call i32 @AlignedAlloc(i32* %19, i32 4)
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = call i32 @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %25, i32* %9, align 4
  br label %56

26:                                               ; preds = %8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  %29 = load i32, i32* %14, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @RT_EXTERNAL, align 4
  %35 = call i32 @InitDirect3DBaseTexture9(i32* %28, i32* @D3D9MipMap_Vtbl, i32 %29, i8* %30, i32 %31, i32 %32, i32* %33, i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32* @D3D9MipMap_Vtbl, i32** %37, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = bitcast i32** %51 to i32*
  %53 = load i32**, i32*** %17, align 8
  store i32* %52, i32** %53, align 8
  %54 = load i32, i32* @UNIMPLEMENTED, align 4
  %55 = load i32, i32* @D3D_OK, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %26, %23
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @AlignedAlloc(i32*, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @InitDirect3DBaseTexture9(i32*, i32*, i32, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
