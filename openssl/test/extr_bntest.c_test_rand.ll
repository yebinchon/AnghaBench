; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_rand.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_rand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rand() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32* (...) @BN_new()
  store i32* %4, i32** %2, align 8
  %5 = call i32 @TEST_ptr(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %56

8:                                                ; preds = %0
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @BN_rand(i32* %9, i32 0, i32 0, i32 0)
  %11 = call i32 @TEST_false(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @BN_rand(i32* %14, i32 0, i32 1, i32 1)
  %16 = call i32 @TEST_false(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %13
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @BN_rand(i32* %19, i32 1, i32 0, i32 0)
  %21 = call i32 @TEST_true(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @TEST_BN_eq_one(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @BN_rand(i32* %28, i32 1, i32 1, i32 0)
  %30 = call i32 @TEST_false(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @BN_rand(i32* %33, i32 1, i32 -1, i32 1)
  %35 = call i32 @TEST_true(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @TEST_BN_eq_one(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @BN_rand(i32* %42, i32 2, i32 1, i32 0)
  %44 = call i32 @TEST_true(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @TEST_BN_eq_word(i32* %47, i32 3)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %41, %37, %32, %27, %23, %18, %13, %8
  br label %52

51:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @BN_free(i32* %53)
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %52, %7
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @BN_rand(i32*, i32, i32, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @TEST_BN_eq_one(i32*) #1

declare dso_local i32 @TEST_BN_eq_word(i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
