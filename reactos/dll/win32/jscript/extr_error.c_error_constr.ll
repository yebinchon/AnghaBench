; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_error.c_error_constr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_error.c_error_constr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global double 0.000000e+00, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unimplemented flags %x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32*, i32*)* @error_constr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @error_constr(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32* null, i32** %16, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %6
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @to_number(i32* %22, i32 %25, double* %18)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load double, double* @NAN, align 8
  store double %31, double* %18, align 8
  br label %32

32:                                               ; preds = %30, %21
  %33 = load double, double* %18, align 8
  %34 = call i64 @isnan(double %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @to_string(i32* %37, i32 %40, i32** %16)
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i32, i32* %17, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %7, align 4
  br label %108

48:                                               ; preds = %42
  %49 = load double, double* %18, align 8
  store double %49, double* %15, align 8
  br label %50

50:                                               ; preds = %48, %6
  %51 = load i32*, i32** %16, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @to_string(i32* %57, i32 %60, i32** %16)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call i64 @FAILED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %7, align 4
  br label %108

67:                                               ; preds = %56
  br label %70

68:                                               ; preds = %53
  %69 = call i32* (...) @jsstr_empty()
  store i32* %69, i32** %16, align 8
  br label %70

70:                                               ; preds = %68, %67
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i32, i32* %9, align 4
  switch i32 %72, label %98 [
    i32 128, label %73
    i32 129, label %73
  ]

73:                                               ; preds = %71, %71
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load double, double* %15, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = call i32 @create_error(i32* %74, i32* %75, double %76, i32* %77, i32** %14)
  store i32 %78, i32* %17, align 4
  %79 = load i32*, i32** %16, align 8
  %80 = call i32 @jsstr_release(i32* %79)
  %81 = load i32, i32* %17, align 4
  %82 = call i64 @FAILED(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %7, align 4
  br label %108

86:                                               ; preds = %73
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @jsval_obj(i32* %90)
  %92 = load i32*, i32** %12, align 8
  store i32 %91, i32* %92, align 4
  br label %96

93:                                               ; preds = %86
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @jsdisp_release(i32* %94)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* @S_OK, align 4
  store i32 %97, i32* %7, align 4
  br label %108

98:                                               ; preds = %71
  %99 = load i32*, i32** %16, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %16, align 8
  %103 = call i32 @jsstr_release(i32* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %104, %96, %84, %65, %46
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i32* @jsstr_empty(...) #1

declare dso_local i32 @create_error(i32*, i32*, double, i32*, i32**) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
