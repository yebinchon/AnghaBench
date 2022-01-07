; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_assign_call.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_assign_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@JS_E_ILLEGAL_ASSIGN = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @interp_assign_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_assign_call(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @get_op_uint(i32* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = add i32 %13, 1
  %15 = call i32 @stack_topn_exprval(i32* %12, i32 %14, i32* %5)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @JS_E_ILLEGAL_ASSIGN, align 4
  %20 = call i32 @throw_reference_error(i32* %18, i32 %19, i32* null)
  store i32 %20, i32* %2, align 4
  br label %46

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @DISPATCH_PROPERTYPUT, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 1
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 1
  %29 = call i32 @stack_args(i32* %26, i32 %28)
  %30 = call i32 @exprval_call(i32* %22, i32* %5, i32 %23, i32 %25, i32 %29, i32* null)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %46

36:                                               ; preds = %21
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @stack_pop(i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, 2
  %42 = call i32 @stack_popn(i32* %39, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @stack_push(i32* %43, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %36, %34, %17
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @get_op_uint(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @stack_topn_exprval(i32*, i32, i32*) #1

declare dso_local i32 @throw_reference_error(i32*, i32, i32*) #1

declare dso_local i32 @exprval_call(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @stack_args(i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @stack_pop(i32*) #1

declare dso_local i32 @stack_popn(i32*, i32) #1

declare dso_local i32 @stack_push(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
