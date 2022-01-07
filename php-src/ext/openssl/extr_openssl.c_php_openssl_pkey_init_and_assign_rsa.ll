; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_pkey_init_and_assign_rsa.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_pkey_init_and_assign_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @php_openssl_pkey_init_and_assign_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_pkey_init_and_assign_rsa(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @OPENSSL_PKEY_SET_BN(i32* %16, i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @OPENSSL_PKEY_SET_BN(i32* %19, i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @OPENSSL_PKEY_SET_BN(i32* %22, i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @RSA_set0_key(i32* %31, i32* %32, i32* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30, %27, %3
  store i32 0, i32* %4, align 4
  br label %91

38:                                               ; preds = %30
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @OPENSSL_PKEY_SET_BN(i32* %39, i32* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @OPENSSL_PKEY_SET_BN(i32* %42, i32* %43)
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32*, i32** %12, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47, %38
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @RSA_set0_factors(i32* %51, i32* %52, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %91

57:                                               ; preds = %50, %47
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @OPENSSL_PKEY_SET_BN(i32* %58, i32* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @OPENSSL_PKEY_SET_BN(i32* %61, i32* %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @OPENSSL_PKEY_SET_BN(i32* %64, i32* %65)
  %67 = load i32*, i32** %13, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %57
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** %15, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72, %69, %57
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 @RSA_set0_crt_params(i32* %76, i32* %77, i32* %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %91

83:                                               ; preds = %75, %72
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @EVP_PKEY_assign_RSA(i32* %84, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = call i32 (...) @php_openssl_store_errors()
  store i32 0, i32* %4, align 4
  br label %91

90:                                               ; preds = %83
  store i32 1, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %88, %82, %56, %37
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @OPENSSL_PKEY_SET_BN(i32*, i32*) #1

declare dso_local i32 @RSA_set0_key(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RSA_set0_factors(i32*, i32*, i32*) #1

declare dso_local i32 @RSA_set0_crt_params(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_assign_RSA(i32*, i32*) #1

declare dso_local i32 @php_openssl_store_errors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
