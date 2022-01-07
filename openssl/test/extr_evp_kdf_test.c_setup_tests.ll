; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_kdf_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_kdf_kbkdf_6803_128 = common dso_local global i32 0, align 4
@test_kdf_kbkdf_6803_256 = common dso_local global i32 0, align 4
@test_kdf_kbkdf_8009_prf1 = common dso_local global i32 0, align 4
@test_kdf_kbkdf_8009_prf2 = common dso_local global i32 0, align 4
@test_kdf_get_kdf = common dso_local global i32 0, align 4
@test_kdf_tls1_prf = common dso_local global i32 0, align 4
@test_kdf_hkdf = common dso_local global i32 0, align 4
@test_kdf_pbkdf2 = common dso_local global i32 0, align 4
@test_kdf_scrypt = common dso_local global i32 0, align 4
@test_kdf_ss_hash = common dso_local global i32 0, align 4
@test_kdf_ss_hmac = common dso_local global i32 0, align 4
@test_kdf_ss_kmac = common dso_local global i32 0, align 4
@test_kdf_sshkdf = common dso_local global i32 0, align 4
@test_kdf_x963 = common dso_local global i32 0, align 4
@test_kdf_x942_asn1 = common dso_local global i32 0, align 4
@test_kdf_krb5kdf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = load i32, i32* @test_kdf_kbkdf_6803_128, align 4
  %2 = call i32 @ADD_TEST(i32 %1)
  %3 = load i32, i32* @test_kdf_kbkdf_6803_256, align 4
  %4 = call i32 @ADD_TEST(i32 %3)
  %5 = load i32, i32* @test_kdf_kbkdf_8009_prf1, align 4
  %6 = call i32 @ADD_TEST(i32 %5)
  %7 = load i32, i32* @test_kdf_kbkdf_8009_prf2, align 4
  %8 = call i32 @ADD_TEST(i32 %7)
  %9 = load i32, i32* @test_kdf_get_kdf, align 4
  %10 = call i32 @ADD_TEST(i32 %9)
  %11 = load i32, i32* @test_kdf_tls1_prf, align 4
  %12 = call i32 @ADD_TEST(i32 %11)
  %13 = load i32, i32* @test_kdf_hkdf, align 4
  %14 = call i32 @ADD_TEST(i32 %13)
  %15 = load i32, i32* @test_kdf_pbkdf2, align 4
  %16 = call i32 @ADD_TEST(i32 %15)
  %17 = load i32, i32* @test_kdf_scrypt, align 4
  %18 = call i32 @ADD_TEST(i32 %17)
  %19 = load i32, i32* @test_kdf_ss_hash, align 4
  %20 = call i32 @ADD_TEST(i32 %19)
  %21 = load i32, i32* @test_kdf_ss_hmac, align 4
  %22 = call i32 @ADD_TEST(i32 %21)
  %23 = load i32, i32* @test_kdf_ss_kmac, align 4
  %24 = call i32 @ADD_TEST(i32 %23)
  %25 = load i32, i32* @test_kdf_sshkdf, align 4
  %26 = call i32 @ADD_TEST(i32 %25)
  %27 = load i32, i32* @test_kdf_x963, align 4
  %28 = call i32 @ADD_TEST(i32 %27)
  %29 = load i32, i32* @test_kdf_x942_asn1, align 4
  %30 = call i32 @ADD_TEST(i32 %29)
  %31 = load i32, i32* @test_kdf_krb5kdf, align 4
  %32 = call i32 @ADD_TEST(i32 %31)
  ret i32 1
}

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
