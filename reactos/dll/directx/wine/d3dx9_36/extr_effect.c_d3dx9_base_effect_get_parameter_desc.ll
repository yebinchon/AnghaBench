; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_parameter_desc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_parameter_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.d3dx_parameter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid argument specified.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, %struct.TYPE_4__*)* @d3dx9_base_effect_get_parameter_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_get_parameter_desc(%struct.d3dx9_base_effect* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %9 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %9, i32 %10)
  store %struct.d3dx_parameter* %11, %struct.d3dx_parameter** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %16 = icmp ne %struct.d3dx_parameter* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %19, i32* %4, align 4
  br label %85

20:                                               ; preds = %14
  %21 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %22 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 4
  %26 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %27 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %32 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %37 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %42 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %47 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %52 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %57 = call i64 @is_top_level_parameter(%struct.d3dx_parameter* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %20
  %60 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %61 = call %struct.TYPE_5__* @top_level_parameter_from_parameter(%struct.d3dx_parameter* %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  br label %65

64:                                               ; preds = %20
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i32 [ %63, %59 ], [ 0, %64 ]
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %70 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %75 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %80 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @D3D_OK, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %65, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @is_top_level_parameter(%struct.d3dx_parameter*) #1

declare dso_local %struct.TYPE_5__* @top_level_parameter_from_parameter(%struct.d3dx_parameter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
