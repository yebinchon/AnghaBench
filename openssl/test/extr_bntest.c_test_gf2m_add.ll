; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_add.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_gf2m_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_gf2m_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_gf2m_add() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32* (...) @BN_new()
  store i32* %6, i32** %1, align 8
  %7 = call i64 @TEST_ptr(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = call i32* (...) @BN_new()
  store i32* %10, i32** %2, align 8
  %11 = call i64 @TEST_ptr(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i32* (...) @BN_new()
  store i32* %14, i32** %3, align 8
  %15 = call i64 @TEST_ptr(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %9, %0
  br label %90

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %86, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NUM0, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %89

23:                                               ; preds = %19
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @BN_rand(i32* %24, i32 512, i32 0, i32 0)
  %26 = call i64 @TEST_true(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 (...) @BN_value_one()
  %31 = call i32* @BN_copy(i32* %29, i32 %30)
  %32 = call i64 @TEST_ptr(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28, %23
  br label %90

35:                                               ; preds = %28
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 (...) @rand_neg()
  %38 = call i32 @BN_set_negative(i32* %36, i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 (...) @rand_neg()
  %41 = call i32 @BN_set_negative(i32* %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @BN_GF2m_add(i32* %42, i32* %43, i32* %44)
  %46 = call i64 @TEST_true(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %35
  %49 = load i32*, i32** %1, align 8
  %50 = call i64 @BN_is_odd(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @BN_is_odd(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %52, %48
  %57 = load i32*, i32** %1, align 8
  %58 = call i64 @BN_is_odd(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @BN_is_odd(i32* %61)
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i1 [ false, %56 ], [ %64, %60 ]
  br label %67

67:                                               ; preds = %65, %52
  %68 = phi i1 [ true, %52 ], [ %66, %65 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @TEST_false(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %35
  br label %90

73:                                               ; preds = %67
  %74 = load i32*, i32** %3, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @BN_GF2m_add(i32* %74, i32* %75, i32* %76)
  %78 = call i64 @TEST_true(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32*, i32** %3, align 8
  %82 = call i64 @TEST_BN_eq_zero(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80, %73
  br label %90

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %19

89:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %84, %72, %34, %17
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @BN_free(i32* %91)
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @BN_free(i32* %93)
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @BN_free(i32* %95)
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_rand(i32*, i32, i32, i32) #1

declare dso_local i32* @BN_copy(i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @rand_neg(...) #1

declare dso_local i32 @BN_GF2m_add(i32*, i32*, i32*) #1

declare dso_local i64 @TEST_false(i32) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i64 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
