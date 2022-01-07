; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_vmr9.c_VMR9DefaultAllocatorPresenterImpl_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_vmr9.c_VMR9DefaultAllocatorPresenterImpl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quartz_vmr = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, i32, i32*, i32, i32*, i64, i32*, i64, i32*, i32*, %struct.quartz_vmr*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32* }

@S_OK = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize d3d9.dll\0A\00", align 1
@VFW_E_DDRAW_CAPS_NOT_SUITABLE = common dso_local global i64 0, align 8
@D3DFMT_X8R8G8B8 = common dso_local global i32 0, align 4
@D3DERR_INVALIDCALL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"HR: %08x\0A\00", align 1
@D3DERR_NOTAVAILABLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Format not supported\0A\00", align 1
@VMR9_ImagePresenter = common dso_local global i32 0, align 4
@VMR9_SurfaceAllocator = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.quartz_vmr*, %struct.TYPE_9__**)* @VMR9DefaultAllocatorPresenterImpl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @VMR9DefaultAllocatorPresenterImpl_create(%struct.quartz_vmr* %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.quartz_vmr*, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.quartz_vmr* %0, %struct.quartz_vmr** %4, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  %10 = load i64, i64* @S_OK, align 8
  store i64 %10, i64* %6, align 8
  %11 = call %struct.TYPE_8__* @CoTaskMemAlloc(i32 112)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %15, i64* %3, align 8
  br label %106

16:                                               ; preds = %2
  %17 = load %struct.quartz_vmr*, %struct.quartz_vmr** %4, align 8
  %18 = getelementptr inbounds %struct.quartz_vmr, %struct.quartz_vmr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @init_d3d9(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 13
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = call i32 @CoTaskMemFree(%struct.TYPE_8__* %29)
  %31 = load i64, i64* @VFW_E_DDRAW_CAPS_NOT_SUITABLE, align 8
  store i64 %31, i64* %3, align 8
  br label %106

32:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %46, %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @D3DFMT_X8R8G8B8, align 4
  %40 = call i64 @IDirect3D9_EnumAdapterModes(i32 %36, i32 %37, i32 %39, i32 0, i32* %9)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @D3DERR_INVALIDCALL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %50

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @FAILED(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %33, label %50

50:                                               ; preds = %46, %44
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @FAILED(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  %56 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @D3DERR_NOTAVAILABLE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 13
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @IDirect3D9_Release(i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = call i32 @CoTaskMemFree(%struct.TYPE_8__* %67)
  %69 = load i64, i64* @VFW_E_DDRAW_CAPS_NOT_SUITABLE, align 8
  store i64 %69, i64* %3, align 8
  br label %106

70:                                               ; preds = %57
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32* @VMR9_ImagePresenter, i32** %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 12
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32* @VMR9_SurfaceAllocator, i32** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.quartz_vmr*, %struct.quartz_vmr** %4, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 11
  store %struct.quartz_vmr* %79, %struct.quartz_vmr** %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 10
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 9
  store i32* null, i32** %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 8
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 7
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 6
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 5
  store i32* null, i32** %93, align 8
  %94 = call i32 @CreateEventW(i32* null, i32 0, i32 0, i32* null)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  store i32* null, i32** %98, align 8
  %99 = load i32, i32* @FALSE, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %104, align 8
  %105 = load i64, i64* @S_OK, align 8
  store i64 %105, i64* %3, align 8
  br label %106

106:                                              ; preds = %70, %61, %27, %14
  %107 = load i64, i64* %3, align 8
  ret i64 %107
}

declare dso_local %struct.TYPE_8__* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @init_d3d9(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_8__*) #1

declare dso_local i64 @IDirect3D9_EnumAdapterModes(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @IDirect3D9_Release(i32) #1

declare dso_local i32 @CreateEventW(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
