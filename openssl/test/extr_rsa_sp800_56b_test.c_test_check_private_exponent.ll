; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_check_private_exponent.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_rsa_sp800_56b_test.c_test_check_private_exponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_check_private_exponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_check_private_exponent() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = call i32* (...) @RSA_new()
  store i32* %9, i32** %2, align 8
  %10 = call i64 @TEST_ptr(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %0
  %13 = call i32* (...) @BN_CTX_new()
  store i32* %13, i32** %3, align 8
  %14 = call i64 @TEST_ptr(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = call i32* (...) @BN_new()
  store i32* %17, i32** %4, align 8
  %18 = call i64 @TEST_ptr(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = call i32* (...) @BN_new()
  store i32* %21, i32** %5, align 8
  %22 = call i64 @TEST_ptr(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @BN_set_word(i32* %25, i32 15)
  %27 = call i64 @TEST_true(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @BN_set_word(i32* %30, i32 17)
  %32 = call i64 @TEST_true(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32*, i32** %2, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @RSA_set0_factors(i32* %35, i32* %36, i32* %37)
  %39 = call i64 @TEST_true(i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %34, %29, %24, %20, %16, %12, %0
  %42 = phi i1 [ false, %29 ], [ false, %24 ], [ false, %20 ], [ false, %16 ], [ false, %12 ], [ false, %0 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @BN_free(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @BN_free(i32* %49)
  br label %146

51:                                               ; preds = %41
  %52 = call i32* (...) @BN_new()
  store i32* %52, i32** %6, align 8
  %53 = call i64 @TEST_ptr(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %51
  %56 = call i32* (...) @BN_new()
  store i32* %56, i32** %7, align 8
  %57 = call i64 @TEST_ptr(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = call i32* (...) @BN_new()
  store i32* %60, i32** %8, align 8
  %61 = call i64 @TEST_ptr(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %59
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @BN_set_word(i32* %64, i32 5)
  %66 = call i64 @TEST_true(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @BN_set_word(i32* %69, i32 157)
  %71 = call i64 @TEST_true(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @BN_set_word(i32* %74, i32 255)
  %76 = call i64 @TEST_true(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32*, i32** %2, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @RSA_set0_key(i32* %79, i32* %80, i32* %81, i32* %82)
  %84 = call i64 @TEST_true(i32 %83)
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %78, %73, %68, %63, %59, %55, %51
  %87 = phi i1 [ false, %73 ], [ false, %68 ], [ false, %63 ], [ false, %59 ], [ false, %55 ], [ false, %51 ], [ %85, %78 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* %1, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @BN_free(i32* %92)
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @BN_free(i32* %94)
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @BN_free(i32* %96)
  br label %146

98:                                               ; preds = %86
  %99 = load i32*, i32** %2, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @rsa_check_private_exponent(i32* %99, i32 8, i32* %100)
  %102 = call i64 @TEST_false(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %143

104:                                              ; preds = %98
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @BN_set_word(i32* %105, i32 45)
  %107 = call i64 @TEST_true(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %104
  %110 = load i32*, i32** %2, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @rsa_check_private_exponent(i32* %110, i32 8, i32* %111)
  %113 = call i64 @TEST_true(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %109
  %116 = load i32*, i32** %2, align 8
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @rsa_check_private_exponent(i32* %116, i32 16, i32* %117)
  %119 = call i64 @TEST_false(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %115
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @BN_set_word(i32* %122, i32 16)
  %124 = call i64 @TEST_true(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %121
  %127 = load i32*, i32** %2, align 8
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @rsa_check_private_exponent(i32* %127, i32 8, i32* %128)
  %130 = call i64 @TEST_false(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @BN_set_word(i32* %133, i32 46)
  %135 = call i64 @TEST_true(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32*, i32** %2, align 8
  %139 = load i32*, i32** %3, align 8
  %140 = call i32 @rsa_check_private_exponent(i32* %138, i32 8, i32* %139)
  %141 = call i64 @TEST_false(i32 %140)
  %142 = icmp ne i64 %141, 0
  br label %143

143:                                              ; preds = %137, %132, %126, %121, %115, %109, %104, %98
  %144 = phi i1 [ false, %132 ], [ false, %126 ], [ false, %121 ], [ false, %115 ], [ false, %109 ], [ false, %104 ], [ false, %98 ], [ %142, %137 ]
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %1, align 4
  br label %146

146:                                              ; preds = %143, %91, %46
  %147 = load i32*, i32** %2, align 8
  %148 = call i32 @RSA_free(i32* %147)
  %149 = load i32*, i32** %3, align 8
  %150 = call i32 @BN_CTX_free(i32* %149)
  %151 = load i32, i32* %1, align 4
  ret i32 %151
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @RSA_set0_factors(i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @RSA_set0_key(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @TEST_false(i32) #1

declare dso_local i32 @rsa_check_private_exponent(i32*, i32, i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
