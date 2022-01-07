; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod_exp_arr.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod_exp_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_GF2m_mod_exp_arr(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @bn_check_top(i32* %16)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @bn_check_top(i32* %18)
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @BN_is_zero(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @BN_one(i32* %24)
  store i32 %25, i32* %6, align 4
  br label %99

26:                                               ; preds = %5
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @BN_abs_is_word(i32* %27, i32 1)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32* @BN_copy(i32* %31, i32* %32)
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %99

36:                                               ; preds = %26
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @BN_CTX_start(i32* %37)
  %39 = load i32*, i32** %11, align 8
  %40 = call i32* @BN_CTX_get(i32* %39)
  store i32* %40, i32** %15, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %95

43:                                               ; preds = %36
  %44 = load i32*, i32** %15, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @BN_GF2m_mod_arr(i32* %44, i32* %45, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %95

50:                                               ; preds = %43
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @BN_num_bits(i32* %51)
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %83, %50
  %57 = load i32, i32* %13, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = load i32*, i32** %15, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @BN_GF2m_mod_sqr_arr(i32* %60, i32* %61, i32* %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %95

67:                                               ; preds = %59
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @BN_is_bit_set(i32* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32*, i32** %15, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @BN_GF2m_mod_mul_arr(i32* %73, i32* %74, i32* %75, i32* %76, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %95

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %67
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %13, align 4
  br label %56

86:                                               ; preds = %56
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = call i32* @BN_copy(i32* %87, i32* %88)
  %90 = icmp ne i32* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  br label %95

92:                                               ; preds = %86
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @bn_check_top(i32* %93)
  store i32 1, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %91, %80, %66, %49, %42
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @BN_CTX_end(i32* %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %30, %23
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_one(i32*) #1

declare dso_local i64 @BN_abs_is_word(i32*, i32) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_GF2m_mod_arr(i32*, i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_GF2m_mod_sqr_arr(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_bit_set(i32*, i32) #1

declare dso_local i32 @BN_GF2m_mod_mul_arr(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
