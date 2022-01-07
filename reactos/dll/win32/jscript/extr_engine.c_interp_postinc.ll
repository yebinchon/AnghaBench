; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_postinc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_postinc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@JS_E_OBJECT_EXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @interp_postinc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_postinc(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @get_op_int(i32* %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @stack_pop_exprval(i32* %13, i32* %5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @JS_E_OBJECT_EXPECTED, align 4
  %19 = call i32 @throw_type_error(i32* %17, i32 %18, i32* null)
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @exprval_propget(i32* %21, i32* %5, i32* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @SUCCEEDED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @to_number(i32* %27, i32 %28, double* %8)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @SUCCEEDED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32*, i32** %3, align 8
  %35 = load double, double* %8, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sitofp i32 %36 to double
  %38 = fadd double %35, %37
  %39 = call i32 @jsval_number(double %38)
  %40 = call i32 @exprval_propput(i32* %34, i32* %5, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @jsval_release(i32 %46)
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48, %20
  %50 = call i32 @exprval_release(i32* %5)
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @FAILED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %49
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @stack_push(i32* %57, i32 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %54, %16
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @get_op_int(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @stack_pop_exprval(i32*, i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @exprval_propget(i32*, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i32 @exprval_propput(i32*, i32*, i32) #1

declare dso_local i32 @jsval_number(double) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @exprval_release(i32*) #1

declare dso_local i32 @stack_push(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
