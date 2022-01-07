; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_number_value.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_number_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_number_value(i32* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @json_is_integer(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @json_integer_value(i32* %8)
  %10 = sitofp i64 %9 to double
  store double %10, double* %2, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @json_is_real(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call double @json_real_value(i32* %16)
  store double %17, double* %2, align 8
  br label %19

18:                                               ; preds = %11
  store double 0.000000e+00, double* %2, align 8
  br label %19

19:                                               ; preds = %18, %15, %7
  %20 = load double, double* %2, align 8
  ret double %20
}

declare dso_local i64 @json_is_integer(i32*) #1

declare dso_local i64 @json_integer_value(i32*) #1

declare dso_local i64 @json_is_real(i32*) #1

declare dso_local double @json_real_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
