; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_expmodone.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_expmodone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_expmodone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_expmodone() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %7 = call i32* (...) @BN_new()
  store i32* %7, i32** %3, align 8
  %8 = call i32* (...) @BN_new()
  store i32* %8, i32** %4, align 8
  %9 = call i32* (...) @BN_new()
  store i32* %9, i32** %5, align 8
  %10 = call i32* (...) @BN_new()
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @TEST_ptr(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %0
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @TEST_ptr(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @TEST_ptr(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @TEST_ptr(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @TEST_ptr(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @BN_set_word(i32* %31, i32 1)
  %33 = call i32 @TEST_true(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @BN_set_word(i32* %36, i32 0)
  %38 = call i32 @TEST_true(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @BN_set_word(i32* %41, i32 1)
  %43 = call i32 @TEST_true(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %35, %30, %26, %22, %18, %14, %0
  br label %133

46:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %129, %46
  %48 = load i32, i32* %2, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %132

50:                                               ; preds = %47
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @BN_mod_exp(i32* %51, i32* %52, i32* %53, i32* %54, i32* null)
  %56 = call i32 @TEST_true(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %121

58:                                               ; preds = %50
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @TEST_BN_eq_zero(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %121

62:                                               ; preds = %58
  %63 = load i32*, i32** %3, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @BN_mod_exp_mont(i32* %63, i32* %64, i32* %65, i32* %66, i32* null, i32* null)
  %68 = call i32 @TEST_true(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %121

70:                                               ; preds = %62
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @TEST_BN_eq_zero(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %121

74:                                               ; preds = %70
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @BN_mod_exp_mont_consttime(i32* %75, i32* %76, i32* %77, i32* %78, i32* null, i32* null)
  %80 = call i32 @TEST_true(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %121

82:                                               ; preds = %74
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @TEST_BN_eq_zero(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %82
  %87 = load i32*, i32** %3, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @BN_mod_exp_mont_word(i32* %87, i32 1, i32* %88, i32* %89, i32* null, i32* null)
  %91 = call i32 @TEST_true(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %86
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @TEST_BN_eq_zero(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %93
  %98 = load i32*, i32** %3, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @BN_mod_exp_simple(i32* %98, i32* %99, i32* %100, i32* %101, i32* null)
  %103 = call i32 @TEST_true(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %97
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @TEST_BN_eq_zero(i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load i32*, i32** %3, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @BN_mod_exp_recp(i32* %110, i32* %111, i32* %112, i32* %113, i32* null)
  %115 = call i32 @TEST_true(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @TEST_BN_eq_zero(i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117, %109, %105, %97, %93, %86, %82, %74, %70, %62, %58, %50
  br label %133

122:                                              ; preds = %117
  %123 = load i32, i32* %2, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @BN_set_negative(i32* %126, i32 1)
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %2, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %2, align 4
  br label %47

132:                                              ; preds = %47
  store i32 1, i32* %1, align 4
  br label %133

133:                                              ; preds = %132, %121, %45
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @BN_free(i32* %134)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @BN_free(i32* %136)
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @BN_free(i32* %138)
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @BN_free(i32* %140)
  %142 = load i32, i32* %1, align 4
  ret i32 %142
}

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_mont_consttime(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_mont_word(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_simple(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_recp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
