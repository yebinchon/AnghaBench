; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_pkey.c_PEM_read_bio_PrivateKey.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_pkey.c_PEM_read_bio_PrivateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_STORE_C_USE_SECMEM = common dso_local global i32 0, align 4
@OSSL_STORE_INFO_PKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PEM_read_bio_PrivateKey(i32* %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32* @UI_UTIL_wrap_read_pem_callback(i32* %15, i32 0)
  store i32* %16, i32** %13, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %72

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32* @ossl_store_attach_pem_bio(i32* %20, i32* %21, i8* %22)
  store i32* %23, i32** %11, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %64

26:                                               ; preds = %19
  store i32 1, i32* %14, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* @OSSL_STORE_C_USE_SECMEM, align 4
  %29 = call i32 @OSSL_STORE_ctrl(i32* %27, i32 %28, i32* %14)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %64

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @OSSL_STORE_eof(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %11, align 8
  %39 = call i32* @OSSL_STORE_load(i32* %38)
  store i32* %39, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %54

43:                                               ; preds = %41
  %44 = load i32*, i32** %12, align 8
  %45 = call i64 @OSSL_STORE_INFO_get_type(i32* %44)
  %46 = load i64, i64* @OSSL_STORE_INFO_PKEY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %12, align 8
  %50 = call i32* @OSSL_STORE_INFO_get1_PKEY(i32* %49)
  store i32* %50, i32** %10, align 8
  br label %54

51:                                               ; preds = %43
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @OSSL_STORE_INFO_free(i32* %52)
  br label %33

54:                                               ; preds = %48, %41
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32**, i32*** %7, align 8
  %59 = icmp ne i32** %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %10, align 8
  %62 = load i32**, i32*** %7, align 8
  store i32* %61, i32** %62, align 8
  br label %63

63:                                               ; preds = %60, %57, %54
  br label %64

64:                                               ; preds = %63, %31, %25
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @ossl_store_detach_pem_bio(i32* %65)
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @UI_destroy_method(i32* %67)
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @OSSL_STORE_INFO_free(i32* %69)
  %71 = load i32*, i32** %10, align 8
  store i32* %71, i32** %5, align 8
  br label %72

72:                                               ; preds = %64, %18
  %73 = load i32*, i32** %5, align 8
  ret i32* %73
}

declare dso_local i32* @UI_UTIL_wrap_read_pem_callback(i32*, i32) #1

declare dso_local i32* @ossl_store_attach_pem_bio(i32*, i32*, i8*) #1

declare dso_local i32 @OSSL_STORE_ctrl(i32*, i32, i32*) #1

declare dso_local i32 @OSSL_STORE_eof(i32*) #1

declare dso_local i32* @OSSL_STORE_load(i32*) #1

declare dso_local i64 @OSSL_STORE_INFO_get_type(i32*) #1

declare dso_local i32* @OSSL_STORE_INFO_get1_PKEY(i32*) #1

declare dso_local i32 @OSSL_STORE_INFO_free(i32*) #1

declare dso_local i32 @ossl_store_detach_pem_bio(i32*) #1

declare dso_local i32 @UI_destroy_method(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
