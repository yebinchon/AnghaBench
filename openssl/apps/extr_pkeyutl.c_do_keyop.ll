; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_pkeyutl.c_do_keyop.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_pkeyutl.c_do_keyop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64*, i8*, i64)* @do_keyop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_keyop(i32* %0, i32 %1, i8* %2, i64* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %48 [
    i32 128, label %15
    i32 129, label %22
    i32 130, label %29
    i32 132, label %36
    i32 131, label %43
  ]

15:                                               ; preds = %6
  %16 = load i32*, i32** %7, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i64*, i64** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @EVP_PKEY_verify_recover(i32* %16, i8* %17, i64* %18, i8* %19, i64 %20)
  store i32 %21, i32* %13, align 4
  br label %48

22:                                               ; preds = %6
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @EVP_PKEY_sign(i32* %23, i8* %24, i64* %25, i8* %26, i64 %27)
  store i32 %28, i32* %13, align 4
  br label %48

29:                                               ; preds = %6
  %30 = load i32*, i32** %7, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @EVP_PKEY_encrypt(i32* %30, i8* %31, i64* %32, i8* %33, i64 %34)
  store i32 %35, i32* %13, align 4
  br label %48

36:                                               ; preds = %6
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @EVP_PKEY_decrypt(i32* %37, i8* %38, i64* %39, i8* %40, i64 %41)
  store i32 %42, i32* %13, align 4
  br label %48

43:                                               ; preds = %6
  %44 = load i32*, i32** %7, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = call i32 @EVP_PKEY_derive(i32* %44, i8* %45, i64* %46)
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %6, %43, %36, %29, %22, %15
  %49 = load i32, i32* %13, align 4
  ret i32 %49
}

declare dso_local i32 @EVP_PKEY_verify_recover(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @EVP_PKEY_sign(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @EVP_PKEY_encrypt(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @EVP_PKEY_decrypt(i32*, i8*, i64*, i8*, i64) #1

declare dso_local i32 @EVP_PKEY_derive(i32*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
