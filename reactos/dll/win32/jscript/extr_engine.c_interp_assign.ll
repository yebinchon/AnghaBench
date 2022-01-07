; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_assign.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_ILLEGAL_ASSIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @interp_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_assign(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @stack_pop(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @stack_pop_exprval(i32* %10, i32* %4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @jsval_release(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @JS_E_ILLEGAL_ASSIGN, align 4
  %18 = call i32 @throw_reference_error(i32* %16, i32 %17, i32* null)
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @exprval_propput(i32* %20, i32* %4, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = call i32 @exprval_release(i32* %4)
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @jsval_release(i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %19
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @stack_push(i32* %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %27, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @stack_pop(i32*) #1

declare dso_local i32 @stack_pop_exprval(i32*, i32*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @throw_reference_error(i32*, i32, i32*) #1

declare dso_local i32 @exprval_propput(i32*, i32*, i32) #1

declare dso_local i32 @exprval_release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @stack_push(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
