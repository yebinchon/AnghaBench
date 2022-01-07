; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_matrix_pointer_array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_matrix_pointer_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i64, i32, i32* }

@D3D_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unhandled class %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, i32**, i64)* @d3dx9_base_effect_set_matrix_pointer_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_set_matrix_pointer_array(%struct.d3dx9_base_effect* %0, i32 %1, i32** %2, i64 %3) #0 {
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
  %15 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %16 = icmp ne %struct.d3dx_parameter* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %20 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %18, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %25 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %51 [
    i32 131, label %27
    i32 129, label %50
    i32 128, label %50
    i32 130, label %50
  ]

27:                                               ; preds = %23
  %28 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %29 = call i32 @set_dirty(%struct.d3dx_parameter* %28)
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %45, %27
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %36 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32**, i32*** %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @set_matrix(i32* %39, i32* %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i64, i64* %11, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %11, align 8
  br label %30

48:                                               ; preds = %30
  %49 = load i32, i32* @D3D_OK, align 4
  store i32 %49, i32* %5, align 4
  br label %61

50:                                               ; preds = %23, %23, %23
  br label %57

51:                                               ; preds = %23
  %52 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %53 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @debug_d3dxparameter_class(i32 %54)
  %56 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %50
  br label %58

58:                                               ; preds = %57, %17, %4
  %59 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %48
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @set_dirty(%struct.d3dx_parameter*) #1

declare dso_local i32 @set_matrix(i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dxparameter_class(i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
