; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_exptest.c_test_mod_exp_zero.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_exptest.c_test_mod_exp_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_RAND_TOP_ONE = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"BN_mod_exp\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"BN_mod_exp_recp\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"BN_mod_exp_simple\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"BN_mod_exp_mont\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"BN_mod_exp_mont_consttime\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"BN_mod_exp_mont_word failed: 1 ** 0 mod 1 = r (should be 0)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_mod_exp_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mod_exp_zero() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %9 = call i32* (...) @BN_CTX_new()
  store i32* %9, i32** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = call i32* (...) @BN_new()
  store i32* %10, i32** %3, align 8
  %11 = call i32 @TEST_ptr(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %0
  %14 = call i32* (...) @BN_new()
  store i32* %14, i32** %1, align 8
  %15 = call i32 @TEST_ptr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = call i32* (...) @BN_new()
  store i32* %18, i32** %2, align 8
  %19 = call i32 @TEST_ptr(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = call i32* (...) @BN_new()
  store i32* %22, i32** %4, align 8
  %23 = call i32 @TEST_ptr(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %17, %13, %0
  br label %148

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @BN_one(i32* %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @BN_one(i32* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @BN_zero(i32* %31)
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %35 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %36 = call i32 @BN_rand(i32* %33, i32 1024, i32 %34, i32 %35)
  %37 = call i32 @TEST_true(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %148

40:                                               ; preds = %26
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %1, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @BN_mod_exp(i32* %41, i32* %42, i32* %43, i32* %44, i32* %45)
  %47 = call i32 @TEST_true(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %148

50:                                               ; preds = %40
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @a_is_zero_mod_one(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %51, i32* %52)
  %54 = call i32 @TEST_true(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** %1, align 8
  %60 = load i32*, i32** %2, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @BN_mod_exp_recp(i32* %58, i32* %59, i32* %60, i32* %61, i32* %62)
  %64 = call i32 @TEST_true(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  br label %148

67:                                               ; preds = %57
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @a_is_zero_mod_one(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %68, i32* %69)
  %71 = call i32 @TEST_true(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i32 1, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %67
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %1, align 8
  %77 = load i32*, i32** %2, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @BN_mod_exp_simple(i32* %75, i32* %76, i32* %77, i32* %78, i32* %79)
  %81 = call i32 @TEST_true(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %148

84:                                               ; preds = %74
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @a_is_zero_mod_one(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %85, i32* %86)
  %88 = call i32 @TEST_true(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %84
  %92 = load i32*, i32** %4, align 8
  %93 = load i32*, i32** %1, align 8
  %94 = load i32*, i32** %2, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @BN_mod_exp_mont(i32* %92, i32* %93, i32* %94, i32* %95, i32* %96, i32* null)
  %98 = call i32 @TEST_true(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %91
  br label %148

101:                                              ; preds = %91
  %102 = load i32*, i32** %4, align 8
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @a_is_zero_mod_one(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %102, i32* %103)
  %105 = call i32 @TEST_true(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  store i32 1, i32* %8, align 4
  br label %108

108:                                              ; preds = %107, %101
  %109 = load i32*, i32** %4, align 8
  %110 = load i32*, i32** %1, align 8
  %111 = load i32*, i32** %2, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @BN_mod_exp_mont_consttime(i32* %109, i32* %110, i32* %111, i32* %112, i32* %113, i32* null)
  %115 = call i32 @TEST_true(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %108
  br label %148

118:                                              ; preds = %108
  %119 = load i32*, i32** %4, align 8
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @a_is_zero_mod_one(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32* %119, i32* %120)
  %122 = call i32 @TEST_true(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  store i32 1, i32* %8, align 4
  br label %125

125:                                              ; preds = %124, %118
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32*, i32** %2, align 8
  %129 = load i32*, i32** %3, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @BN_mod_exp_mont_word(i32* %126, i32 %127, i32* %128, i32* %129, i32* %130, i32* null)
  %132 = call i32 @TEST_true(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %125
  br label %148

135:                                              ; preds = %125
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @TEST_BN_eq_zero(i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = call i32 @TEST_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @BN_print_var(i32* %141)
  br label %148

143:                                              ; preds = %135
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %143, %139, %134, %117, %100, %83, %66, %49, %39, %25
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @BN_free(i32* %149)
  %151 = load i32*, i32** %1, align 8
  %152 = call i32 @BN_free(i32* %151)
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @BN_free(i32* %153)
  %155 = load i32*, i32** %3, align 8
  %156 = call i32 @BN_free(i32* %155)
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @BN_CTX_free(i32* %157)
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_one(i32*) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_rand(i32*, i32, i32, i32) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @a_is_zero_mod_one(i8*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_recp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_simple(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_mont_consttime(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_exp_mont_word(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @TEST_error(i8*) #1

declare dso_local i32 @BN_print_var(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
