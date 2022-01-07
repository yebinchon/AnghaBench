; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_float_array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_float_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i64, i32, i32, i64 }

@D3DXPC_SCALAR = common dso_local global i64 0, align 8
@D3DXPC_VECTOR = common dso_local global i64 0, align 8
@D3DXPC_MATRIX_ROWS = common dso_local global i64 0, align 8
@D3DXPC_MATRIX_COLUMNS = common dso_local global i64 0, align 8
@D3DXPT_FLOAT = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, float*, i64)* @d3dx9_base_effect_get_float_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_get_float_array(%struct.d3dx9_base_effect* %0, i32 %1, float* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3dx9_base_effect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.d3dx_parameter*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %6, align 8
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %13, i32 %14)
  store %struct.d3dx_parameter* %15, %struct.d3dx_parameter** %10, align 8
  %16 = load float*, float** %8, align 8
  %17 = icmp ne float* %16, null
  br i1 %17, label %18, label %78

18:                                               ; preds = %4
  %19 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %20 = icmp ne %struct.d3dx_parameter* %19, null
  br i1 %20, label %21, label %78

21:                                               ; preds = %18
  %22 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %23 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @D3DXPC_SCALAR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %21
  %28 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %29 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @D3DXPC_VECTOR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %35 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @D3DXPC_MATRIX_ROWS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %41 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @D3DXPC_MATRIX_COLUMNS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %39, %33, %27, %21
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %48 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i64 @min(i64 %46, i32 %52)
  store i64 %53, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %54

54:                                               ; preds = %73, %45
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load float*, float** %8, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds float, float* %59, i64 %60
  %62 = load i32, i32* @D3DXPT_FLOAT, align 4
  %63 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %64 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %70 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @set_number(float* %61, i32 %62, i32* %68, i32 %71)
  br label %73

73:                                               ; preds = %58
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %11, align 8
  br label %54

76:                                               ; preds = %54
  %77 = load i32, i32* @D3D_OK, align 4
  store i32 %77, i32* %5, align 4
  br label %81

78:                                               ; preds = %39, %18, %4
  %79 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %76
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @set_number(float*, i32, i32*, i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
