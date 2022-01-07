; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_test_param_real.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_test_param_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_param_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_param_real() #0 {
  %1 = alloca double, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = call double* @OSSL_PARAM_double(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store double* %3, double** %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store double* %1, double** %5, align 8
  %6 = call i32 @OSSL_PARAM_set_double(%struct.TYPE_4__* %2, double 3.141590e+00)
  %7 = call i64 @TEST_true(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load double, double* %1, align 8
  %11 = call i64 @TEST_double_eq(double %10, double 3.141590e+00)
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %9, %0
  %14 = phi i1 [ false, %0 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local double* @OSSL_PARAM_double(i8*, i32*) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @OSSL_PARAM_set_double(%struct.TYPE_4__*, double) #1

declare dso_local i64 @TEST_double_eq(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
