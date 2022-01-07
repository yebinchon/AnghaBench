; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod_exp.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_F_BN_GF2M_MOD_EXP = common dso_local global i32 0, align 4
@BN_R_INVALID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_GF2m_mod_exp(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @BN_num_bits(i32* %14)
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @bn_check_top(i32* %17)
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @bn_check_top(i32* %19)
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @bn_check_top(i32* %21)
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32* @OPENSSL_malloc(i32 %26)
  store i32* %27, i32** %13, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %54

30:                                               ; preds = %5
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @BN_GF2m_poly2arr(i32* %31, i32* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %30
  %42 = load i32, i32* @BN_F_BN_GF2M_MOD_EXP, align 4
  %43 = load i32, i32* @BN_R_INVALID_LENGTH, align 4
  %44 = call i32 @BNerr(i32 %42, i32 %43)
  br label %54

45:                                               ; preds = %37
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @BN_GF2m_mod_exp_arr(i32* %46, i32* %47, i32* %48, i32* %49, i32* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @bn_check_top(i32* %52)
  br label %54

54:                                               ; preds = %45, %41, %29
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @OPENSSL_free(i32* %55)
  %57 = load i32, i32* %11, align 4
  ret i32 %57
}

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BN_GF2m_poly2arr(i32*, i32*, i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_GF2m_mod_exp_arr(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
