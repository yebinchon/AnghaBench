; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_div_recip.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_div_recip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM0 = common dso_local global i32 0, align 4
@NUM1 = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_div_recip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_div_recip() #0 {
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
  store i32 0, i32* %7, align 4
  %9 = call i32* (...) @BN_new()
  store i32* %9, i32** %1, align 8
  %10 = call i64 @TEST_ptr(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %0
  %13 = call i32* (...) @BN_new()
  store i32* %13, i32** %2, align 8
  %14 = call i64 @TEST_ptr(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = call i32* (...) @BN_new()
  store i32* %17, i32** %3, align 8
  %18 = call i64 @TEST_ptr(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = call i32* (...) @BN_new()
  store i32* %21, i32** %4, align 8
  %22 = call i64 @TEST_ptr(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = call i32* (...) @BN_new()
  store i32* %25, i32** %5, align 8
  %26 = call i64 @TEST_ptr(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32* (...) @BN_RECP_CTX_new()
  store i32* %29, i32** %6, align 8
  %30 = call i64 @TEST_ptr(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %24, %20, %16, %12, %0
  br label %136

33:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %132, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @NUM0, align 4
  %37 = load i32, i32* @NUM1, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %135

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @NUM1, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @BN_bntest_rand(i32* %45, i32 400, i32 0, i32 0)
  %47 = call i64 @TEST_true(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load i32*, i32** %2, align 8
  %51 = load i32*, i32** %1, align 8
  %52 = call i32* @BN_copy(i32* %50, i32* %51)
  %53 = call i64 @TEST_ptr(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load i32*, i32** %1, align 8
  %57 = load i32*, i32** %1, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @BN_lshift(i32* %56, i32* %57, i32 %58)
  %60 = call i64 @TEST_true(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @BN_add_word(i32* %63, i32 %64)
  %66 = call i64 @TEST_true(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62, %55, %49, %44
  br label %136

69:                                               ; preds = %62
  br label %82

70:                                               ; preds = %40
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @NUM1, align 4
  %74 = sub nsw i32 %72, %73
  %75 = mul nsw i32 3, %74
  %76 = add nsw i32 50, %75
  %77 = call i32 @BN_bntest_rand(i32* %71, i32 %76, i32 0, i32 0)
  %78 = call i64 @TEST_true(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  br label %136

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %69
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 (...) @rand_neg()
  %85 = call i32 @BN_set_negative(i32* %83, i32 %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 (...) @rand_neg()
  %88 = call i32 @BN_set_negative(i32* %86, i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load i32*, i32** %2, align 8
  %91 = load i32, i32* @ctx, align 4
  %92 = call i32 @BN_RECP_CTX_set(i32* %89, i32* %90, i32 %91)
  %93 = call i64 @TEST_true(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %130

95:                                               ; preds = %82
  %96 = load i32*, i32** %4, align 8
  %97 = load i32*, i32** %3, align 8
  %98 = load i32*, i32** %1, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @ctx, align 4
  %101 = call i32 @BN_div_recp(i32* %96, i32* %97, i32* %98, i32* %99, i32 %100)
  %102 = call i64 @TEST_true(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %95
  %105 = load i32*, i32** %5, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = load i32*, i32** %2, align 8
  %108 = load i32, i32* @ctx, align 4
  %109 = call i32 @BN_mul(i32* %105, i32* %106, i32* %107, i32 %108)
  %110 = call i64 @TEST_true(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %104
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @BN_add(i32* %113, i32* %114, i32* %115)
  %117 = call i64 @TEST_true(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %112
  %120 = load i32*, i32** %4, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = load i32*, i32** %1, align 8
  %123 = call i32 @BN_sub(i32* %120, i32* %121, i32* %122)
  %124 = call i64 @TEST_true(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32*, i32** %4, align 8
  %128 = call i64 @TEST_BN_eq_zero(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126, %119, %112, %104, %95, %82
  br label %136

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %34

135:                                              ; preds = %34
  store i32 1, i32* %7, align 4
  br label %136

136:                                              ; preds = %135, %130, %80, %68, %32
  %137 = load i32*, i32** %1, align 8
  %138 = call i32 @BN_free(i32* %137)
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @BN_free(i32* %139)
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 @BN_free(i32* %141)
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @BN_free(i32* %143)
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @BN_free(i32* %145)
  %147 = load i32*, i32** %6, align 8
  %148 = call i32 @BN_RECP_CTX_free(i32* %147)
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_RECP_CTX_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_bntest_rand(i32*, i32, i32, i32) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @rand_neg(...) #1

declare dso_local i32 @BN_RECP_CTX_set(i32*, i32*, i32) #1

declare dso_local i32 @BN_div_recp(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i64 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_RECP_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
