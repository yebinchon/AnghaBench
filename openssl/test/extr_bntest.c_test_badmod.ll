; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_badmod.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_badmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_badmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_badmod() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32* (...) @BN_new()
  store i32* %6, i32** %1, align 8
  %7 = call i32 @TEST_ptr(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %0
  %10 = call i32* (...) @BN_new()
  store i32* %10, i32** %2, align 8
  %11 = call i32 @TEST_ptr(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = call i32* (...) @BN_new()
  store i32* %14, i32** %3, align 8
  %15 = call i32 @TEST_ptr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %18, i32** %4, align 8
  %19 = call i32 @TEST_ptr(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %13, %9, %0
  br label %126

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @BN_zero(i32* %23)
  %25 = load i32*, i32** %1, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 (...) @BN_value_one()
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @ctx, align 4
  %30 = call i32 @BN_div(i32* %25, i32* %26, i32 %27, i32* %28, i32 %29)
  %31 = call i32 @TEST_false(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %126

34:                                               ; preds = %22
  %35 = call i32 (...) @ERR_clear_error()
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 (...) @BN_value_one()
  %38 = call i32 (...) @BN_value_one()
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @ctx, align 4
  %41 = call i32 @BN_mod_mul(i32* %36, i32 %37, i32 %38, i32* %39, i32 %40)
  %42 = call i32 @TEST_false(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %126

45:                                               ; preds = %34
  %46 = call i32 (...) @ERR_clear_error()
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 (...) @BN_value_one()
  %49 = call i32 (...) @BN_value_one()
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @ctx, align 4
  %52 = call i32 @BN_mod_exp(i32* %47, i32 %48, i32 %49, i32* %50, i32 %51)
  %53 = call i32 @TEST_false(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %126

56:                                               ; preds = %45
  %57 = call i32 (...) @ERR_clear_error()
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 (...) @BN_value_one()
  %60 = call i32 (...) @BN_value_one()
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @ctx, align 4
  %63 = call i32 @BN_mod_exp_mont(i32* %58, i32 %59, i32 %60, i32* %61, i32 %62, i32* null)
  %64 = call i32 @TEST_false(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %126

67:                                               ; preds = %56
  %68 = call i32 (...) @ERR_clear_error()
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 (...) @BN_value_one()
  %71 = call i32 (...) @BN_value_one()
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* @ctx, align 4
  %74 = call i32 @BN_mod_exp_mont_consttime(i32* %69, i32 %70, i32 %71, i32* %72, i32 %73, i32* null)
  %75 = call i32 @TEST_false(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  br label %126

78:                                               ; preds = %67
  %79 = call i32 (...) @ERR_clear_error()
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* @ctx, align 4
  %83 = call i32 @BN_MONT_CTX_set(i32* %80, i32* %81, i32 %82)
  %84 = call i32 @TEST_false(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  br label %126

87:                                               ; preds = %78
  %88 = call i32 (...) @ERR_clear_error()
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @BN_set_word(i32* %89, i32 16)
  %91 = call i32 @TEST_true(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %126

94:                                               ; preds = %87
  %95 = load i32*, i32** %4, align 8
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @ctx, align 4
  %98 = call i32 @BN_MONT_CTX_set(i32* %95, i32* %96, i32 %97)
  %99 = call i32 @TEST_false(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  br label %126

102:                                              ; preds = %94
  %103 = call i32 (...) @ERR_clear_error()
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 (...) @BN_value_one()
  %106 = call i32 (...) @BN_value_one()
  %107 = load i32*, i32** %2, align 8
  %108 = load i32, i32* @ctx, align 4
  %109 = call i32 @BN_mod_exp_mont(i32* %104, i32 %105, i32 %106, i32* %107, i32 %108, i32* null)
  %110 = call i32 @TEST_false(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %102
  br label %126

113:                                              ; preds = %102
  %114 = call i32 (...) @ERR_clear_error()
  %115 = load i32*, i32** %1, align 8
  %116 = call i32 (...) @BN_value_one()
  %117 = call i32 (...) @BN_value_one()
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* @ctx, align 4
  %120 = call i32 @BN_mod_exp_mont_consttime(i32* %115, i32 %116, i32 %117, i32* %118, i32 %119, i32* null)
  %121 = call i32 @TEST_false(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %113
  br label %126

124:                                              ; preds = %113
  %125 = call i32 (...) @ERR_clear_error()
  store i32 1, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %123, %112, %101, %93, %86, %77, %66, %55, %44, %33, %21
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @BN_free(i32* %127)
  %129 = load i32*, i32** %2, align 8
  %130 = call i32 @BN_free(i32* %129)
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @BN_free(i32* %131)
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @BN_MONT_CTX_free(i32* %133)
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_MONT_CTX_new(...) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @BN_div(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @BN_mod_mul(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @BN_mod_exp(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @BN_mod_exp_mont(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @BN_mod_exp_mont_consttime(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @BN_MONT_CTX_set(i32*, i32*, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_MONT_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
