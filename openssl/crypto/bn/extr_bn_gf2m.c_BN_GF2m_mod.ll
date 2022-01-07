; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_gf2m.c_BN_GF2m_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_F_BN_GF2M_MOD = common dso_local global i32 0, align 4
@BN_R_INVALID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_GF2m_mod(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @bn_check_top(i32* %10)
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @bn_check_top(i32* %12)
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %17 = call i64 @OSSL_NELEM(i32* %16)
  %18 = call i32 @BN_GF2m_poly2arr(i32* %14, i32* %15, i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %24 = call i64 @OSSL_NELEM(i32* %23)
  %25 = trunc i64 %24 to i32
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %3
  %28 = load i32, i32* @BN_F_BN_GF2M_MOD, align 4
  %29 = load i32, i32* @BN_R_INVALID_LENGTH, align 4
  %30 = call i32 @BNerr(i32 %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %39

31:                                               ; preds = %21
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %35 = call i32 @BN_GF2m_mod_arr(i32* %32, i32* %33, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @bn_check_top(i32* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %27
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32 @BN_GF2m_poly2arr(i32*, i32*, i64) #1

declare dso_local i64 @OSSL_NELEM(i32*) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_GF2m_mod_arr(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
