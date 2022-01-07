; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_run_multi_thread_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_run_multi_thread_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@multi_thread_rand_bytes_succeeded = common dso_local global i64 0, align 8
@multi_thread_rand_priv_bytes_succeeded = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_multi_thread_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_multi_thread_test() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 @time(i32* null)
  store i32 %5, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = call i32* (...) @RAND_DRBG_get0_public()
  store i32* %6, i32** %3, align 8
  %7 = call i32 @TEST_ptr(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = call i32* (...) @RAND_DRBG_get0_private()
  store i32* %10, i32** %4, align 8
  %11 = call i32 @TEST_ptr(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %0
  store i64 0, i64* @multi_thread_rand_bytes_succeeded, align 8
  br label %35

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @RAND_DRBG_set_reseed_time_interval(i32* %15, i32 1)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @RAND_DRBG_set_reseed_time_interval(i32* %17, i32 1)
  br label %19

19:                                               ; preds = %30, %14
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %21 = call i64 @RAND_bytes(i8* %20, i32 256)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 0, i64* @multi_thread_rand_bytes_succeeded, align 8
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %26 = call i64 @RAND_priv_bytes(i8* %25, i32 256)
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 0, i64* @multi_thread_rand_priv_bytes_succeeded, align 8
  br label %29

29:                                               ; preds = %28, %24
  br label %30

30:                                               ; preds = %29
  %31 = call i32 @time(i32* null)
  %32 = load i32, i32* %2, align 4
  %33 = sub nsw i32 %31, %32
  %34 = icmp slt i32 %33, 5
  br i1 %34, label %19, label %35

35:                                               ; preds = %13, %30
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @RAND_DRBG_get0_public(...) #1

declare dso_local i32* @RAND_DRBG_get0_private(...) #1

declare dso_local i32 @RAND_DRBG_set_reseed_time_interval(i32*, i32) #1

declare dso_local i64 @RAND_bytes(i8*, i32) #1

declare dso_local i64 @RAND_priv_bytes(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
