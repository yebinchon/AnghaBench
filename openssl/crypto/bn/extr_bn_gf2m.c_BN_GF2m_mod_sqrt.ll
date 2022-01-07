; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod_sqrt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_F_BN_GF2M_MOD_SQRT = common dso_local global i32 0, align 4
@BN_R_INVALID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_GF2m_mod_sqrt(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @BN_num_bits(i32* %12)
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @bn_check_top(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @bn_check_top(i32* %17)
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32* @OPENSSL_malloc(i32 %22)
  store i32* %23, i32** %11, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %49

26:                                               ; preds = %4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @BN_GF2m_poly2arr(i32* %27, i32* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %26
  %38 = load i32, i32* @BN_F_BN_GF2M_MOD_SQRT, align 4
  %39 = load i32, i32* @BN_R_INVALID_LENGTH, align 4
  %40 = call i32 @BNerr(i32 %38, i32 %39)
  br label %49

41:                                               ; preds = %33
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @BN_GF2m_mod_sqrt_arr(i32* %42, i32* %43, i32* %44, i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @bn_check_top(i32* %47)
  br label %49

49:                                               ; preds = %41, %37, %25
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @OPENSSL_free(i32* %50)
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BN_GF2m_poly2arr(i32*, i32*, i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_GF2m_mod_sqrt_arr(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
