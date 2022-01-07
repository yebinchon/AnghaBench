; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dsa_kmgmt.c_params_to_key.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/keymgmt/extr_dsa_kmgmt.c_params_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_PKEY_PARAM_DSA_PRIV_KEY = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_DSA_PUB_KEY = common dso_local global i32 0, align 4
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
  br label %63

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @params_to_domparams(i32* %14, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %63

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @OSSL_PKEY_PARAM_DSA_PRIV_KEY, align 4
  %22 = call i32* @OSSL_PARAM_locate_const(i32* %20, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @OSSL_PKEY_PARAM_DSA_PUB_KEY, align 4
  %25 = call i32* @OSSL_PARAM_locate_const(i32* %23, i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32*, i32** %7, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %63

32:                                               ; preds = %28, %19
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @OSSL_PARAM_get_BN(i32* %36, i32** %8)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %32
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @OSSL_PARAM_get_BN(i32* %43, i32** %9)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %35
  br label %58

47:                                               ; preds = %42, %39
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @DSA_set0_key(i32* %51, i32* %52, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %58

57:                                               ; preds = %50, %47
  store i32 1, i32* %3, align 4
  br label %63

58:                                               ; preds = %56, %46
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @BN_free(i32* %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @BN_free(i32* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %57, %31, %18, %12
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @params_to_domparams(i32*, i32*) #1

declare dso_local i32* @OSSL_PARAM_locate_const(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_BN(i32*, i32**) #1

declare dso_local i32 @DSA_set0_key(i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
