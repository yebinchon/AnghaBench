; ModuleID = '/home/carl/AnghaBench/openssl/crypto/sm2/extr_sm2_pmeth.c_pkey_sm2_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/sm2/extr_sm2_pmeth.c_pkey_sm2_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"ec_paramgen_curve\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@SM2_F_PKEY_SM2_CTRL_STR = common dso_local global i32 0, align 4
@SM2_R_INVALID_CURVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ec_param_enc\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@OPENSSL_EC_NAMED_CURVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"sm2_id\00", align 1
@EVP_PKEY_CTRL_SET1_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"sm2_hex_id\00", align 1
@ERR_R_PASSED_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @pkey_sm2_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_sm2_ctrl_str(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %3
  %17 = load i32, i32* @NID_undef, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @EC_curve_nist2nid(i8* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @NID_undef, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @OBJ_sn2nid(i8* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @NID_undef, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @OBJ_ln2nid(i8* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @NID_undef, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @SM2_F_PKEY_SM2_CTRL_STR, align 4
  %34 = load i32, i32* @SM2_R_INVALID_CURVE, align 4
  %35 = call i32 @SM2err(i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %101

36:                                               ; preds = %27, %22, %16
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %101

40:                                               ; preds = %3
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %57

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @OPENSSL_EC_NAMED_CURVE, align 4
  store i32 %54, i32* %12, align 4
  br label %56

55:                                               ; preds = %49
  store i32 -2, i32* %4, align 4
  br label %101

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56, %48
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @EVP_PKEY_CTX_set_ec_param_enc(i32* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %101

61:                                               ; preds = %40
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* @EVP_PKEY_CTRL_SET1_ID, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = trunc i64 %69 to i32
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @pkey_sm2_ctrl(i32* %66, i32 %67, i32 %70, i8* %71)
  store i32 %72, i32* %4, align 4
  br label %101

73:                                               ; preds = %61
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = load i8*, i8** %7, align 8
  %79 = call i32* @OPENSSL_hexstr2buf(i8* %78, i64* %9)
  store i32* %79, i32** %8, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @SM2_F_PKEY_SM2_CTRL_STR, align 4
  %84 = load i32, i32* @ERR_R_PASSED_INVALID_ARGUMENT, align 4
  %85 = call i32 @SM2err(i32 %83, i32 %84)
  store i32 0, i32* %4, align 4
  br label %101

86:                                               ; preds = %77
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @EVP_PKEY_CTRL_SET1_ID, align 4
  %89 = load i64, i64* %9, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32*, i32** %8, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = call i32 @pkey_sm2_ctrl(i32* %87, i32 %88, i32 %90, i8* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @OPENSSL_free(i32* %94)
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %101

97:                                               ; preds = %73
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  store i32 -2, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %86, %82, %65, %57, %55, %36, %32
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @EC_curve_nist2nid(i8*) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

declare dso_local i32 @SM2err(i32, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_ec_param_enc(i32*, i32) #1

declare dso_local i32 @pkey_sm2_ctrl(i32*, i32, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @OPENSSL_hexstr2buf(i8*, i64*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
