; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_Digest.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_digest.c_EVP_Digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MD_CTX_FLAG_ONESHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_Digest(i8* %0, i64 %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %16, i32** %14, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %47

20:                                               ; preds = %6
  %21 = load i32*, i32** %14, align 8
  %22 = load i32, i32* @EVP_MD_CTX_FLAG_ONESHOT, align 4
  %23 = call i32 @EVP_MD_CTX_set_flags(i32* %21, i32 %22)
  %24 = load i32*, i32** %14, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i64 @EVP_DigestInit_ex(i32* %24, i32* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = load i32*, i32** %14, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @EVP_DigestUpdate(i32* %30, i8* %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32*, i32** %14, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i64 @EVP_DigestFinal_ex(i32* %36, i8* %37, i32* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %35, %29, %20
  %42 = phi i1 [ false, %29 ], [ false, %20 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %15, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @EVP_MD_CTX_free(i32* %44)
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %41, %19
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_MD_CTX_set_flags(i32*, i32) #1

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
