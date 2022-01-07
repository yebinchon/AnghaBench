; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_bignum_to_string.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_bignum_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509V3_F_BIGNUM_TO_STRING = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"-0x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @bignum_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bignum_to_string(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @BN_num_bits(i32* %7)
  %9 = icmp slt i32 %8, 128
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @BN_bn2dec(i32* %11)
  store i8* %12, i8** %2, align 8
  br label %61

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @BN_bn2hex(i32* %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i8* null, i8** %2, align 8
  br label %61

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i8* @OPENSSL_malloc(i64 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i32, i32* @X509V3_F_BIGNUM_TO_STRING, align 4
  %30 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %31 = call i32 @X509V3err(i32 %29, i32 %30)
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @OPENSSL_free(i8* %32)
  store i8* null, i8** %2, align 8
  br label %61

34:                                               ; preds = %19
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @OPENSSL_strlcpy(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @OPENSSL_strlcat(i8* %44, i8* %46, i64 %47)
  br label %57

49:                                               ; preds = %34
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @OPENSSL_strlcpy(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @OPENSSL_strlcat(i8* %53, i8* %54, i64 %55)
  br label %57

57:                                               ; preds = %49, %40
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @OPENSSL_free(i8* %58)
  %60 = load i8*, i8** %5, align 8
  store i8* %60, i8** %2, align 8
  br label %61

61:                                               ; preds = %57, %28, %18, %10
  %62 = load i8*, i8** %2, align 8
  ret i8* %62
}

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i8* @BN_bn2dec(i32*) #1

declare dso_local i8* @BN_bn2hex(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
