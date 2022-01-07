; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_vector.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.d3dx_parameter = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Class %s\0A\00", align 1
@D3DXPT_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"INT fixup\0A\00", align 1
@INT_FLOAT_MULTI_INVERSE = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Unhandled class %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, %struct.TYPE_4__*)* @d3dx9_base_effect_get_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_get_vector(%struct.d3dx9_base_effect* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
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
  br i1 %13, label %14, label %101

14:                                               ; preds = %3
  %15 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %16 = icmp ne %struct.d3dx_parameter* %15, null
  br i1 %16, label %17, label %101

17:                                               ; preds = %14
  %18 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %19 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %101, label %22

22:                                               ; preds = %17
  %23 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %24 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @debug_d3dxparameter_class(i32 %25)
  %27 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %29 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %94 [
    i32 130, label %31
    i32 128, label %31
    i32 132, label %93
    i32 131, label %93
    i32 129, label %93
  ]

31:                                               ; preds = %22, %22
  %32 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %33 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @D3DXPT_INT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %31
  %38 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %39 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %88

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %45 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 16711680
  %50 = ashr i32 %49, 16
  %51 = load i32, i32* @INT_FLOAT_MULTI_INVERSE, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %56 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 65280
  %61 = ashr i32 %60, 8
  %62 = load i32, i32* @INT_FLOAT_MULTI_INVERSE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %67 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  %72 = load i32, i32* @INT_FLOAT_MULTI_INVERSE, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %77 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, -16777216
  %82 = lshr i32 %81, 24
  %83 = load i32, i32* @INT_FLOAT_MULTI_INVERSE, align 4
  %84 = mul i32 %82, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @D3D_OK, align 4
  store i32 %87, i32* %4, align 4
  br label %104

88:                                               ; preds = %37, %31
  %89 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %91 = call i32 @get_vector(%struct.d3dx_parameter* %89, %struct.TYPE_4__* %90)
  %92 = load i32, i32* @D3D_OK, align 4
  store i32 %92, i32* %4, align 4
  br label %104

93:                                               ; preds = %22, %22, %22
  br label %100

94:                                               ; preds = %22
  %95 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %96 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @debug_d3dxparameter_class(i32 %97)
  %99 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %93
  br label %101

101:                                              ; preds = %100, %17, %14, %3
  %102 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %101, %88, %42
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debug_d3dxparameter_class(i32) #1

declare dso_local i32 @get_vector(%struct.d3dx_parameter*, %struct.TYPE_4__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
