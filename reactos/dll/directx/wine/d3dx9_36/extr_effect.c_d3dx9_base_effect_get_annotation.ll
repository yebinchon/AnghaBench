; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_annotation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_annotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Returning parameter %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Annotation not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.d3dx9_base_effect*, i32*, i64)* @d3dx9_base_effect_get_annotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @d3dx9_base_effect_get_annotation(%struct.d3dx9_base_effect* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  %9 = alloca i64, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.d3dx_parameter* null, %struct.d3dx_parameter** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @get_annotation_from_object(%struct.d3dx9_base_effect* %10, i32* %11, %struct.d3dx_parameter** %8)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %17, i64 %18
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.d3dx_parameter* %19)
  %21 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %21, i64 %22
  %24 = call i32* @get_parameter_handle(%struct.d3dx_parameter* %23)
  store i32* %24, i32** %4, align 8
  br label %27

25:                                               ; preds = %3
  %26 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i32*, i32** %4, align 8
  ret i32* %28
}

declare dso_local i64 @get_annotation_from_object(%struct.d3dx9_base_effect*, i32*, %struct.d3dx_parameter**) #1

declare dso_local i32 @TRACE(i8*, %struct.d3dx_parameter*) #1

declare dso_local i32* @get_parameter_handle(%struct.d3dx_parameter*) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
