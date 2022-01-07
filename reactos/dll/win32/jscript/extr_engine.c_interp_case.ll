; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_case.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @interp_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_case(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @get_op_uint(i32* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @stack_pop(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @stack_top(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @jsval_strict_equal(i32 %14, i32 %15, i64* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @jsval_release(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %38

24:                                               ; preds = %1
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @stack_popn(i32* %28, i32 1)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @jmp_abs(i32* %30, i32 %31)
  br label %36

33:                                               ; preds = %24
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @jmp_next(i32* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* @S_OK, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %22
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @get_op_uint(i32*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @stack_pop(i32*) #1

declare dso_local i32 @jsval_strict_equal(i32, i32, i64*) #1

declare dso_local i32 @stack_top(i32*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @stack_popn(i32*, i32) #1

declare dso_local i32 @jmp_abs(i32*, i32) #1

declare dso_local i32 @jmp_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
