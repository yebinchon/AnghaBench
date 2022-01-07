; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_crng_test.c_rand_crngt_get_entropy_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_crng_test.c_rand_crngt_get_entropy_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRNGT_BUFSIZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rand_crngt_get_entropy_cb(i32* %0, i32* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %55

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @rand_pool_acquire_entropy(i32* %20)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @CRNGT_BUFSIZ, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @EVP_MD_fetch(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %55

31:                                               ; preds = %25
  %32 = load i32*, i32** %8, align 8
  %33 = call i8* @rand_pool_detach(i32* %32)
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i64, i64* @CRNGT_BUFSIZ, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @EVP_Digest(i8* %34, i64 %35, i8* %36, i32* %37, i32* %38, i32* null)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load i64, i64* @CRNGT_BUFSIZ, align 8
  %46 = call i32 @memcpy(i8* %43, i8* %44, i64 %45)
  br label %47

47:                                               ; preds = %42, %31
  %48 = load i32*, i32** %8, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @rand_pool_reattach(i32* %48, i8* %49)
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @EVP_MD_free(i32* %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %47, %30, %18
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @rand_pool_acquire_entropy(i32*) #1

declare dso_local i32* @EVP_MD_fetch(i32*, i8*, i8*) #1

declare dso_local i8* @rand_pool_detach(i32*) #1

declare dso_local i32 @EVP_Digest(i8*, i64, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @rand_pool_reattach(i32*, i8*) #1

declare dso_local i32 @EVP_MD_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
