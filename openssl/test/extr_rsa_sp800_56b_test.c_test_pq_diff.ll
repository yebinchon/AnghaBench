; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_pq_diff.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_pq_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_pq_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_pq_diff() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = call i32* (...) @BN_new()
  store i32* %5, i32** %2, align 8
  %6 = call i64 @TEST_ptr(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %62

8:                                                ; preds = %0
  %9 = call i32* (...) @BN_new()
  store i32* %9, i32** %3, align 8
  %10 = call i64 @TEST_ptr(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %8
  %13 = call i32* (...) @BN_new()
  store i32* %13, i32** %4, align 8
  %14 = call i64 @TEST_ptr(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %62

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @BN_set_word(i32* %17, i32 1)
  %19 = call i64 @TEST_true(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @BN_set_word(i32* %22, i32 3)
  %24 = call i64 @TEST_true(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @rsa_check_pminusq_diff(i32* %27, i32* %28, i32* %29, i32 202)
  %31 = call i64 @TEST_false(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %26
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @BN_set_word(i32* %34, i32 4)
  %36 = call i64 @TEST_true(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  %39 = load i32*, i32** %2, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @rsa_check_pminusq_diff(i32* %39, i32* %40, i32* %41, i32 202)
  %43 = call i64 @TEST_true(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @BN_set_word(i32* %46, i32 4)
  %48 = call i64 @TEST_true(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @BN_set_word(i32* %51, i32 1)
  %53 = call i64 @TEST_true(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32*, i32** %2, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @rsa_check_pminusq_diff(i32* %56, i32* %57, i32* %58, i32 202)
  %60 = call i64 @TEST_true(i32 %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %55, %50, %45, %38, %33, %26, %21, %16, %12, %8, %0
  %63 = phi i1 [ false, %50 ], [ false, %45 ], [ false, %38 ], [ false, %33 ], [ false, %26 ], [ false, %21 ], [ false, %16 ], [ false, %12 ], [ false, %8 ], [ false, %0 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %1, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @BN_free(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @BN_free(i32* %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @BN_free(i32* %69)
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i64 @TEST_false(i32) #1

declare dso_local i32 @rsa_check_pminusq_diff(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
