; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_add_opt_error.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_add_opt_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@const_nan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @numeric_add_opt_error(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @NUMERIC_IS_NAN(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @NUMERIC_IS_NAN(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = call i32 @make_result(i32* @const_nan)
  store i32 %20, i32* %4, align 4
  br label %32

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @init_var_from_num(i32 %22, i32* %8)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @init_var_from_num(i32 %24, i32* %9)
  %26 = call i32 @init_var(i32* %10)
  %27 = call i32 @add_var(i32* %8, i32* %9, i32* %10)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @make_result_opt_error(i32* %10, i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = call i32 @free_var(i32* %10)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %21, %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @NUMERIC_IS_NAN(i32) #1

declare dso_local i32 @make_result(i32*) #1

declare dso_local i32 @init_var_from_num(i32, i32*) #1

declare dso_local i32 @init_var(i32*) #1

declare dso_local i32 @add_var(i32*, i32*, i32*) #1

declare dso_local i32 @make_result_opt_error(i32*, i32*) #1

declare dso_local i32 @free_var(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
