; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_srptest.c_run_srp_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_srptest.c_run_srp_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"run_srp: expecting a mismatch\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alice\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"password1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"password2\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"run_srp: expecting a match\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_srp_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_srp_tests() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @TEST_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @run_srp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %4 = call i32 @TEST_false(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %14

7:                                                ; preds = %0
  %8 = call i32 @TEST_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 @run_srp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %10 = call i32 @TEST_true(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %14

13:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  br label %14

14:                                               ; preds = %13, %12, %6
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @TEST_info(i8*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @run_srp(i8*, i8*, i8*) #1

declare dso_local i32 @TEST_true(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
