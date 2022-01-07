; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_negzero.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_negzero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_negzero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_negzero() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
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
  br label %148

25:                                               ; preds = %20
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @BN_set_word(i32* %26, i32 1)
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %148

31:                                               ; preds = %25
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @BN_set_negative(i32* %32, i32 1)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @BN_zero(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %1, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @ctx, align 4
  %40 = call i32 @BN_mul(i32* %36, i32* %37, i32* %38, i32 %39)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %148

44:                                               ; preds = %31
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @TEST_BN_eq_zero(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @TEST_BN_ge_zero(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48, %44
  br label %148

53:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %135, %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %138

57:                                               ; preds = %54
  %58 = call i32* (...) @BN_new()
  store i32* %58, i32** %5, align 8
  %59 = call i32 @TEST_ptr(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = call i32* (...) @BN_new()
  store i32* %62, i32** %6, align 8
  %63 = call i32 @TEST_ptr(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61, %57
  br label %148

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %72 = call i32 @BN_set_flags(i32* %70, i32 %71)
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %75 = call i32 @BN_set_flags(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @BN_set_word(i32* %77, i32 1)
  %79 = call i32 @TEST_true(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @BN_set_word(i32* %82, i32 2)
  %84 = call i32 @TEST_true(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81, %76
  br label %148

87:                                               ; preds = %81
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @BN_set_negative(i32* %88, i32 1)
  %90 = load i32*, i32** %1, align 8
  %91 = load i32*, i32** %2, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @ctx, align 4
  %95 = call i32 @BN_div(i32* %90, i32* %91, i32* %92, i32* %93, i32 %94)
  %96 = call i32 @TEST_true(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %87
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @TEST_BN_eq_zero(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @TEST_BN_ge_zero(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102, %98, %87
  br label %148

107:                                              ; preds = %102
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @BN_set_word(i32* %108, i32 1)
  %110 = call i32 @TEST_true(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %107
  %113 = load i32*, i32** %1, align 8
  %114 = load i32*, i32** %2, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* @ctx, align 4
  %118 = call i32 @BN_div(i32* %113, i32* %114, i32* %115, i32* %116, i32 %117)
  %119 = call i32 @TEST_true(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %112
  %122 = load i32*, i32** %2, align 8
  %123 = call i32 @TEST_BN_eq_zero(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32*, i32** %2, align 8
  %127 = call i32 @TEST_BN_ge_zero(i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125, %121, %112, %107
  br label %148

130:                                              ; preds = %125
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @BN_free(i32* %131)
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @BN_free(i32* %133)
  store i32* null, i32** %6, align 8
  store i32* null, i32** %5, align 8
  br label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %54

138:                                              ; preds = %54
  %139 = load i32*, i32** %1, align 8
  %140 = call i32 @BN_zero(i32* %139)
  %141 = load i32*, i32** %1, align 8
  %142 = call i32 @BN_set_negative(i32* %141, i32 1)
  %143 = load i32*, i32** %1, align 8
  %144 = call i64 @BN_is_negative(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %148

147:                                              ; preds = %138
  store i32 1, i32* %8, align 4
  br label %148

148:                                              ; preds = %147, %146, %129, %106, %86, %65, %52, %43, %30, %24
  %149 = load i32*, i32** %1, align 8
  %150 = call i32 @BN_free(i32* %149)
  %151 = load i32*, i32** %2, align 8
  %152 = call i32 @BN_free(i32* %151)
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @BN_free(i32* %153)
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @BN_free(i32* %155)
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @BN_free(i32* %157)
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @BN_free(i32* %159)
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32) #1

declare dso_local i32 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @TEST_BN_ge_zero(i32*) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i64 @BN_is_negative(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
