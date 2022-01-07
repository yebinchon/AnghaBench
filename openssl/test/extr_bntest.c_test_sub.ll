; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_sub.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM0 = common dso_local global i32 0, align 4
@NUM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_sub() #0 {
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
  br label %102

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %98, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NUM0, align 4
  %22 = load i32, i32* @NUM1, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %101

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NUM1, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @BN_bntest_rand(i32* %30, i32 512, i32 0, i32 0)
  %32 = call i64 @TEST_true(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %2, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = call i32* @BN_copy(i32* %35, i32* %36)
  %38 = call i64 @TEST_ptr(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @BN_set_bit(i32* %41, i32 %42)
  %44 = call i64 @TEST_int_ne(i32 %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @BN_add_word(i32* %47, i32 %48)
  %50 = call i64 @TEST_true(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %102

53:                                               ; preds = %46, %40, %34, %29
  br label %71

54:                                               ; preds = %25
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 400, %56
  %58 = load i32, i32* @NUM1, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @BN_bntest_rand(i32* %55, i32 %59, i32 0, i32 0)
  %61 = call i64 @TEST_true(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  br label %102

64:                                               ; preds = %54
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 (...) @rand_neg()
  %67 = call i32 @BN_set_negative(i32* %65, i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 (...) @rand_neg()
  %70 = call i32 @BN_set_negative(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %53
  %72 = load i32*, i32** %3, align 8
  %73 = load i32*, i32** %1, align 8
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @BN_sub(i32* %72, i32* %73, i32* %74)
  %76 = call i64 @TEST_true(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %71
  %79 = load i32*, i32** %3, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @BN_add(i32* %79, i32* %80, i32* %81)
  %83 = call i64 @TEST_true(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load i32*, i32** %3, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @BN_sub(i32* %86, i32* %87, i32* %88)
  %90 = call i64 @TEST_true(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32*, i32** %3, align 8
  %94 = call i64 @TEST_BN_eq_zero(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92, %85, %78, %71
  br label %102

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %19

101:                                              ; preds = %19
  store i32 1, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %96, %63, %52, %17
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @BN_free(i32* %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @BN_free(i32* %105)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @BN_free(i32* %107)
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i64 @TEST_int_ne(i32, i32) #1

declare dso_local i32 @BN_set_bit(i32*, i32) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @rand_neg(...) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i64 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
