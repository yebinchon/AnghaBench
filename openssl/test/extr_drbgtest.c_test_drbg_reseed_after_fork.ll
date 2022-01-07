; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_drbg_reseed_after_fork.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_drbg_reseed_after_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @test_drbg_reseed_after_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_drbg_reseed_after_fork(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = call i64 (...) @fork()
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @TEST_int_ge(i64 %11, i32 0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @waitpid(i64 %19, i32* %9, i32 0)
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @TEST_int_eq(i32 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @TEST_int_eq(i32 %25, i64 0)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i1 [ false, %18 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %48

31:                                               ; preds = %15
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @test_drbg_reseed(i32 1, i32* %32, i32* %33, i32* %34, i32 1, i32 1, i32 1, i32 0)
  %36 = call i32 @TEST_true(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @unhook_drbg(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @unhook_drbg(i32* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @unhook_drbg(i32* %44)
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @exit(i32 %46) #3
  unreachable

48:                                               ; preds = %28, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @TEST_int_ge(i64, i32) #1

declare dso_local i64 @TEST_int_eq(i32, i64) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @test_drbg_reseed(i32, i32*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @unhook_drbg(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
