; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_eddsa.c_hash_init_with_dom.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_eddsa.c_hash_init_with_dom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"SigEd448\00", align 1
@UINT8_MAX = common dso_local global i64 0, align 8
@C448_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"SHAKE256\00", align 1
@C448_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64, i64*, i64)* @hash_init_with_dom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_init_with_dom(i32* %0, i32* %1, i64 %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [2 x i64], align 16
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i32* null, i32** %16, align 8
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* @UINT8_MAX, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @C448_FAILURE, align 4
  store i32 %21, i32* %7, align 4
  br label %74

22:                                               ; preds = %6
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = sub nsw i32 2, %26
  %28 = load i64, i64* %11, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = sub nsw i32 %27, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  store i64 %33, i64* %34, align 16
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 1
  store i64 %35, i64* %36, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32* @EVP_MD_fetch(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %38, i32** %16, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32, i32* @C448_FAILURE, align 4
  store i32 %42, i32* %7, align 4
  br label %74

43:                                               ; preds = %22
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %16, align 8
  %46 = call i32 @EVP_DigestInit_ex(i32* %44, i32* %45, i32* null)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i32*, i32** %9, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %49, i8* %50, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %58 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %56, i64* %57, i64 16)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32*, i32** %9, align 8
  %62 = load i64*, i64** %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %61, i64* %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %60, %55, %48, %43
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @EVP_MD_free(i32* %67)
  %69 = load i32, i32* @C448_FAILURE, align 4
  store i32 %69, i32* %7, align 4
  br label %74

70:                                               ; preds = %60
  %71 = load i32*, i32** %16, align 8
  %72 = call i32 @EVP_MD_free(i32* %71)
  %73 = load i32, i32* @C448_SUCCESS, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %66, %41, %20
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32* @EVP_MD_fetch(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @EVP_MD_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
