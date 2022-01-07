; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_vector_array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_vector_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i64, i32, i32, float*, i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Class %s\0A\00", align 1
@D3DXPT_FLOAT = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unhandled class %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, i32*, i64)* @d3dx9_base_effect_set_vector_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_set_vector_array(%struct.d3dx9_base_effect* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3dx9_base_effect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.d3dx_parameter*, align 8
  %11 = alloca i64, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %12, i32 %13)
  store %struct.d3dx_parameter* %14, %struct.d3dx_parameter** %10, align 8
  %15 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %16 = icmp ne %struct.d3dx_parameter* %15, null
  br i1 %16, label %17, label %120

17:                                               ; preds = %4
  %18 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %19 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %120

22:                                               ; preds = %17
  %23 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %24 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %120

28:                                               ; preds = %22
  %29 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %30 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @debug_d3dxparameter_class(i32 %31)
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %35 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %113 [
    i32 128, label %37
    i32 130, label %112
    i32 132, label %112
    i32 131, label %112
    i32 129, label %112
  ]

37:                                               ; preds = %28
  %38 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %39 = call i32 @set_dirty(%struct.d3dx_parameter* %38)
  %40 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %41 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @D3DXPT_FLOAT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %37
  %46 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %47 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %52 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %51, i32 0, i32 3
  %53 = load float*, float** %52, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = mul nsw i64 %55, 4
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(float* %53, i32* %54, i32 %58)
  br label %90

60:                                               ; preds = %45
  store i64 0, i64* %11, align 8
  br label %61

61:                                               ; preds = %86, %60
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %67 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %66, i32 0, i32 3
  %68 = load float*, float** %67, align 8
  %69 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %70 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %11, align 8
  %74 = mul nsw i64 %72, %73
  %75 = getelementptr inbounds float, float* %68, i64 %74
  %76 = load i32*, i32** %8, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %80 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(float* %75, i32* %78, i32 %84)
  br label %86

86:                                               ; preds = %65
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %61

89:                                               ; preds = %61
  br label %90

90:                                               ; preds = %89, %50
  %91 = load i32, i32* @D3D_OK, align 4
  store i32 %91, i32* %5, align 4
  br label %123

92:                                               ; preds = %37
  store i64 0, i64* %11, align 8
  br label %93

93:                                               ; preds = %107, %92
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %99 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32*, i32** %8, align 8
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = call i32 @set_vector(i32* %102, i32* %105)
  br label %107

107:                                              ; preds = %97
  %108 = load i64, i64* %11, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %11, align 8
  br label %93

110:                                              ; preds = %93
  %111 = load i32, i32* @D3D_OK, align 4
  store i32 %111, i32* %5, align 4
  br label %123

112:                                              ; preds = %28, %28, %28, %28
  br label %119

113:                                              ; preds = %28
  %114 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %10, align 8
  %115 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @debug_d3dxparameter_class(i32 %116)
  %118 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %113, %112
  br label %120

120:                                              ; preds = %119, %22, %17, %4
  %121 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %120, %110, %90
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_d3dxparameter_class(i32) #1

declare dso_local i32 @set_dirty(%struct.d3dx_parameter*) #1

declare dso_local i32 @memcpy(float*, i32*, i32) #1

declare dso_local i32 @set_vector(i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
