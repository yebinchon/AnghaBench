; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssl_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssl_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"num_tests\00", align 1
@test_handshake = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i32 @NCONF_new(i32* null)
  store i32 %3, i32* @conf, align 4
  %4 = call i32 @TEST_ptr(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = load i32, i32* @conf, align 4
  %8 = call i32 @test_get_argument(i32 0)
  %9 = call i32 @NCONF_load(i32 %7, i32 %8, i32* null)
  %10 = call i32 @TEST_int_gt(i32 %9, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load i32, i32* @conf, align 4
  %14 = call i32 @NCONF_get_number_e(i32 %13, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64* %2)
  %15 = call i32 @TEST_int_ne(i32 %14, i32 0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %6, %0
  store i32 0, i32* %1, align 4
  br label %23

18:                                               ; preds = %12
  %19 = load i32, i32* @test_handshake, align 4
  %20 = load i64, i64* %2, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @ADD_ALL_TESTS(i32 %19, i32 %21)
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %18, %17
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @NCONF_new(i32*) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @NCONF_load(i32, i32, i32*) #1

declare dso_local i32 @test_get_argument(i32) #1

declare dso_local i32 @TEST_int_ne(i32, i32) #1

declare dso_local i32 @NCONF_get_number_e(i32, i32*, i8*, i64*) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
