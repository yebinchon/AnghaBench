; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_annotation_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_annotation_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid argument specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Returning parameter %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Annotation not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.d3dx9_base_effect*, i32*, i8*)* @d3dx9_base_effect_get_annotation_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @d3dx9_base_effect_get_annotation_by_name(%struct.d3dx9_base_effect* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  %9 = alloca %struct.d3dx_parameter*, align 8
  %10 = alloca i32, align 4
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.d3dx_parameter* null, %struct.d3dx_parameter** %8, align 8
  store %struct.d3dx_parameter* null, %struct.d3dx_parameter** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %33

15:                                               ; preds = %3
  %16 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @get_annotation_from_object(%struct.d3dx9_base_effect* %16, i32* %17, %struct.d3dx_parameter** %9)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call %struct.d3dx_parameter* @get_annotation_by_name(%struct.d3dx9_base_effect* %19, i32 %20, %struct.d3dx_parameter* %21, i8* %22)
  store %struct.d3dx_parameter* %23, %struct.d3dx_parameter** %8, align 8
  %24 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %25 = icmp ne %struct.d3dx_parameter* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.d3dx_parameter* %27)
  %29 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %30 = call i32* @get_parameter_handle(%struct.d3dx_parameter* %29)
  store i32* %30, i32** %4, align 8
  br label %33

31:                                               ; preds = %15
  %32 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %33

33:                                               ; preds = %31, %26, %13
  %34 = load i32*, i32** %4, align 8
  ret i32* %34
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @get_annotation_from_object(%struct.d3dx9_base_effect*, i32*, %struct.d3dx_parameter**) #1

declare dso_local %struct.d3dx_parameter* @get_annotation_by_name(%struct.d3dx9_base_effect*, i32, %struct.d3dx_parameter*, i8*) #1

declare dso_local i32 @TRACE(i8*, %struct.d3dx_parameter*) #1

declare dso_local i32* @get_parameter_handle(%struct.d3dx_parameter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
