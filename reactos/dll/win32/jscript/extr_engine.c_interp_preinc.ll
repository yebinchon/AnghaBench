; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_preinc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_preinc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@JS_E_OBJECT_EXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @interp_preinc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_preinc(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @get_op_int(i32* %10, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @stack_pop_exprval(i32* %14, i32* %5)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @JS_E_OBJECT_EXPECTED, align 4
  %20 = call i32 @throw_type_error(i32* %18, i32 %19, i32* null)
  store i32 %20, i32* %2, align 4
  br label %58

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @exprval_propget(i32* %22, i32* %5, i32* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @SUCCEEDED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @to_number(i32* %28, i32 %29, double* %9)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @jsval_release(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @SUCCEEDED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load double, double* %9, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sitofp i32 %38 to double
  %40 = fadd double %37, %39
  store double %40, double* %6, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load double, double* %6, align 8
  %43 = call i32 @jsval_number(double %42)
  %44 = call i32 @exprval_propput(i32* %41, i32* %5, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %36, %27
  br label %46

46:                                               ; preds = %45, %21
  %47 = call i32 @exprval_release(i32* %5)
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %46
  %54 = load i32*, i32** %3, align 8
  %55 = load double, double* %6, align 8
  %56 = call i32 @jsval_number(double %55)
  %57 = call i32 @stack_push(i32* %54, i32 %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %51, %17
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @get_op_int(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @stack_pop_exprval(i32*, i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @exprval_propget(i32*, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @exprval_propput(i32*, i32*, i32) #1

declare dso_local i32 @jsval_number(double) #1

declare dso_local i32 @exprval_release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @stack_push(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
