; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dh_kmgmt.c_params_to_key.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dh_kmgmt.c_params_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_PKEY_PARAM_DH_PRIV_KEY = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_DH_PUB_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @params_to_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @params_to_key(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @params_to_domparams(i32* %14, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %54

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @OSSL_PKEY_PARAM_DH_PRIV_KEY, align 4
  %22 = call i32* @OSSL_PARAM_locate_const(i32* %20, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @OSSL_PKEY_PARAM_DH_PUB_KEY, align 4
  %25 = call i32* @OSSL_PARAM_locate_const(i32* %23, i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %54

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @OSSL_PARAM_get_BN(i32* %33, i32** %8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %29
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @OSSL_PARAM_get_BN(i32* %37, i32** %9)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %32
  br label %49

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @DH_set0_key(i32* %42, i32* %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %49

48:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %54

49:                                               ; preds = %47, %40
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @BN_free(i32* %50)
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @BN_free(i32* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %48, %28, %18, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @params_to_domparams(i32*, i32*) #1

declare dso_local i32* @OSSL_PARAM_locate_const(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_BN(i32*, i32**) #1

declare dso_local i32 @DH_set0_key(i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
