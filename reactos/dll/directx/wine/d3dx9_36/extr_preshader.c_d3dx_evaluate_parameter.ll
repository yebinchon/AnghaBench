; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_d3dx_evaluate_parameter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_d3dx_evaluate_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_param_eval = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64*, i32* }
%struct.d3dx_parameter = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"peval %p, param %p, param_value %p.\0A\00", align 1
@ULONG64_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PRES_REGTAB_OCONST = common dso_local global i64 0, align 8
@D3DXPT_FLOAT = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3dx_evaluate_parameter(%struct.d3dx_param_eval* %0, %struct.d3dx_parameter* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx_param_eval*, align 8
  %6 = alloca %struct.d3dx_parameter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  store %struct.d3dx_param_eval* %0, %struct.d3dx_param_eval** %5, align 8
  store %struct.d3dx_parameter* %1, %struct.d3dx_parameter** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %15 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.d3dx_param_eval* %14, %struct.d3dx_parameter* %15, i8* %16)
  %18 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %19 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* @ULONG64_MAX, align 4
  %22 = call i64 @is_const_tab_input_dirty(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %3
  %25 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %26 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %29 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %32 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @next_update_version(i32 %33)
  %35 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %36 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @set_constants(%struct.TYPE_3__* %27, i32* %30, i32 %34, i32* null, i32* null, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %42 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %41, i32 0, i32 0
  %43 = call i32 @execute_preshader(%struct.TYPE_4__* %42)
  store i32 %43, i32* %8, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %24
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %102

48:                                               ; preds = %24
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i64, i64* @PRES_REGTAB_OCONST, align 8
  %51 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %52 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @PRES_REGTAB_OCONST, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @get_offset_reg(i64 %50, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %61 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @min(i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %5, align 8
  %70 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @PRES_REGTAB_OCONST, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to float*
  store float* %77, float** %13, align 8
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %97, %49
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i8*, i8** %7, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %89 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load float*, float** %13, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  %95 = load i32, i32* @D3DXPT_FLOAT, align 4
  %96 = call i32 @set_number(i32* %87, i32 %90, float* %94, i32 %95)
  br label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %78

100:                                              ; preds = %78
  %101 = load i32, i32* @D3D_OK, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %46
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @TRACE(i8*, %struct.d3dx_param_eval*, %struct.d3dx_parameter*, i8*) #1

declare dso_local i64 @is_const_tab_input_dirty(i32*, i32) #1

declare dso_local i32 @set_constants(%struct.TYPE_3__*, i32*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @next_update_version(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @execute_preshader(%struct.TYPE_4__*) #1

declare dso_local i32 @get_offset_reg(i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @set_number(i32*, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
