; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_init_function_constr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_init_function_constr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { float*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@init_function_constr.FunctionW = internal constant [9 x float] [float 7.000000e+01, float 1.170000e+02, float 1.100000e+02, float 9.900000e+01, float 1.160000e+02, float 1.050000e+02, float 1.110000e+02, float 1.100000e+02, float 0.000000e+00], align 16
@Function_info = common dso_local global i32 0, align 4
@NativeFunctionVtbl = common dso_local global i32 0, align 4
@PROPF_CONSTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FunctionProt_value = common dso_local global i32 0, align 4
@prototypeW = common dso_local global float* null, align 8
@FunctionInst_info = common dso_local global i32 0, align 4
@FunctionConstr_value = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_function_constr(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = load i32, i32* @PROPF_CONSTR, align 4
  %11 = load i32, i32* @TRUE, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast %struct.TYPE_9__** %6 to i8**
  %14 = call i32 @create_function(%struct.TYPE_8__* %9, i32* @Function_info, i32* @NativeFunctionVtbl, i32 16, i32 %10, i32 %11, i32* %12, i8** %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %93

20:                                               ; preds = %2
  %21 = load i32, i32* @FunctionProt_value, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load float*, float** @prototypeW, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store float* %24, float** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = load i32, i32* @PROPF_CONSTR, align 4
  %29 = or i32 %28, 1
  %30 = load i32, i32* @TRUE, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = bitcast %struct.TYPE_9__** %7 to i8**
  %35 = call i32 @create_function(%struct.TYPE_8__* %27, i32* @FunctionInst_info, i32* @NativeFunctionVtbl, i32 16, i32 %29, i32 %30, i32* %33, i8** %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @SUCCEEDED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %20
  %40 = load i32, i32* @FunctionConstr_value, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store float* getelementptr inbounds ([9 x float], [9 x float]* @init_function_constr.FunctionW, i64 0, i64 0), float** %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load float*, float** @prototypeW, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = call i32 @jsval_obj(i32* %51)
  %53 = call i32 @jsdisp_define_data_property(i32* %47, float* %48, i32 0, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @SUCCEEDED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %39
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = call i32 @set_constructor_prop(%struct.TYPE_8__* %58, i32* %61, i32* %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %57, %39
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = call i32 @jsdisp_release(i32* %73)
  br label %75

75:                                               ; preds = %70, %66
  br label %76

76:                                               ; preds = %75, %20
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = call i32 @jsdisp_release(i32* %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @FAILED(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %93

86:                                               ; preds = %76
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  %92 = load i32, i32* @S_OK, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %86, %84, %18
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @create_function(%struct.TYPE_8__*, i32*, i32*, i32, i32, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsdisp_define_data_property(i32*, float*, i32, i32) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @set_constructor_prop(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
