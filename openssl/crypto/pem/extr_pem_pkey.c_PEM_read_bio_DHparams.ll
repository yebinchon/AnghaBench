; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_pkey.c_PEM_read_bio_DHparams.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_pkey.c_PEM_read_bio_DHparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_STORE_INFO_PARAMS = common dso_local global i64 0, align 8
@EVP_PKEY_DHX = common dso_local global i64 0, align 8
@EVP_PKEY_DH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PEM_read_bio_DHparams(i32* %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32* @UI_UTIL_wrap_read_pem_callback(i32* %15, i32 0)
  store i32* %16, i32** %14, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %79

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32* @ossl_store_attach_pem_bio(i32* %20, i32* %21, i8* %22)
  store i32* %23, i32** %12, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %71

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %58, %26
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @OSSL_STORE_eof(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %12, align 8
  %33 = call i32* @OSSL_STORE_load(i32* %32)
  store i32* %33, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  br i1 %36, label %37, label %61

37:                                               ; preds = %35
  %38 = load i32*, i32** %13, align 8
  %39 = call i64 @OSSL_STORE_INFO_get_type(i32* %38)
  %40 = load i64, i64* @OSSL_STORE_INFO_PARAMS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load i32*, i32** %13, align 8
  %44 = call i32* @OSSL_STORE_INFO_get0_PARAMS(i32* %43)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i64 @EVP_PKEY_id(i32* %45)
  %47 = load i64, i64* @EVP_PKEY_DHX, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load i32*, i32** %11, align 8
  %51 = call i64 @EVP_PKEY_id(i32* %50)
  %52 = load i64, i64* @EVP_PKEY_DH, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %42
  %55 = load i32*, i32** %11, align 8
  %56 = call i32* @EVP_PKEY_get1_DH(i32* %55)
  store i32* %56, i32** %10, align 8
  br label %61

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @OSSL_STORE_INFO_free(i32* %59)
  br label %27

61:                                               ; preds = %54, %35
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32**, i32*** %7, align 8
  %66 = icmp ne i32** %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = load i32**, i32*** %7, align 8
  store i32* %68, i32** %69, align 8
  br label %70

70:                                               ; preds = %67, %64, %61
  br label %71

71:                                               ; preds = %70, %25
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @ossl_store_detach_pem_bio(i32* %72)
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @UI_destroy_method(i32* %74)
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @OSSL_STORE_INFO_free(i32* %76)
  %78 = load i32*, i32** %10, align 8
  store i32* %78, i32** %5, align 8
  br label %79

79:                                               ; preds = %71, %18
  %80 = load i32*, i32** %5, align 8
  ret i32* %80
}

declare dso_local i32* @UI_UTIL_wrap_read_pem_callback(i32*, i32) #1

declare dso_local i32* @ossl_store_attach_pem_bio(i32*, i32*, i8*) #1

declare dso_local i32 @OSSL_STORE_eof(i32*) #1

declare dso_local i32* @OSSL_STORE_load(i32*) #1

declare dso_local i64 @OSSL_STORE_INFO_get_type(i32*) #1

declare dso_local i32* @OSSL_STORE_INFO_get0_PARAMS(i32*) #1

declare dso_local i64 @EVP_PKEY_id(i32*) #1

declare dso_local i32* @EVP_PKEY_get1_DH(i32*) #1

declare dso_local i32 @OSSL_STORE_INFO_free(i32*) #1

declare dso_local i32 @ossl_store_detach_pem_bio(i32*) #1

declare dso_local i32 @UI_destroy_method(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
