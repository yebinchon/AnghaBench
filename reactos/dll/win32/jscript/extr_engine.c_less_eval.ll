; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_less_eval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_less_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_HINT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32*)* @less_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @less_eval(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @NO_HINT, align 4
  %20 = call i32 @to_primitive(i32* %17, i32 %18, i32* %14, i32 %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %16, align 4
  store i32 %25, i32* %6, align 4
  br label %106

26:                                               ; preds = %5
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @NO_HINT, align 4
  %30 = call i32 @to_primitive(i32* %27, i32 %28, i32* %15, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @jsval_release(i32 %35)
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %6, align 4
  br label %106

38:                                               ; preds = %26
  %39 = load i32, i32* %14, align 4
  %40 = call i64 @is_string(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @is_string(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @get_string(i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @get_string(i32 %49)
  %51 = call i64 @jsstr_cmp(i32 %48, i32 %50)
  %52 = icmp slt i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %10, align 4
  %55 = xor i32 %53, %54
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @get_string(i32 %57)
  %59 = call i32 @jsstr_release(i32 %58)
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @get_string(i32 %60)
  %62 = call i32 @jsstr_release(i32 %61)
  %63 = load i32, i32* @S_OK, align 4
  store i32 %63, i32* %6, align 4
  br label %106

64:                                               ; preds = %42, %38
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @to_number(i32* %65, i32 %66, double* %12)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @jsval_release(i32 %68)
  %70 = load i32, i32* %16, align 4
  %71 = call i64 @SUCCEEDED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @to_number(i32* %74, i32 %75, double* %13)
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %73, %64
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @jsval_release(i32 %78)
  %80 = load i32, i32* %16, align 4
  %81 = call i64 @FAILED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %6, align 4
  br label %106

85:                                               ; preds = %77
  %86 = load double, double* %12, align 8
  %87 = call i32 @isnan(double %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = load double, double* %13, align 8
  %91 = call i32 @isnan(double %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load double, double* %12, align 8
  %95 = load double, double* %13, align 8
  %96 = fcmp olt double %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %10, align 4
  %99 = xor i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %93, %89, %85
  %102 = phi i1 [ false, %89 ], [ false, %85 ], [ %100, %93 ]
  %103 = zext i1 %102 to i32
  %104 = load i32*, i32** %11, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @S_OK, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %101, %83, %46, %34, %24
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @to_primitive(i32*, i32, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @is_string(i32) #1

declare dso_local i64 @jsstr_cmp(i32, i32) #1

declare dso_local i32 @get_string(i32) #1

declare dso_local i32 @jsstr_release(i32) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
