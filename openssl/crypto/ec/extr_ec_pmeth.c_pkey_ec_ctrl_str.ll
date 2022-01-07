; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_pmeth.c_pkey_ec_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_pmeth.c_pkey_ec_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"ec_paramgen_curve\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@EC_F_PKEY_EC_CTRL_STR = common dso_local global i32 0, align 4
@EC_R_INVALID_CURVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ec_param_enc\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@OPENSSL_EC_NAMED_CURVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ecdh_kdf_md\00", align 1
@EC_R_INVALID_DIGEST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"ecdh_cofactor_mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @pkey_ec_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_ec_ctrl_str(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @EC_curve_nist2nid(i8* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @NID_undef, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @OBJ_sn2nid(i8* %22)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @NID_undef, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @OBJ_ln2nid(i8* %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @NID_undef, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @EC_F_PKEY_EC_CTRL_STR, align 4
  %37 = load i32, i32* @EC_R_INVALID_CURVE, align 4
  %38 = call i32 @ECerr(i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %94

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %94

43:                                               ; preds = %3
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %60

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @OPENSSL_EC_NAMED_CURVE, align 4
  store i32 %57, i32* %9, align 4
  br label %59

58:                                               ; preds = %52
  store i32 -2, i32* %4, align 4
  br label %94

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @EVP_PKEY_CTX_set_ec_param_enc(i32* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %94

64:                                               ; preds = %43
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = call i32* @EVP_get_digestbyname(i8* %69)
  store i32* %70, i32** %10, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* @EC_F_PKEY_EC_CTRL_STR, align 4
  %74 = load i32, i32* @EC_R_INVALID_DIGEST, align 4
  %75 = call i32 @ECerr(i32 %73, i32 %74)
  store i32 0, i32* %4, align 4
  br label %94

76:                                               ; preds = %68
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @EVP_PKEY_CTX_set_ecdh_kdf_md(i32* %77, i32* %78)
  store i32 %79, i32* %4, align 4
  br label %94

80:                                               ; preds = %64
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @atoi(i8* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @EVP_PKEY_CTX_set_ecdh_cofactor_mode(i32* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %94

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  store i32 -2, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %84, %76, %72, %60, %58, %39, %35
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @EC_curve_nist2nid(i8*) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_ec_param_enc(i32*, i32) #1

declare dso_local i32* @EVP_get_digestbyname(i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_set_ecdh_kdf_md(i32*, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_set_ecdh_cofactor_mode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
