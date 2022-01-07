; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_int.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i32, i32, i64, i64, i64, i32 }

@D3DXPT_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Returning %i\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@D3DXPT_FLOAT = common dso_local global i64 0, align 8
@D3DXPC_VECTOR = common dso_local global i64 0, align 8
@D3DXPC_MATRIX_ROWS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Vector fixup\0A\00", align 1
@INT_FLOAT_MULTI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, i32*)* @d3dx9_base_effect_get_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_get_int(%struct.d3dx9_base_effect* %0, i32 %1, i32* %2) #0 {
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
  br i1 %13, label %14, label %149

14:                                               ; preds = %3
  %15 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %16 = icmp ne %struct.d3dx_parameter* %15, null
  br i1 %16, label %17, label %149

17:                                               ; preds = %14
  %18 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %19 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %149, label %22

22:                                               ; preds = %17
  %23 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %24 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %29 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @D3DXPT_INT, align 4
  %35 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %36 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %39 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @set_number(i32* %33, i32 %34, i64 %37, i64 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @D3D_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %152

46:                                               ; preds = %27, %22
  %47 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %48 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @D3DXPT_FLOAT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %148

52:                                               ; preds = %46
  %53 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %54 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @D3DXPC_VECTOR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %60 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 2
  br i1 %62, label %79, label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %65 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @D3DXPC_MATRIX_ROWS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %148

69:                                               ; preds = %63
  %70 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %71 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %74, label %148

74:                                               ; preds = %69
  %75 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %76 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %148

79:                                               ; preds = %74, %58
  %80 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %82 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @max(float 0.000000e+00, i32 %86)
  %88 = call i32 @min(i32 %87, float 1.000000e+00)
  %89 = load i32, i32* @INT_FLOAT_MULTI, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  %92 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %93 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i32*
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @max(float 0.000000e+00, i32 %97)
  %99 = call i32 @min(i32 %98, float 1.000000e+00)
  %100 = load i32, i32* @INT_FLOAT_MULTI, align 4
  %101 = mul nsw i32 %99, %100
  %102 = shl i32 %101, 8
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %107 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @max(float 0.000000e+00, i32 %111)
  %113 = call i32 @min(i32 %112, float 1.000000e+00)
  %114 = load i32, i32* @INT_FLOAT_MULTI, align 4
  %115 = mul nsw i32 %113, %114
  %116 = shl i32 %115, 16
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %116
  store i32 %119, i32* %117, align 4
  %120 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %121 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %124 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %122, %125
  %127 = icmp sgt i32 %126, 3
  br i1 %127, label %128, label %143

128:                                              ; preds = %79
  %129 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %130 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @max(float 0.000000e+00, i32 %134)
  %136 = call i32 @min(i32 %135, float 1.000000e+00)
  %137 = load i32, i32* @INT_FLOAT_MULTI, align 4
  %138 = mul nsw i32 %136, %137
  %139 = shl i32 %138, 24
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %139
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %128, %79
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @D3D_OK, align 4
  store i32 %147, i32* %4, align 4
  br label %152

148:                                              ; preds = %74, %69, %63, %46
  br label %149

149:                                              ; preds = %148, %17, %14, %3
  %150 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %149, %143, %32
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @set_number(i32*, i32, i64, i64) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @min(i32, float) #1

declare dso_local i32 @max(float, i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
