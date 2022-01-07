; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_get_evp_md_from_algo.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_get_evp_md_from_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @php_openssl_get_evp_md_from_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_openssl_get_evp_md_from_algo(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %33 [
    i32 132, label %6
    i32 134, label %9
    i32 135, label %12
    i32 137, label %15
    i32 131, label %18
    i32 130, label %21
    i32 129, label %24
    i32 128, label %27
    i32 133, label %30
  ]

6:                                                ; preds = %1
  %7 = call i64 (...) @EVP_sha1()
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %4, align 8
  br label %34

9:                                                ; preds = %1
  %10 = call i64 (...) @EVP_md5()
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %4, align 8
  br label %34

12:                                               ; preds = %1
  %13 = call i64 (...) @EVP_md4()
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %4, align 8
  br label %34

15:                                               ; preds = %1
  %16 = call i64 (...) @EVP_dss1()
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %4, align 8
  br label %34

18:                                               ; preds = %1
  %19 = call i64 (...) @EVP_sha224()
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %4, align 8
  br label %34

21:                                               ; preds = %1
  %22 = call i64 (...) @EVP_sha256()
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %4, align 8
  br label %34

24:                                               ; preds = %1
  %25 = call i64 (...) @EVP_sha384()
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %4, align 8
  br label %34

27:                                               ; preds = %1
  %28 = call i64 (...) @EVP_sha512()
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %4, align 8
  br label %34

30:                                               ; preds = %1
  %31 = call i64 (...) @EVP_ripemd160()
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %4, align 8
  br label %34

33:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %36

34:                                               ; preds = %30, %27, %24, %21, %18, %15, %12, %9, %6
  %35 = load i32*, i32** %4, align 8
  store i32* %35, i32** %2, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

declare dso_local i64 @EVP_sha1(...) #1

declare dso_local i64 @EVP_md5(...) #1

declare dso_local i64 @EVP_md4(...) #1

declare dso_local i64 @EVP_dss1(...) #1

declare dso_local i64 @EVP_sha224(...) #1

declare dso_local i64 @EVP_sha256(...) #1

declare dso_local i64 @EVP_sha384(...) #1

declare dso_local i64 @EVP_sha512(...) #1

declare dso_local i64 @EVP_ripemd160(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
