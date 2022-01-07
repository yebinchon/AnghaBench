; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_NumberConstr_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_number.c_NumberConstr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unimplemented flags %x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @NumberConstr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NumberConstr_value(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %78 [
    i32 128, label %19
    i32 129, label %49
  ]

19:                                               ; preds = %6
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 @jsval_number(double 0.000000e+00)
  %27 = load i32*, i32** %13, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @S_OK, align 4
  store i32 %29, i32* %7, align 4
  br label %84

30:                                               ; preds = %19
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @to_number(i32* %31, i32 %34, double* %14)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @FAILED(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %7, align 4
  br label %84

41:                                               ; preds = %30
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load double, double* %14, align 8
  %46 = call i32 @jsval_number(double %45)
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %41
  br label %82

49:                                               ; preds = %6
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @to_number(i32* %53, i32 %56, double* %14)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @FAILED(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %7, align 4
  br label %84

63:                                               ; preds = %52
  br label %65

64:                                               ; preds = %49
  store double 0.000000e+00, double* %14, align 8
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32*, i32** %8, align 8
  %67 = load double, double* %14, align 8
  %68 = call i32 @create_number(i32* %66, double %67, i32** %16)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @FAILED(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %7, align 4
  br label %84

74:                                               ; preds = %65
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @jsval_obj(i32* %75)
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  br label %82

78:                                               ; preds = %6
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %81, i32* %7, align 4
  br label %84

82:                                               ; preds = %74, %48
  %83 = load i32, i32* @S_OK, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %78, %72, %61, %39, %28
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @jsval_number(double) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @create_number(i32*, double, i32**) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
