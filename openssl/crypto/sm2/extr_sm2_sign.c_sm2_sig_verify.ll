; ModuleID = '/home/carl/AnghaBench/openssl/crypto/sm2/extr_sm2_sign.c_sm2_sig_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/sm2/extr_sm2_sign.c_sm2_sig_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM2_F_SM2_SIG_VERIFY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SM2_R_BAD_SIGNATURE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @sm2_sig_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm2_sig_verify(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @EC_KEY_get0_group(i32* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @EC_GROUP_get0_order(i32* %18)
  store i32* %19, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %20 = call i32* (...) @BN_CTX_new()
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @EC_POINT_new(i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32*, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %3
  %29 = load i32, i32* @SM2_F_SM2_SIG_VERIFY, align 4
  %30 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %31 = call i32 @SM2err(i32 %29, i32 %30)
  br label %131

32:                                               ; preds = %25
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @BN_CTX_start(i32* %33)
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @BN_CTX_get(i32* %35)
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @BN_CTX_get(i32* %37)
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @SM2_F_SM2_SIG_VERIFY, align 4
  %43 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %44 = call i32 @SM2err(i32 %42, i32 %43)
  br label %131

45:                                               ; preds = %32
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @ECDSA_SIG_get0(i32* %46, i32** %14, i32** %15)
  %48 = load i32*, i32** %14, align 8
  %49 = call i32* (...) @BN_value_one()
  %50 = call i64 @BN_cmp(i32* %48, i32* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %45
  %53 = load i32*, i32** %15, align 8
  %54 = call i32* (...) @BN_value_one()
  %55 = call i64 @BN_cmp(i32* %53, i32* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = call i64 @BN_cmp(i32* %58, i32* %59)
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = call i64 @BN_cmp(i32* %63, i32* %64)
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62, %57, %52, %45
  %68 = load i32, i32* @SM2_F_SM2_SIG_VERIFY, align 4
  %69 = load i32, i32* @SM2_R_BAD_SIGNATURE, align 4
  %70 = call i32 @SM2err(i32 %68, i32 %69)
  br label %131

71:                                               ; preds = %62
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @BN_mod_add(i32* %72, i32* %73, i32* %74, i32* %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* @SM2_F_SM2_SIG_VERIFY, align 4
  %81 = load i32, i32* @ERR_R_BN_LIB, align 4
  %82 = call i32 @SM2err(i32 %80, i32 %81)
  br label %131

83:                                               ; preds = %71
  %84 = load i32*, i32** %12, align 8
  %85 = call i64 @BN_is_zero(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @SM2_F_SM2_SIG_VERIFY, align 4
  %89 = load i32, i32* @SM2_R_BAD_SIGNATURE, align 4
  %90 = call i32 @SM2err(i32 %88, i32 %89)
  br label %131

91:                                               ; preds = %83
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @EC_KEY_get0_public_key(i32* %95)
  %97 = load i32*, i32** %12, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @EC_POINT_mul(i32* %92, i32* %93, i32* %94, i32 %96, i32* %97, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %91
  %102 = load i32*, i32** %8, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @EC_POINT_get_affine_coordinates(i32* %102, i32* %103, i32* %104, i32* null, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %101, %91
  %109 = load i32, i32* @SM2_F_SM2_SIG_VERIFY, align 4
  %110 = load i32, i32* @ERR_R_EC_LIB, align 4
  %111 = call i32 @SM2err(i32 %109, i32 %110)
  br label %131

112:                                              ; preds = %101
  %113 = load i32*, i32** %12, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @BN_mod_add(i32* %113, i32* %114, i32* %115, i32* %116, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* @SM2_F_SM2_SIG_VERIFY, align 4
  %122 = load i32, i32* @ERR_R_BN_LIB, align 4
  %123 = call i32 @SM2err(i32 %121, i32 %122)
  br label %131

124:                                              ; preds = %112
  %125 = load i32*, i32** %14, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = call i64 @BN_cmp(i32* %125, i32* %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 1, i32* %7, align 4
  br label %130

130:                                              ; preds = %129, %124
  br label %131

131:                                              ; preds = %130, %120, %108, %87, %79, %67, %41, %28
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 @EC_POINT_free(i32* %132)
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @BN_CTX_free(i32* %134)
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @SM2err(i32, i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @ECDSA_SIG_get0(i32*, i32**, i32**) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32* @BN_value_one(...) #1

declare dso_local i32 @BN_mod_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @EC_KEY_get0_public_key(i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
