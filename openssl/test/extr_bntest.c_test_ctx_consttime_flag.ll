; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_ctx_consttime_flag.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_ctx_consttime_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_ctx_consttime_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ctx_consttime_flag() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32* (...) @BN_CTX_new()
  store i32* %6, i32** %1, align 8
  %7 = call i32 @TEST_ptr(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = call i32* (...) @BN_CTX_secure_new()
  store i32* %10, i32** %2, align 8
  %11 = call i32 @TEST_ptr(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %0
  br label %42

14:                                               ; preds = %9
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %38, %14
  %16 = load i64, i64* %3, align 8
  %17 = icmp ult i64 %16, 2
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** %1, align 8
  br label %25

23:                                               ; preds = %18
  %24 = load i32*, i32** %2, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32* [ %22, %21 ], [ %24, %23 ]
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @test_ctx_set_ct_flag(i32* %27)
  %29 = call i32 @TEST_true(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @test_ctx_check_ct_flag(i32* %32)
  %34 = call i32 @TEST_true(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %25
  br label %42

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %15

41:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %36, %13
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @BN_CTX_free(i32* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @BN_CTX_free(i32* %45)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_CTX_secure_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @test_ctx_set_ct_flag(i32*) #1

declare dso_local i32 @test_ctx_check_ct_flag(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
