; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dsa_kmgmt.c_params_to_domparams.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dsa_kmgmt.c_params_to_domparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_PKEY_PARAM_FFC_P = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_FFC_Q = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_FFC_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @params_to_domparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @params_to_domparams(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @OSSL_PKEY_PARAM_FFC_P, align 4
  %18 = call i32* @OSSL_PARAM_locate_const(i32* %16, i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @OSSL_PKEY_PARAM_FFC_Q, align 4
  %21 = call i32* @OSSL_PARAM_locate_const(i32* %19, i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @OSSL_PKEY_PARAM_FFC_G, align 4
  %24 = call i32* @OSSL_PARAM_locate_const(i32* %22, i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @OSSL_PARAM_get_BN(i32* %28, i32** %9)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %27, %15
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @OSSL_PARAM_get_BN(i32* %35, i32** %10)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %31
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @OSSL_PARAM_get_BN(i32* %42, i32** %11)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %34, %27
  br label %55

46:                                               ; preds = %41, %38
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @DSA_set0_pqg(i32* %47, i32* %48, i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %55

54:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %62

55:                                               ; preds = %53, %45
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @BN_free(i32* %56)
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @BN_free(i32* %58)
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @BN_free(i32* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %54, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32* @OSSL_PARAM_locate_const(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_BN(i32*, i32**) #1

declare dso_local i32 @DSA_set0_pqg(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
