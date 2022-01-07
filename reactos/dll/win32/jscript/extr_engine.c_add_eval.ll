; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_add_eval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_add_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_HINT = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @add_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_eval(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NO_HINT, align 4
  %21 = call i32 @to_primitive(i32* %18, i32 %19, i32* %11, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %112

27:                                               ; preds = %4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @NO_HINT, align 4
  %31 = call i32 @to_primitive(i32* %28, i32 %29, i32* %10, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @jsval_release(i32 %36)
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %112

39:                                               ; preds = %27
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @is_string(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @is_string(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %43, %39
  store i32* null, i32** %14, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @to_string(i32* %48, i32 %49, i32** %13)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @SUCCEEDED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @to_string(i32* %55, i32 %56, i32** %14)
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @SUCCEEDED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i32*, i32** %13, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32* @jsstr_concat(i32* %63, i32* %64)
  store i32* %65, i32** %15, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @jsval_string(i32* %69)
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  br label %74

72:                                               ; preds = %62
  %73 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %72, %68
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @jsstr_release(i32* %76)
  %78 = load i32*, i32** %14, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @jsstr_release(i32* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %106

84:                                               ; preds = %43
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @to_number(i32* %85, i32 %86, double* %16)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @SUCCEEDED(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %84
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @to_number(i32* %92, i32 %93, double* %17)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @SUCCEEDED(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load double, double* %16, align 8
  %100 = load double, double* %17, align 8
  %101 = fadd double %99, %100
  %102 = call i32 @jsval_number(double %101)
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %91
  br label %105

105:                                              ; preds = %104, %84
  br label %106

106:                                              ; preds = %105, %83
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @jsval_release(i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @jsval_release(i32 %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %35, %25
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @to_primitive(i32*, i32, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @is_string(i32) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32* @jsstr_concat(i32*, i32*) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i32 @jsval_number(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
