; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_get_kdf.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_test_kdf_get_kdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_id_pbkdf2 = common dso_local global i32 0, align 4
@OSSL_KDF_NAME_PBKDF2 = common dso_local global i32 0, align 4
@SN_tls1_prf = common dso_local global i32 0, align 4
@LN_tls1_prf = common dso_local global i32 0, align 4
@NID_tls1_prf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kdf_get_kdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kdf_get_kdf() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* @NID_id_pbkdf2, align 4
  %6 = call i32* @OBJ_nid2obj(i32 %5)
  store i32* %6, i32** %3, align 8
  %7 = call i32 @TEST_ptr(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %0
  %10 = load i32, i32* @OSSL_KDF_NAME_PBKDF2, align 4
  %11 = call i32* @EVP_KDF_fetch(i32* null, i32 %10, i32* null)
  store i32* %11, i32** %1, align 8
  %12 = call i32 @TEST_ptr(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @OBJ_obj2nid(i32* %15)
  %17 = call i32 @OBJ_nid2sn(i32 %16)
  %18 = call i32* @EVP_KDF_fetch(i32* null, i32 %17, i32* null)
  store i32* %18, i32** %2, align 8
  %19 = call i32 @TEST_ptr(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32*, i32** %1, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @TEST_ptr_eq(i32* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %14, %9, %0
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @EVP_KDF_free(i32* %28)
  store i32* null, i32** %1, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @EVP_KDF_free(i32* %30)
  store i32* null, i32** %2, align 8
  %32 = load i32, i32* @SN_tls1_prf, align 4
  %33 = call i32* @EVP_KDF_fetch(i32* null, i32 %32, i32* null)
  store i32* %33, i32** %1, align 8
  %34 = call i32 @TEST_ptr(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load i32, i32* @LN_tls1_prf, align 4
  %38 = call i32* @EVP_KDF_fetch(i32* null, i32 %37, i32* null)
  store i32* %38, i32** %2, align 8
  %39 = call i32 @TEST_ptr(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32*, i32** %1, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @TEST_ptr_eq(i32* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %36, %27
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @EVP_KDF_free(i32* %48)
  store i32* null, i32** %2, align 8
  %50 = load i32, i32* @NID_tls1_prf, align 4
  %51 = call i32 @OBJ_nid2sn(i32 %50)
  %52 = call i32* @EVP_KDF_fetch(i32* null, i32 %51, i32* null)
  store i32* %52, i32** %2, align 8
  %53 = call i32 @TEST_ptr(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i32*, i32** %1, align 8
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @TEST_ptr_eq(i32* %56, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55, %47
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @EVP_KDF_free(i32* %62)
  store i32* null, i32** %1, align 8
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @EVP_KDF_free(i32* %64)
  store i32* null, i32** %2, align 8
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i32* @EVP_KDF_fetch(i32*, i32, i32*) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i32 @OBJ_obj2nid(i32*) #1

declare dso_local i32 @TEST_ptr_eq(i32*, i32*) #1

declare dso_local i32 @EVP_KDF_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
