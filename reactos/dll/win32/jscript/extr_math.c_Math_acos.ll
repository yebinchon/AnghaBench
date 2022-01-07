; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_math.c_Math_acos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_math.c_Math_acos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NAN = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Math_acos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Math_acos(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %6
  %20 = load i32*, i32** %13, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @NAN, align 4
  %24 = call i32 @jsval_number(i32 %23)
  %25 = load i32*, i32** %13, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* @S_OK, align 4
  store i32 %27, i32* %7, align 4
  br label %59

28:                                               ; preds = %6
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @to_number(i32* %29, i32 %32, double* %14)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i64 @FAILED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %7, align 4
  br label %59

39:                                               ; preds = %28
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load double, double* %14, align 8
  %44 = fcmp olt double %43, -1.000000e+00
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load double, double* %14, align 8
  %47 = fcmp ogt double %46, 1.000000e+00
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @NAN, align 4
  br label %53

50:                                               ; preds = %45
  %51 = load double, double* %14, align 8
  %52 = call i32 @acos(double %51)
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i32 [ %49, %48 ], [ %52, %50 ]
  %55 = call i32 @jsval_number(i32 %54)
  %56 = load i32*, i32** %13, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %39
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %37, %26
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @acos(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
