; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_annotation_from_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_annotation_from_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i32 }
%struct.d3dx_pass = type { i32, %struct.d3dx_parameter* }
%struct.d3dx_technique = type { i32, %struct.d3dx_parameter* }
%struct.d3dx_top_level_parameter = type { i32, %struct.d3dx_parameter* }

@.str = private unnamed_addr constant [33 x i8] c"Functions are not handled, yet!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, %struct.d3dx_parameter**)* @get_annotation_from_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_annotation_from_object(%struct.d3dx9_base_effect* %0, i32 %1, %struct.d3dx_parameter** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.d3dx_parameter**, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  %9 = alloca %struct.d3dx_pass*, align 8
  %10 = alloca %struct.d3dx_technique*, align 8
  %11 = alloca %struct.d3dx_top_level_parameter*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.d3dx_parameter** %2, %struct.d3dx_parameter*** %7, align 8
  %12 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %12, i32 %13)
  store %struct.d3dx_parameter* %14, %struct.d3dx_parameter** %8, align 8
  %15 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.d3dx_pass* @get_valid_pass(%struct.d3dx9_base_effect* %15, i32 %16)
  store %struct.d3dx_pass* %17, %struct.d3dx_pass** %9, align 8
  %18 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.d3dx_technique* @get_valid_technique(%struct.d3dx9_base_effect* %18, i32 %19)
  store %struct.d3dx_technique* %20, %struct.d3dx_technique** %10, align 8
  %21 = load %struct.d3dx_pass*, %struct.d3dx_pass** %9, align 8
  %22 = icmp ne %struct.d3dx_pass* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.d3dx_pass*, %struct.d3dx_pass** %9, align 8
  %25 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %24, i32 0, i32 1
  %26 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %25, align 8
  %27 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %7, align 8
  store %struct.d3dx_parameter* %26, %struct.d3dx_parameter** %27, align 8
  %28 = load %struct.d3dx_pass*, %struct.d3dx_pass** %9, align 8
  %29 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  br label %63

31:                                               ; preds = %3
  %32 = load %struct.d3dx_technique*, %struct.d3dx_technique** %10, align 8
  %33 = icmp ne %struct.d3dx_technique* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.d3dx_technique*, %struct.d3dx_technique** %10, align 8
  %36 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %35, i32 0, i32 1
  %37 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %36, align 8
  %38 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %7, align 8
  store %struct.d3dx_parameter* %37, %struct.d3dx_parameter** %38, align 8
  %39 = load %struct.d3dx_technique*, %struct.d3dx_technique** %10, align 8
  %40 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %4, align 4
  br label %63

42:                                               ; preds = %31
  %43 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %44 = icmp ne %struct.d3dx_parameter* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %47 = call i64 @is_top_level_parameter(%struct.d3dx_parameter* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %51 = call %struct.d3dx_top_level_parameter* @top_level_parameter_from_parameter(%struct.d3dx_parameter* %50)
  store %struct.d3dx_top_level_parameter* %51, %struct.d3dx_top_level_parameter** %11, align 8
  %52 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %11, align 8
  %53 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %52, i32 0, i32 1
  %54 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %53, align 8
  %55 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %7, align 8
  store %struct.d3dx_parameter* %54, %struct.d3dx_parameter** %55, align 8
  %56 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %11, align 8
  %57 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %4, align 4
  br label %63

59:                                               ; preds = %45
  %60 = load %struct.d3dx_parameter**, %struct.d3dx_parameter*** %7, align 8
  store %struct.d3dx_parameter* null, %struct.d3dx_parameter** %60, align 8
  store i32 0, i32* %4, align 4
  br label %63

61:                                               ; preds = %42
  %62 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %59, %49, %34, %23
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local %struct.d3dx_pass* @get_valid_pass(%struct.d3dx9_base_effect*, i32) #1

declare dso_local %struct.d3dx_technique* @get_valid_technique(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i64 @is_top_level_parameter(%struct.d3dx_parameter*) #1

declare dso_local %struct.d3dx_top_level_parameter* @top_level_parameter_from_parameter(%struct.d3dx_parameter*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
