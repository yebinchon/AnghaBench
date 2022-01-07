; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dh_kmgmt.c_key_to_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dh_kmgmt.c_key_to_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_PKEY_PARAM_DH_PRIV_KEY = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_DH_PUB_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @key_to_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_to_params(i32* %0, i32* %1) #0 {
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
  br label %43

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @domparams_to_params(i32* %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %43

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @DH_get0_key(i32* %19, i32** %8, i32** %7)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @OSSL_PKEY_PARAM_DH_PRIV_KEY, align 4
  %23 = call i32* @OSSL_PARAM_locate(i32* %21, i32 %22)
  store i32* %23, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @OSSL_PARAM_set_BN(i32* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %43

31:                                               ; preds = %25, %18
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @OSSL_PKEY_PARAM_DH_PUB_KEY, align 4
  %34 = call i32* @OSSL_PARAM_locate(i32* %32, i32 %33)
  store i32* %34, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @OSSL_PARAM_set_BN(i32* %37, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %43

42:                                               ; preds = %36, %31
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41, %30, %17, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @domparams_to_params(i32*, i32*) #1

declare dso_local i32 @DH_get0_key(i32*, i32**, i32**) #1

declare dso_local i32* @OSSL_PARAM_locate(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_BN(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
