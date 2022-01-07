; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_kronecker.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_kronecker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM0 = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Legendre symbol computation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kronecker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kronecker() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32* (...) @BN_new()
  store i32* %9, i32** %1, align 8
  %10 = call i32 @TEST_ptr(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %0
  %13 = call i32* (...) @BN_new()
  store i32* %13, i32** %2, align 8
  %14 = call i32 @TEST_ptr(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = call i32* (...) @BN_new()
  store i32* %17, i32** %3, align 8
  %18 = call i32 @TEST_ptr(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = call i32* (...) @BN_new()
  store i32* %21, i32** %4, align 8
  %22 = call i32 @TEST_ptr(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %16, %12, %0
  br label %140

25:                                               ; preds = %20
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @BN_generate_prime_ex(i32* %26, i32 512, i32 0, i32* null, i32* null, i32* null)
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %140

31:                                               ; preds = %25
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 (...) @rand_neg()
  %34 = call i32 @BN_set_negative(i32* %32, i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %136, %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @NUM0, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %139

39:                                               ; preds = %35
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @BN_bntest_rand(i32* %40, i32 512, i32 0, i32 0)
  %42 = call i32 @TEST_true(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %140

45:                                               ; preds = %39
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 (...) @rand_neg()
  %48 = call i32 @BN_set_negative(i32* %46, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @BN_copy(i32* %49, i32* %50)
  %52 = call i32 @TEST_true(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %140

55:                                               ; preds = %45
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @BN_set_negative(i32* %56, i32 0)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @BN_sub_word(i32* %58, i32 1)
  %60 = call i32 @TEST_true(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %140

63:                                               ; preds = %55
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @BN_rshift1(i32* %64, i32* %65)
  %67 = call i32 @TEST_true(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %140

70:                                               ; preds = %63
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @BN_set_negative(i32* %71, i32 0)
  %73 = load i32*, i32** %3, align 8
  %74 = load i32*, i32** %1, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %2, align 8
  %77 = load i32, i32* @ctx, align 4
  %78 = call i32 @BN_mod_exp_recp(i32* %73, i32* %74, i32* %75, i32* %76, i32 %77)
  %79 = call i32 @TEST_true(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %70
  br label %140

82:                                               ; preds = %70
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @BN_set_negative(i32* %83, i32 1)
  %85 = load i32*, i32** %3, align 8
  %86 = call i64 @BN_is_word(i32* %85, i32 1)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 1, i32* %6, align 4
  br label %110

89:                                               ; preds = %82
  %90 = load i32*, i32** %3, align 8
  %91 = call i64 @BN_is_zero(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 0, i32* %6, align 4
  br label %109

94:                                               ; preds = %89
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @BN_add_word(i32* %95, i32 1)
  %97 = call i32 @TEST_true(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %140

100:                                              ; preds = %94
  %101 = load i32*, i32** %3, align 8
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 @BN_ucmp(i32* %101, i32* %102)
  %104 = call i32 @TEST_int_eq(i32 %103, i32 0)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %100
  %107 = call i32 @TEST_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %140

108:                                              ; preds = %100
  store i32 -1, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %93
  br label %110

110:                                              ; preds = %109, %88
  %111 = load i32*, i32** %1, align 8
  %112 = load i32*, i32** %2, align 8
  %113 = load i32, i32* @ctx, align 4
  %114 = call i32 @BN_kronecker(i32* %111, i32* %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = call i32 @TEST_int_ge(i32 %114, i32 -1)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  br label %140

118:                                              ; preds = %110
  %119 = load i32*, i32** %1, align 8
  %120 = call i64 @BN_is_negative(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load i32*, i32** %2, align 8
  %124 = call i64 @BN_is_negative(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %126, %122, %118
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @TEST_int_eq(i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  br label %140

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %35

139:                                              ; preds = %35
  store i32 1, i32* %8, align 4
  br label %140

140:                                              ; preds = %139, %134, %117, %106, %99, %81, %69, %62, %54, %44, %30, %24
  %141 = load i32*, i32** %1, align 8
  %142 = call i32 @BN_free(i32* %141)
  %143 = load i32*, i32** %2, align 8
  %144 = call i32 @BN_free(i32* %143)
  %145 = load i32*, i32** %3, align 8
  %146 = call i32 @BN_free(i32* %145)
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @BN_free(i32* %147)
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_generate_prime_ex(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @rand_neg(...) #1

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_sub_word(i32*, i32) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_recp(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @BN_is_word(i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BN_ucmp(i32*, i32*) #1

declare dso_local i32 @TEST_info(i8*) #1

declare dso_local i32 @TEST_int_ge(i32, i32) #1

declare dso_local i32 @BN_kronecker(i32*, i32*, i32) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
