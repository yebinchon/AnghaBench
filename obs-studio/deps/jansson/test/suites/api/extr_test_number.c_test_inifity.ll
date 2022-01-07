; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_number.c_test_inifity.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_number.c_test_inifity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [32 x i8] c"could construct a real from Inf\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could set a real to Inf\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"real value changed unexpectedly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_inifity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_inifity() #0 {
  %1 = alloca i32*, align 8
  %2 = load double, double* @INFINITY, align 8
  %3 = call i32* @json_real(double %2)
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32* @json_real(double 1.000000e+00)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = load double, double* @INFINITY, align 8
  %12 = call i32 @json_real_set(i32* %10, double %11)
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i32*, i32** %1, align 8
  %18 = call double @json_real_value(i32* %17)
  %19 = fcmp une double %18, 1.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @json_decref(i32* %23)
  ret void
}

declare dso_local i32* @json_real(double) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @json_real_set(i32*, double) #1

declare dso_local double @json_real_value(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
