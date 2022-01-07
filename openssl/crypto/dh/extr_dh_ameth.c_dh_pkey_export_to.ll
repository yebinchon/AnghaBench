; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_dh_pkey_export_to.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_dh_pkey_export_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@OSSL_PKEY_PARAM_FFC_P = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_FFC_G = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_FFC_Q = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_DH_PUB_KEY = common dso_local global i32 0, align 4
@OSSL_PKEY_PARAM_DH_PRIV_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32*, i32)* @dh_pkey_export_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dh_pkey_export_to(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
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
  %22 = call i32* @DH_get0_p(i32* %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32* @DH_get0_g(i32* %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @DH_get0_q(i32* %25)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @DH_get0_pub_key(i32* %27)
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32* @DH_get0_priv_key(i32* %29)
  store i32* %30, i32** %14, align 8
  store i8* null, i8** %16, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32*, i32** %11, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %3
  store i8* null, i8** %4, align 8
  br label %96

37:                                               ; preds = %33
  %38 = call i32 @ossl_param_bld_init(i32* %9)
  %39 = load i32, i32* @OSSL_PKEY_PARAM_FFC_P, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @ossl_param_bld_push_BN(i32* %9, i32 %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, i32* @OSSL_PKEY_PARAM_FFC_G, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @ossl_param_bld_push_BN(i32* %9, i32 %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %37
  store i8* null, i8** %4, align 8
  br label %96

49:                                               ; preds = %43
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* @OSSL_PKEY_PARAM_FFC_Q, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @ossl_param_bld_push_BN(i32* %9, i32 %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i8* null, i8** %4, align 8
  br label %96

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %49
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @OSSL_PKEY_PARAM_DH_PUB_KEY, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @ossl_param_bld_push_BN(i32* %9, i32 %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i8* null, i8** %4, align 8
  br label %96

68:                                               ; preds = %62
  %69 = load i32*, i32** %14, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* @OSSL_PKEY_PARAM_DH_PRIV_KEY, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @ossl_param_bld_push_BN(i32* %9, i32 %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i8* null, i8** %4, align 8
  br label %96

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %68
  br label %79

79:                                               ; preds = %78, %59
  %80 = call i32* @ossl_param_bld_to_param(i32* %9)
  store i32* %80, i32** %15, align 8
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i8* @evp_keymgmt_importdomparams(i32* %84, i32* %85)
  br label %91

87:                                               ; preds = %79
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = call i8* @evp_keymgmt_importkey(i32* %88, i32* %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i8* [ %86, %83 ], [ %90, %87 ]
  store i8* %92, i8** %16, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = call i32 @ossl_param_bld_free(i32* %93)
  %95 = load i8*, i8** %16, align 8
  store i8* %95, i8** %4, align 8
  br label %96

96:                                               ; preds = %91, %76, %67, %57, %48, %36
  %97 = load i8*, i8** %4, align 8
  ret i8* %97
}

declare dso_local i32* @DH_get0_p(i32*) #1

declare dso_local i32* @DH_get0_g(i32*) #1

declare dso_local i32* @DH_get0_q(i32*) #1

declare dso_local i32* @DH_get0_pub_key(i32*) #1

declare dso_local i32* @DH_get0_priv_key(i32*) #1

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
