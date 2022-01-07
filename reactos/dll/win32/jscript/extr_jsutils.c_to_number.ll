; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_to_number.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_to_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global double 0.000000e+00, align 8
@S_OK = common dso_local global i32 0, align 4
@HINT_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unimplemented for variant %s\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @to_number(i32* %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @jsval_type(i32 %10)
  switch i32 %11, label %62 [
    i32 129, label %12
    i32 133, label %16
    i32 132, label %19
    i32 130, label %24
    i32 131, label %29
    i32 134, label %47
    i32 128, label %56
  ]

12:                                               ; preds = %3
  %13 = load double, double* @NAN, align 8
  %14 = load double*, double** %7, align 8
  store double %13, double* %14, align 8
  %15 = load i32, i32* @S_OK, align 4
  store i32 %15, i32* %4, align 4
  br label %65

16:                                               ; preds = %3
  %17 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %17, align 8
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call double @get_number(i32 %20)
  %22 = load double*, double** %7, align 8
  store double %21, double* %22, align 8
  %23 = load i32, i32* @S_OK, align 4
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @get_string(i32 %25)
  %27 = load double*, double** %7, align 8
  %28 = call i32 @str_to_number(i32 %26, double* %27)
  store i32 %28, i32* %4, align 4
  br label %65

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @HINT_NUMBER, align 4
  %33 = call i32 @to_primitive(i32* %30, i32 %31, i32* %8, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @FAILED(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %65

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load double*, double** %7, align 8
  %43 = call i32 @to_number(i32* %40, i32 %41, double* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @jsval_release(i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %65

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @get_bool(i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = sitofp i32 %52 to double
  %54 = load double*, double** %7, align 8
  store double %53, double* %54, align 8
  %55 = load i32, i32* @S_OK, align 4
  store i32 %55, i32* %4, align 4
  br label %65

56:                                               ; preds = %3
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @get_variant(i32 %57)
  %59 = call i32 @debugstr_variant(i32 %58)
  %60 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %61, i32* %4, align 4
  br label %65

62:                                               ; preds = %3
  %63 = call i32 @assert(i32 0)
  %64 = load i32, i32* @E_FAIL, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %56, %47, %39, %37, %24, %19, %16, %12
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @jsval_type(i32) #1

declare dso_local double @get_number(i32) #1

declare dso_local i32 @str_to_number(i32, double*) #1

declare dso_local i32 @get_string(i32) #1

declare dso_local i32 @to_primitive(i32*, i32, i32*, i32) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @get_bool(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32) #1

declare dso_local i32 @get_variant(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
