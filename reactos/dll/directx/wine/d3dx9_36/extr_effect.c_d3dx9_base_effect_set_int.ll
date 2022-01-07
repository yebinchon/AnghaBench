; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_int.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_set_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i32, i32, i64, i64, i64, i32 }

@D3DXPT_INT = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@D3DXPT_FLOAT = common dso_local global i64 0, align 8
@D3DXPC_VECTOR = common dso_local global i64 0, align 8
@D3DXPC_MATRIX_ROWS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Vector fixup\0A\00", align 1
@INT_FLOAT_MULTI_INVERSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Parameter not found.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i32, i32)* @d3dx9_base_effect_set_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_set_int(%struct.d3dx9_base_effect* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.d3dx_parameter*, align 8
  %9 = alloca i64, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect* %10, i32 %11)
  store %struct.d3dx_parameter* %12, %struct.d3dx_parameter** %8, align 8
  %13 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %14 = icmp ne %struct.d3dx_parameter* %13, null
  br i1 %14, label %15, label %140

15:                                               ; preds = %3
  %16 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %17 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %140, label %20

20:                                               ; preds = %15
  %21 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %22 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %27 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %32 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @D3DXPT_INT, align 4
  %35 = call i32 @set_number(i64* %9, i64 %33, i32* %7, i32 %34)
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %38 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %36, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %45 = call i32 @set_dirty(%struct.d3dx_parameter* %44)
  br label %46

46:                                               ; preds = %43, %30
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %49 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64 %47, i64* %51, align 8
  %52 = load i32, i32* @D3D_OK, align 4
  store i32 %52, i32* %4, align 4
  br label %143

53:                                               ; preds = %25, %20
  %54 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %55 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @D3DXPT_FLOAT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %139

59:                                               ; preds = %53
  %60 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %61 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @D3DXPC_VECTOR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %67 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %86, label %70

70:                                               ; preds = %65, %59
  %71 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %72 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @D3DXPC_MATRIX_ROWS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %139

76:                                               ; preds = %70
  %77 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %78 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 2
  br i1 %80, label %81, label %139

81:                                               ; preds = %76
  %82 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %83 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %139

86:                                               ; preds = %81, %65
  %87 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, 16711680
  %90 = ashr i32 %89, 16
  %91 = load i32, i32* @INT_FLOAT_MULTI_INVERSE, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %94 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 65280
  %99 = ashr i32 %98, 8
  %100 = load i32, i32* @INT_FLOAT_MULTI_INVERSE, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %103 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i32*
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %101, i32* %106, align 4
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, 255
  %109 = load i32, i32* @INT_FLOAT_MULTI_INVERSE, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %112 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i32*
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32 %110, i32* %115, align 4
  %116 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %117 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %120 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = icmp sgt i32 %122, 3
  br i1 %123, label %124, label %135

124:                                              ; preds = %86
  %125 = load i32, i32* %7, align 4
  %126 = and i32 %125, -16777216
  %127 = lshr i32 %126, 24
  %128 = load i32, i32* @INT_FLOAT_MULTI_INVERSE, align 4
  %129 = mul i32 %127, %128
  %130 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %131 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  store i32 %129, i32* %134, align 4
  br label %135

135:                                              ; preds = %124, %86
  %136 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %8, align 8
  %137 = call i32 @set_dirty(%struct.d3dx_parameter* %136)
  %138 = load i32, i32* @D3D_OK, align 4
  store i32 %138, i32* %4, align 4
  br label %143

139:                                              ; preds = %81, %76, %70, %53
  br label %140

140:                                              ; preds = %139, %15, %3
  %141 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %142 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %140, %135, %46
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.d3dx_parameter* @get_valid_parameter(%struct.d3dx9_base_effect*, i32) #1

declare dso_local i32 @set_number(i64*, i64, i32*, i32) #1

declare dso_local i32 @set_dirty(%struct.d3dx_parameter*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
