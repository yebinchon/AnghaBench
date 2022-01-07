; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod_inv.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_RAND_TOP_ANY = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_GF2m_mod_inv(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @BN_CTX_start(i32* %11)
  %13 = load i32*, i32** %8, align 8
  %14 = call i32* @BN_CTX_get(i32* %13)
  store i32* %14, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %61

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @BN_num_bits(i32* %20)
  %22 = sub nsw i64 %21, 1
  %23 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %24 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @BN_priv_rand_ex(i32* %19, i64 %22, i32 %23, i32 %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %61

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @BN_is_zero(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %18, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @BN_GF2m_mod_mul(i32* %35, i32* %36, i32* %37, i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %61

43:                                               ; preds = %34
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @BN_GF2m_mod_inv_vartime(i32* %44, i32* %45, i32* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %61

51:                                               ; preds = %43
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @BN_GF2m_mod_mul(i32* %52, i32* %53, i32* %54, i32* %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %61

60:                                               ; preds = %51
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %59, %50, %42, %28, %16
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @BN_CTX_end(i32* %62)
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_priv_rand_ex(i32*, i64, i32, i32, i32*) #1

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_GF2m_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_GF2m_mod_inv_vartime(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
