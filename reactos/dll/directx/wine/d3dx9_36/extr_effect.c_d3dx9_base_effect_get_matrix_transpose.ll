; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_matrix_transpose.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_matrix_transpose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Class %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unhandled class %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, i32*)* @d3dx9_base_effect_get_matrix_transpose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_get_matrix_transpose(%struct.d3dx9_base_effect* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %9, i32 %10)
  store %struct.d3dx_parameter* %11, %struct.d3dx_parameter** %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %51

14:                                               ; preds = %3
  %15 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %16 = icmp ne %struct.d3dx_parameter* %15, null
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %19 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %17
  %23 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %24 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @debug_d3dxparameter_class(i32 %25)
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %29 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %44 [
    i32 130, label %31
    i32 128, label %31
    i32 132, label %37
    i32 131, label %43
    i32 129, label %43
  ]

31:                                               ; preds = %22, %22
  %32 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @get_matrix(%struct.d3dx_parameter* %32, i32* %33, i32 %34)
  %36 = load i32, i32* @D3D_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %54

37:                                               ; preds = %22
  %38 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @get_matrix(%struct.d3dx_parameter* %38, i32* %39, i32 %40)
  %42 = load i32, i32* @D3D_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %22, %22
  br label %50

44:                                               ; preds = %22
  %45 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %46 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @debug_d3dxparameter_class(i32 %47)
  %49 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %43
  br label %51

51:                                               ; preds = %50, %17, %14, %3
  %52 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %37, %31
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_d3dxparameter_class(i32) #1

declare dso_local i32 @get_matrix(%struct.d3dx_parameter*, i32*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
