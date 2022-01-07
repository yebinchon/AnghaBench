; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Checking response to frequency step:\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"  Step           1st interval              2nd interval\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"             Freq    Dev     Max       Freq    Dev     Max\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @init_test()
  %12 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %8, align 4
  br label %15

15:                                               ; preds = %44, %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = call i32 (...) @rand()
  %24 = srem i32 %23, 16777216
  %25 = sub nsw i32 %24, 8388608
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 6.553600e+10
  store double %27, double* %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 6, %28
  %30 = shl i32 1, %29
  %31 = sitofp i32 %30 to double
  %32 = fmul double 1.000000e-05, %31
  store double %32, double* %7, align 8
  %33 = load double, double* %6, align 8
  %34 = load double, double* %7, align 8
  %35 = call i64 @run_test(i32 0, double %33, double %34)
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %22
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %19

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %8, align 4
  br label %15

47:                                               ; preds = %15
  %48 = call i32 @set_frequency(double 0.000000e+00)
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 (...) @ksft_exit_fail()
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %47
  %54 = call i32 (...) @ksft_exit_pass()
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @init_test(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i64 @run_test(i32, double, double) #1

declare dso_local i32 @set_frequency(double) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
