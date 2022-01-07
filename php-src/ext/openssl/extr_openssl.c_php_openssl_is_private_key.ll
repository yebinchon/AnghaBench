; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_is_private_key.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_is_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"key type not supported in this PHP build!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @php_openssl_is_private_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_is_private_key(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
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
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @EVP_PKEY_id(i32* %23)
  switch i32 %24, label %82 [
    i32 129, label %25
    i32 128, label %25
    i32 135, label %41
    i32 134, label %41
    i32 133, label %41
    i32 132, label %41
    i32 131, label %41
    i32 136, label %63
  ]

25:                                               ; preds = %1, %1
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @EVP_PKEY_get0_RSA(i32* %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @RSA_get0_factors(i32* %31, i32** %5, i32** %6)
  %33 = load i32*, i32** %5, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %30
  store i32 0, i32* %2, align 4
  br label %86

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %25
  br label %85

41:                                               ; preds = %1, %1, %1, %1, %1
  %42 = load i32*, i32** %3, align 8
  %43 = call i32* @EVP_PKEY_get0_DSA(i32* %42)
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @DSA_get0_pqg(i32* %47, i32** %8, i32** %9, i32** %10)
  %49 = load i32*, i32** %8, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %9, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %46
  store i32 0, i32* %2, align 4
  br label %86

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @DSA_get0_key(i32* %56, i32** %11, i32** %12)
  %58 = load i32*, i32** %12, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %86

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %41
  br label %85

63:                                               ; preds = %1
  %64 = load i32*, i32** %3, align 8
  %65 = call i32* @EVP_PKEY_get0_DH(i32* %64)
  store i32* %65, i32** %13, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @DH_get0_pqg(i32* %69, i32** %14, i32** %15, i32** %16)
  %71 = load i32*, i32** %14, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %86

74:                                               ; preds = %68
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @DH_get0_key(i32* %75, i32** %17, i32** %18)
  %77 = load i32*, i32** %18, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %86

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %63
  br label %85

82:                                               ; preds = %1
  %83 = load i32, i32* @E_WARNING, align 4
  %84 = call i32 @php_error_docref(i32* null, i32 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %81, %62, %40
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %79, %73, %60, %54, %38
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @EVP_PKEY_id(i32*) #1

declare dso_local i32* @EVP_PKEY_get0_RSA(i32*) #1

declare dso_local i32 @RSA_get0_factors(i32*, i32**, i32**) #1

declare dso_local i32* @EVP_PKEY_get0_DSA(i32*) #1

declare dso_local i32 @DSA_get0_pqg(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @DSA_get0_key(i32*, i32**, i32**) #1

declare dso_local i32* @EVP_PKEY_get0_DH(i32*) #1

declare dso_local i32 @DH_get0_pqg(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @DH_get0_key(i32*, i32**, i32**) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
