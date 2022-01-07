; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_vector.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.d3dx_parameter = type { i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Class %s\0A\00", align 1
@D3DXPT_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"INT fixup\0A\00", align 1
@INT_FLOAT_MULTI = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@D3DXPT_FLOAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Unhandled class %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, %struct.TYPE_5__*)* @d3dx9_base_effect_set_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_set_vector(%struct.d3dx9_base_effect* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.d3dx_parameter*, align 8
  %9 = alloca i32, align 4
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %10, i32 %11)
  store %struct.d3dx_parameter* %12, %struct.d3dx_parameter** %8, align 8
  %13 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %14 = icmp ne %struct.d3dx_parameter* %13, null
  br i1 %14, label %15, label %119

15:                                               ; preds = %3
  %16 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %17 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %119, label %20

20:                                               ; preds = %15
  %21 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %22 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @debug_d3dxparameter_class(i32 %23)
  %25 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %27 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %112 [
    i32 130, label %29
    i32 128, label %29
    i32 132, label %111
    i32 131, label %111
    i32 129, label %111
  ]

29:                                               ; preds = %20, %20
  %30 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %31 = call i32 @set_dirty(%struct.d3dx_parameter* %30)
  %32 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %33 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @D3DXPT_INT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %87

37:                                               ; preds = %29
  %38 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %39 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %87

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @min(i32 %46, float 1.000000e+00)
  %48 = call i32 @max(i32 %47, float 0.000000e+00)
  %49 = load i32, i32* @INT_FLOAT_MULTI, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @min(i32 %53, float 1.000000e+00)
  %55 = call i32 @max(i32 %54, float 0.000000e+00)
  %56 = load i32, i32* @INT_FLOAT_MULTI, align 4
  %57 = mul nsw i32 %55, %56
  %58 = shl i32 %57, 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @min(i32 %63, float 1.000000e+00)
  %65 = call i32 @max(i32 %64, float 0.000000e+00)
  %66 = load i32, i32* @INT_FLOAT_MULTI, align 4
  %67 = mul nsw i32 %65, %66
  %68 = shl i32 %67, 16
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @min(i32 %73, float 1.000000e+00)
  %75 = call i32 @max(i32 %74, float 0.000000e+00)
  %76 = load i32, i32* @INT_FLOAT_MULTI, align 4
  %77 = mul nsw i32 %75, %76
  %78 = shl i32 %77, 24
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %83 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @D3D_OK, align 4
  store i32 %86, i32* %4, align 4
  br label %122

87:                                               ; preds = %37, %29
  %88 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %89 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @D3DXPT_FLOAT, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %95 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %99 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memcpy(i64 %96, %struct.TYPE_5__* %97, i32 %103)
  %105 = load i32, i32* @D3D_OK, align 4
  store i32 %105, i32* %4, align 4
  br label %122

106:                                              ; preds = %87
  %107 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = call i32 @set_vector(%struct.d3dx_parameter* %107, %struct.TYPE_5__* %108)
  %110 = load i32, i32* @D3D_OK, align 4
  store i32 %110, i32* %4, align 4
  br label %122

111:                                              ; preds = %20, %20, %20
  br label %118

112:                                              ; preds = %20
  %113 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %114 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @debug_d3dxparameter_class(i32 %115)
  %117 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %111
  br label %119

119:                                              ; preds = %118, %15, %3
  %120 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %119, %106, %93, %42
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debug_d3dxparameter_class(i32) #1

declare dso_local i32 @set_dirty(%struct.d3dx_parameter*) #1

declare dso_local i32 @max(i32, float) #1

declare dso_local i32 @min(i32, float) #1

declare dso_local i32 @memcpy(i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @set_vector(%struct.d3dx_parameter*, %struct.TYPE_5__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
