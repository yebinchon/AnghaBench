; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_crltest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_crltest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kCRLTestRoot = common dso_local global i32 0, align 4
@test_root = common dso_local global i32 0, align 4
@kCRLTestLeaf = common dso_local global i32 0, align 4
@test_leaf = common dso_local global i32 0, align 4
@test_no_crl = common dso_local global i32 0, align 4
@test_basic_crl = common dso_local global i32 0, align 4
@test_bad_issuer_crl = common dso_local global i32 0, align 4
@test_known_critical_crl = common dso_local global i32 0, align 4
@test_unknown_critical_crl = common dso_local global i32 0, align 4
@unknown_critical_crls = common dso_local global i32 0, align 4
@test_reuse_crl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @kCRLTestRoot, align 4
  %3 = call i32 @X509_from_strings(i32 %2)
  store i32 %3, i32* @test_root, align 4
  %4 = call i32 @TEST_ptr(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @kCRLTestLeaf, align 4
  %8 = call i32 @X509_from_strings(i32 %7)
  store i32 %8, i32* @test_leaf, align 4
  %9 = call i32 @TEST_ptr(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %0
  store i32 0, i32* %1, align 4
  br label %27

12:                                               ; preds = %6
  %13 = load i32, i32* @test_no_crl, align 4
  %14 = call i32 @ADD_TEST(i32 %13)
  %15 = load i32, i32* @test_basic_crl, align 4
  %16 = call i32 @ADD_TEST(i32 %15)
  %17 = load i32, i32* @test_bad_issuer_crl, align 4
  %18 = call i32 @ADD_TEST(i32 %17)
  %19 = load i32, i32* @test_known_critical_crl, align 4
  %20 = call i32 @ADD_TEST(i32 %19)
  %21 = load i32, i32* @test_unknown_critical_crl, align 4
  %22 = load i32, i32* @unknown_critical_crls, align 4
  %23 = call i32 @OSSL_NELEM(i32 %22)
  %24 = call i32 @ADD_ALL_TESTS(i32 %21, i32 %23)
  %25 = load i32, i32* @test_reuse_crl, align 4
  %26 = call i32 @ADD_TEST(i32 %25)
  store i32 1, i32* %1, align 4
  br label %27

27:                                               ; preds = %12, %11
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @X509_from_strings(i32) #1

declare dso_local i32 @ADD_TEST(i32) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
