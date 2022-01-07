; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_rand_seed.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_rand_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_rand_seed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rand_seed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = call i32* (...) @RAND_DRBG_get0_master()
  store i32* %6, i32** %2, align 8
  %7 = call i32 @TEST_ptr(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @disable_crngt(i32* %10)
  %12 = call i32 @TEST_true(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %0
  store i32 0, i32* %1, align 4
  br label %40

15:                                               ; preds = %9
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i32 205, i32 256)
  store i64 256, i64* %4, align 8
  br label %18

18:                                               ; preds = %36, %15
  %19 = load i64, i64* %4, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @RAND_DRBG_uninstantiate(i32* %22)
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @RAND_seed(i8* %24, i64 %25)
  %27 = call i32 (...) @RAND_status()
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp uge i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST_int_eq(i32 %27, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %40

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %4, align 8
  br label %18

39:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %40

40:                                               ; preds = %39, %34, %14
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @RAND_DRBG_get0_master(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @disable_crngt(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @RAND_DRBG_uninstantiate(i32*) #1

declare dso_local i32 @RAND_seed(i8*, i64) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @RAND_status(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
