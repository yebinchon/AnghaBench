; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_matrix_pointer_array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_matrix_pointer_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i64, i32, i32* }

@D3D_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Class %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unhandled class %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, i32**, i64)* @d3dx9_base_effect_get_matrix_pointer_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_get_matrix_pointer_array(%struct.d3dx9_base_effect* %0, i32 %1, i32** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3dx9_base_effect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.d3dx_parameter*, align 8
  %11 = alloca i64, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %12, i32 %13)
  store %struct.d3dx_parameter* %14, %struct.d3dx_parameter** %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @D3D_OK, align 4
  store i32 %18, i32* %5, align 4
  br label %73

19:                                               ; preds = %4
  %20 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %21 = icmp ne %struct.d3dx_parameter* %20, null
  br i1 %21, label %22, label %70

22:                                               ; preds = %19
  %23 = load i32**, i32*** %8, align 8
  %24 = icmp ne i32** %23, null
  br i1 %24, label %25, label %70

25:                                               ; preds = %22
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %28 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %25
  %32 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %33 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @debug_d3dxparameter_class(i32 %34)
  %36 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %38 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %63 [
    i32 131, label %40
    i32 129, label %62
    i32 128, label %62
    i32 130, label %62
  ]

40:                                               ; preds = %31
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %57, %40
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %47 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32**, i32*** %8, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @get_matrix(i32* %50, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %45
  %58 = load i64, i64* %11, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %11, align 8
  br label %41

60:                                               ; preds = %41
  %61 = load i32, i32* @D3D_OK, align 4
  store i32 %61, i32* %5, align 4
  br label %73

62:                                               ; preds = %31, %31, %31
  br label %69

63:                                               ; preds = %31
  %64 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %65 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @debug_d3dxparameter_class(i32 %66)
  %68 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %62
  br label %70

70:                                               ; preds = %69, %25, %22, %19
  %71 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %60, %17
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_d3dxparameter_class(i32) #1

declare dso_local i32 @get_matrix(i32*, i32*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
