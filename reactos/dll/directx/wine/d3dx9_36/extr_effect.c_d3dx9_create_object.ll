; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_create_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.IDirect3DDevice9* }
%struct.IDirect3DDevice9 = type { i32 }
%struct.d3dx_object = type { i8*, i32, i32, %struct.d3dx_parameter* }
%struct.d3dx_parameter = type { i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Parameter data already allocated.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to create vertex shader.\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to create pixel shader.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, %struct.d3dx_object*)* @d3dx9_create_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_create_object(%struct.d3dx9_base_effect* %0, %struct.d3dx_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3dx9_base_effect*, align 8
  %5 = alloca %struct.d3dx_object*, align 8
  %6 = alloca %struct.d3dx_parameter*, align 8
  %7 = alloca %struct.IDirect3DDevice9*, align 8
  %8 = alloca i32, align 4
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %4, align 8
  store %struct.d3dx_object* %1, %struct.d3dx_object** %5, align 8
  %9 = load %struct.d3dx_object*, %struct.d3dx_object** %5, align 8
  %10 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %9, i32 0, i32 3
  %11 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  store %struct.d3dx_parameter* %11, %struct.d3dx_parameter** %6, align 8
  %12 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %13 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %15, align 8
  store %struct.IDirect3DDevice9* %16, %struct.IDirect3DDevice9** %7, align 8
  %17 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %18 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  %26 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %27 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %97 [
    i32 129, label %29
    i32 128, label %61
    i32 130, label %79
  ]

29:                                               ; preds = %25
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load %struct.d3dx_object*, %struct.d3dx_object** %5, align 8
  %32 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @HeapAlloc(i32 %30, i32 0, i32 %33)
  %35 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %36 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8**
  store i8* %34, i8** %38, align 8
  %39 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %40 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8**
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %29
  %46 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %47, i32* %3, align 4
  br label %100

48:                                               ; preds = %29
  %49 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %50 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8**
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.d3dx_object*, %struct.d3dx_object** %5, align 8
  %55 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.d3dx_object*, %struct.d3dx_object** %5, align 8
  %58 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(i8* %53, i32 %56, i32 %59)
  br label %98

61:                                               ; preds = %25
  %62 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %7, align 8
  %63 = load %struct.d3dx_object*, %struct.d3dx_object** %5, align 8
  %64 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %67 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32**
  %70 = call i32 @IDirect3DDevice9_CreateVertexShader(%struct.IDirect3DDevice9* %62, i32 %65, i32** %69)
  store i32 %70, i32* %8, align 4
  %71 = call i32 @FAILED(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i8*, i8** @TRUE, align 8
  %76 = load %struct.d3dx_object*, %struct.d3dx_object** %5, align 8
  %77 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %73, %61
  br label %98

79:                                               ; preds = %25
  %80 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %7, align 8
  %81 = load %struct.d3dx_object*, %struct.d3dx_object** %5, align 8
  %82 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %85 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32**
  %88 = call i32 @IDirect3DDevice9_CreatePixelShader(%struct.IDirect3DDevice9* %80, i32 %83, i32** %87)
  store i32 %88, i32* %8, align 4
  %89 = call i32 @FAILED(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %79
  %92 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i8*, i8** @TRUE, align 8
  %94 = load %struct.d3dx_object*, %struct.d3dx_object** %5, align 8
  %95 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %91, %79
  br label %98

97:                                               ; preds = %25
  br label %98

98:                                               ; preds = %97, %96, %78, %48
  %99 = load i32, i32* @D3D_OK, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %45
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @IDirect3DDevice9_CreateVertexShader(%struct.IDirect3DDevice9*, i32, i32**) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @IDirect3DDevice9_CreatePixelShader(%struct.IDirect3DDevice9*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
