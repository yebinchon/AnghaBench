; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_pmeth.c_pkey_dsa_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_pmeth.c_pkey_dsa_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"dsa_paramgen_bits\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"dsa_paramgen_q_bits\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"dsa_paramgen_md\00", align 1
@DSA_F_PKEY_DSA_CTRL_STR = common dso_local global i32 0, align 4
@DSA_R_INVALID_DIGEST_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @pkey_dsa_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_dsa_ctrl_str(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(i32* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @atoi(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @EVP_PKEY_CTX_set_dsa_paramgen_q_bits(i32* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %48

30:                                               ; preds = %20
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = call i32* @EVP_get_digestbyname(i8* %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @DSA_F_PKEY_DSA_CTRL_STR, align 4
  %41 = load i32, i32* @DSA_R_INVALID_DIGEST_TYPE, align 4
  %42 = call i32 @DSAerr(i32 %40, i32 %41)
  store i32 0, i32* %4, align 4
  br label %48

43:                                               ; preds = %34
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @EVP_PKEY_CTX_set_dsa_paramgen_md(i32* %44, i32* %45)
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %30
  store i32 -2, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %43, %39, %24, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_dsa_paramgen_q_bits(i32*, i32) #1

declare dso_local i32* @EVP_get_digestbyname(i8*) #1

declare dso_local i32 @DSAerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_dsa_paramgen_md(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
