; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-math/src/extr_math.c_math_log.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-math/src/extr_math.c_math_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"f|f\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @math_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_log(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @mrb_get_args(i32* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double* %5, double* %6)
  store i32 %9, i32* %7, align 4
  %10 = load double, double* %5, align 8
  %11 = fcmp olt double %10, 0.000000e+00
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @domain_error(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %2
  %16 = load double, double* %5, align 8
  %17 = call double @log(double %16) #3
  store double %17, double* %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load double, double* %6, align 8
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @domain_error(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  %27 = load double, double* %6, align 8
  %28 = call double @log(double %27) #3
  %29 = load double, double* %5, align 8
  %30 = fdiv double %29, %28
  store double %30, double* %5, align 8
  br label %31

31:                                               ; preds = %26, %15
  %32 = load i32*, i32** %3, align 8
  %33 = load double, double* %5, align 8
  %34 = call i32 @mrb_float_value(i32* %32, double %33)
  ret i32 %34
}

declare dso_local i32 @mrb_get_args(i32*, i8*, double*, double*) #1

declare dso_local i32 @domain_error(i32*, i8*) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local i32 @mrb_float_value(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
