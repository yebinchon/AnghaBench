; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dh_kmgmt.c_domparams_to_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dh_kmgmt.c_domparams_to_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_PKEY_PARAM_FFC_P = common dso_local global i32 0, align 4
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
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @DH_get0_pqg(i32* %13, i32** %7, i32* null, i32** %8)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @OSSL_PKEY_PARAM_FFC_P, align 4
  %17 = call i32* @OSSL_PARAM_locate(i32* %15, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @OSSL_PARAM_set_BN(i32* %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %37

25:                                               ; preds = %19, %12
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @OSSL_PKEY_PARAM_FFC_G, align 4
  %28 = call i32* @OSSL_PARAM_locate(i32* %26, i32 %27)
  store i32* %28, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @OSSL_PARAM_set_BN(i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %37

36:                                               ; preds = %30, %25
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35, %24, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @DH_get0_pqg(i32*, i32**, i32*, i32**) #1

declare dso_local i32* @OSSL_PARAM_locate(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_BN(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
