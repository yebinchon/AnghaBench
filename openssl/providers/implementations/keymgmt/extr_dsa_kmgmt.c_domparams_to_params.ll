; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dsa_kmgmt.c_domparams_to_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dsa_kmgmt.c_domparams_to_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_PKEY_PARAM_FFC_P = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_FFC_Q = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_FFC_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @domparams_to_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domparams_to_params(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @DSA_get0_pqg(i32* %14, i32** %7, i32** %8, i32** %9)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @OSSL_PKEY_PARAM_FFC_P, align 4
  %18 = call i32* @OSSL_PARAM_locate(i32* %16, i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @OSSL_PARAM_set_BN(i32* %21, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %49

26:                                               ; preds = %20, %13
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @OSSL_PKEY_PARAM_FFC_Q, align 4
  %29 = call i32* @OSSL_PARAM_locate(i32* %27, i32 %28)
  store i32* %29, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @OSSL_PARAM_set_BN(i32* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %49

37:                                               ; preds = %31, %26
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @OSSL_PKEY_PARAM_FFC_G, align 4
  %40 = call i32* @OSSL_PARAM_locate(i32* %38, i32 %39)
  store i32* %40, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @OSSL_PARAM_set_BN(i32* %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %49

48:                                               ; preds = %42, %37
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47, %36, %25, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @DSA_get0_pqg(i32*, i32**, i32**, i32**) #1

declare dso_local i32* @OSSL_PARAM_locate(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_BN(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
