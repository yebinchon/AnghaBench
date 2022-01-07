; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssl_cert_table_internal_test.c_test_ssl_cert_table.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssl_cert_table_internal_test.c_test_ssl_cert_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ssl_cert_info = common dso_local global i32 0, align 4
@SSL_PKEY_NUM = common dso_local global i32 0, align 4
@EVP_PKEY_RSA = common dso_local global i32 0, align 4
@SSL_aRSA = common dso_local global i32 0, align 4
@SSL_PKEY_RSA = common dso_local global i32 0, align 4
@EVP_PKEY_DSA = common dso_local global i32 0, align 4
@SSL_aDSS = common dso_local global i32 0, align 4
@SSL_PKEY_DSA_SIGN = common dso_local global i32 0, align 4
@EVP_PKEY_EC = common dso_local global i32 0, align 4
@SSL_aECDSA = common dso_local global i32 0, align 4
@SSL_PKEY_ECC = common dso_local global i32 0, align 4
@NID_id_GostR3410_2001 = common dso_local global i32 0, align 4
@SSL_aGOST01 = common dso_local global i32 0, align 4
@SSL_PKEY_GOST01 = common dso_local global i32 0, align 4
@NID_id_GostR3410_2012_256 = common dso_local global i32 0, align 4
@SSL_aGOST12 = common dso_local global i32 0, align 4
@SSL_PKEY_GOST12_256 = common dso_local global i32 0, align 4
@NID_id_GostR3410_2012_512 = common dso_local global i32 0, align 4
@SSL_PKEY_GOST12_512 = common dso_local global i32 0, align 4
@EVP_PKEY_ED25519 = common dso_local global i32 0, align 4
@SSL_PKEY_ED25519 = common dso_local global i32 0, align 4
@EVP_PKEY_ED448 = common dso_local global i32 0, align 4
@SSL_PKEY_ED448 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_ssl_cert_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ssl_cert_table() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ssl_cert_info, align 4
  %3 = call i32 @OSSL_NELEM(i32 %2)
  %4 = load i32, i32* @SSL_PKEY_NUM, align 4
  %5 = call i32 @TEST_size_t_eq(i32 %3, i32 %4)
  %6 = load i32, i32* @EVP_PKEY_RSA, align 4
  %7 = load i32, i32* @SSL_aRSA, align 4
  %8 = load i32, i32* @SSL_PKEY_RSA, align 4
  %9 = call i32 @test_cert_table(i32 %6, i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %62

12:                                               ; preds = %0
  %13 = load i32, i32* @EVP_PKEY_DSA, align 4
  %14 = load i32, i32* @SSL_aDSS, align 4
  %15 = load i32, i32* @SSL_PKEY_DSA_SIGN, align 4
  %16 = call i32 @test_cert_table(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %62

19:                                               ; preds = %12
  %20 = load i32, i32* @EVP_PKEY_EC, align 4
  %21 = load i32, i32* @SSL_aECDSA, align 4
  %22 = load i32, i32* @SSL_PKEY_ECC, align 4
  %23 = call i32 @test_cert_table(i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %62

26:                                               ; preds = %19
  %27 = load i32, i32* @NID_id_GostR3410_2001, align 4
  %28 = load i32, i32* @SSL_aGOST01, align 4
  %29 = load i32, i32* @SSL_PKEY_GOST01, align 4
  %30 = call i32 @test_cert_table(i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %62

33:                                               ; preds = %26
  %34 = load i32, i32* @NID_id_GostR3410_2012_256, align 4
  %35 = load i32, i32* @SSL_aGOST12, align 4
  %36 = load i32, i32* @SSL_PKEY_GOST12_256, align 4
  %37 = call i32 @test_cert_table(i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  br label %62

40:                                               ; preds = %33
  %41 = load i32, i32* @NID_id_GostR3410_2012_512, align 4
  %42 = load i32, i32* @SSL_aGOST12, align 4
  %43 = load i32, i32* @SSL_PKEY_GOST12_512, align 4
  %44 = call i32 @test_cert_table(i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %1, align 4
  br label %62

47:                                               ; preds = %40
  %48 = load i32, i32* @EVP_PKEY_ED25519, align 4
  %49 = load i32, i32* @SSL_aECDSA, align 4
  %50 = load i32, i32* @SSL_PKEY_ED25519, align 4
  %51 = call i32 @test_cert_table(i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 0, i32* %1, align 4
  br label %62

54:                                               ; preds = %47
  %55 = load i32, i32* @EVP_PKEY_ED448, align 4
  %56 = load i32, i32* @SSL_aECDSA, align 4
  %57 = load i32, i32* @SSL_PKEY_ED448, align 4
  %58 = call i32 @test_cert_table(i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  br label %62

61:                                               ; preds = %54
  store i32 1, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %60, %53, %46, %39, %32, %25, %18, %11
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @TEST_size_t_eq(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

declare dso_local i32 @test_cert_table(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
