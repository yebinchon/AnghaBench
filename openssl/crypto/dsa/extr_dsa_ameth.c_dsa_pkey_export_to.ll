; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_pkey_export_to.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_pkey_export_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@OSSL_PKEY_PARAM_FFC_P = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_FFC_Q = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_FFC_G = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_DSA_PUB_KEY = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_DSA_PRIV_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32*, i32)* @dsa_pkey_export_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dsa_pkey_export_to(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @DSA_get0_p(i32* %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32* @DSA_get0_g(i32* %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @DSA_get0_q(i32* %25)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @DSA_get0_pub_key(i32* %27)
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32* @DSA_get0_priv_key(i32* %29)
  store i32* %30, i32** %14, align 8
  store i8* null, i8** %16, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %3
  %34 = load i32*, i32** %12, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %3
  store i8* null, i8** %4, align 8
  br label %94

40:                                               ; preds = %36
  %41 = call i32 @ossl_param_bld_init(i32* %9)
  %42 = load i32, i32* @OSSL_PKEY_PARAM_FFC_P, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @ossl_param_bld_push_BN(i32* %9, i32 %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i32, i32* @OSSL_PKEY_PARAM_FFC_Q, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @ossl_param_bld_push_BN(i32* %9, i32 %47, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @OSSL_PKEY_PARAM_FFC_G, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @ossl_param_bld_push_BN(i32* %9, i32 %52, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51, %46, %40
  store i8* null, i8** %4, align 8
  br label %94

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @OSSL_PKEY_PARAM_DSA_PUB_KEY, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @ossl_param_bld_push_BN(i32* %9, i32 %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i8* null, i8** %4, align 8
  br label %94

66:                                               ; preds = %60
  %67 = load i32*, i32** %14, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* @OSSL_PKEY_PARAM_DSA_PRIV_KEY, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @ossl_param_bld_push_BN(i32* %9, i32 %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i8* null, i8** %4, align 8
  br label %94

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %66
  br label %77

77:                                               ; preds = %76, %57
  %78 = call i32* @ossl_param_bld_to_param(i32* %9)
  store i32* %78, i32** %15, align 8
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = call i8* @evp_keymgmt_importdomparams(i32* %82, i32* %83)
  br label %89

85:                                               ; preds = %77
  %86 = load i32*, i32** %6, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = call i8* @evp_keymgmt_importkey(i32* %86, i32* %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i8* [ %84, %81 ], [ %88, %85 ]
  store i8* %90, i8** %16, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = call i32 @ossl_param_bld_free(i32* %91)
  %93 = load i8*, i8** %16, align 8
  store i8* %93, i8** %4, align 8
  br label %94

94:                                               ; preds = %89, %74, %65, %56, %39
  %95 = load i8*, i8** %4, align 8
  ret i8* %95
}

declare dso_local i32* @DSA_get0_p(i32*) #1

declare dso_local i32* @DSA_get0_g(i32*) #1

declare dso_local i32* @DSA_get0_q(i32*) #1

declare dso_local i32* @DSA_get0_pub_key(i32*) #1

declare dso_local i32* @DSA_get0_priv_key(i32*) #1

declare dso_local i32 @ossl_param_bld_init(i32*) #1

declare dso_local i32 @ossl_param_bld_push_BN(i32*, i32, i32*) #1

declare dso_local i32* @ossl_param_bld_to_param(i32*) #1

declare dso_local i8* @evp_keymgmt_importdomparams(i32*, i32*) #1

declare dso_local i8* @evp_keymgmt_importkey(i32*, i32*) #1

declare dso_local i32 @ossl_param_bld_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
