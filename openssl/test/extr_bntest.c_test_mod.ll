; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_mod.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM0 = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mod() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32* (...) @BN_new()
  store i32* %8, i32** %1, align 8
  %9 = call i32 @TEST_ptr(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %0
  %12 = call i32* (...) @BN_new()
  store i32* %12, i32** %2, align 8
  %13 = call i32 @TEST_ptr(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = call i32* (...) @BN_new()
  store i32* %16, i32** %3, align 8
  %17 = call i32 @TEST_ptr(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = call i32* (...) @BN_new()
  store i32* %20, i32** %4, align 8
  %21 = call i32 @TEST_ptr(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i32* (...) @BN_new()
  store i32* %24, i32** %5, align 8
  %25 = call i32 @TEST_ptr(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %19, %15, %11, %0
  br label %88

28:                                               ; preds = %23
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @BN_bntest_rand(i32* %29, i32 1024, i32 0, i32 0)
  %31 = call i64 @TEST_true(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %88

34:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %84, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @NUM0, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %87

39:                                               ; preds = %35
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %41, 10
  %43 = add nsw i32 450, %42
  %44 = call i32 @BN_bntest_rand(i32* %40, i32 %43, i32 0, i32 0)
  %45 = call i64 @TEST_true(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %88

48:                                               ; preds = %39
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 (...) @rand_neg()
  %51 = call i32 @BN_set_negative(i32* %49, i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 (...) @rand_neg()
  %54 = call i32 @BN_set_negative(i32* %52, i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %1, align 8
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @ctx, align 4
  %59 = call i32 @BN_mod(i32* %55, i32* %56, i32* %57, i32 %58)
  %60 = call i64 @TEST_true(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %48
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %1, align 8
  %66 = load i32*, i32** %2, align 8
  %67 = load i32, i32* @ctx, align 4
  %68 = call i32 @BN_div(i32* %63, i32* %64, i32* %65, i32* %66, i32 %67)
  %69 = call i64 @TEST_true(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @BN_sub(i32* %72, i32* %73, i32* %74)
  %76 = call i64 @TEST_true(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @TEST_BN_eq_zero(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78, %71, %62, %48
  br label %88

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %35

87:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %82, %47, %33, %27
  %89 = load i32*, i32** %1, align 8
  %90 = call i32 @BN_free(i32* %89)
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @BN_free(i32* %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @BN_free(i32* %93)
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @BN_free(i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @BN_free(i32* %97)
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @rand_neg(...) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i64 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
