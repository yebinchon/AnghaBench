; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_number.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_number.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"unable to create integer\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to create real\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"wrong integer value\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"wrong real value\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"wrong number value\00", align 1
@NAN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tests() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = call i32* @json_integer(i32 5)
  store i32* %5, i32** %1, align 8
  %6 = call i32* @json_real(double 1.001000e+02)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32*, i32** %2, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @json_integer_value(i32* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 5
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32*, i32** %2, align 8
  %25 = call double @json_real_value(i32* %24)
  store double %25, double* %4, align 8
  %26 = load double, double* %4, align 8
  %27 = fcmp une double %26, 1.001000e+02
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32*, i32** %1, align 8
  %32 = call double @json_number_value(i32* %31)
  store double %32, double* %4, align 8
  %33 = load double, double* %4, align 8
  %34 = fcmp une double %33, 5.000000e+00
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32*, i32** %2, align 8
  %39 = call double @json_number_value(i32* %38)
  store double %39, double* %4, align 8
  %40 = load double, double* %4, align 8
  %41 = fcmp une double %40, 1.001000e+02
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @json_decref(i32* %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @json_decref(i32* %47)
  ret void
}

declare dso_local i32* @json_integer(i32) #1

declare dso_local i32* @json_real(double) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @json_integer_value(i32*) #1

declare dso_local double @json_real_value(i32*) #1

declare dso_local double @json_number_value(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
