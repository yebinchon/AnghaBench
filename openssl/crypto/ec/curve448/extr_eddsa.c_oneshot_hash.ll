; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_eddsa.c_oneshot_hash.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_eddsa.c_oneshot_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C448_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"SHAKE256\00", align 1
@C448_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32*, i64)* @oneshot_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oneshot_hash(i32* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %15, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %16 = load i32, i32* @C448_FAILURE, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @C448_FAILURE, align 4
  store i32 %20, i32* %6, align 4
  br label %53

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @EVP_MD_fetch(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %47

27:                                               ; preds = %21
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @EVP_DigestInit_ex(i32* %28, i32* %29, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @EVP_DigestUpdate(i32* %33, i32* %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @EVP_DigestFinalXOF(i32* %39, i32* %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38, %32, %27
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @C448_SUCCESS, align 4
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %45, %44, %26
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @EVP_MD_CTX_free(i32* %48)
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @EVP_MD_free(i32* %50)
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %47, %19
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32* @EVP_MD_fetch(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i32*, i64) #1

declare dso_local i32 @EVP_DigestFinalXOF(i32*, i32*, i64) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @EVP_MD_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
