; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_to_int32.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_to_int32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @to_int32(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store double 0x41F0000000000000, double* %10, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @to_number(i32* %11, i32 %12, double* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %42

19:                                               ; preds = %3
  %20 = load double, double* %8, align 8
  %21 = call i64 @is_finite(double %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load double, double* %8, align 8
  %25 = fcmp ogt double %24, 0.000000e+00
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load double, double* %8, align 8
  %28 = call double @fmod(double %27, double 0x41F0000000000000) #3
  br label %34

29:                                               ; preds = %23
  %30 = load double, double* %8, align 8
  %31 = fneg double %30
  %32 = call double @fmod(double %31, double 0x41F0000000000000) #3
  %33 = fneg double %32
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi double [ %28, %26 ], [ %33, %29 ]
  store double %35, double* %8, align 8
  br label %37

36:                                               ; preds = %19
  store double 0.000000e+00, double* %8, align 8
  br label %37

37:                                               ; preds = %36, %34
  %38 = load double, double* %8, align 8
  %39 = fptosi double %38 to i64
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* @S_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @is_finite(double) #1

; Function Attrs: nounwind
declare dso_local double @fmod(double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
