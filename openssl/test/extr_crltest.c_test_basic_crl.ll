; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_crltest.c_test_basic_crl.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_crltest.c_test_basic_crl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kBasicCRL = common dso_local global i32 0, align 4
@kRevokedCRL = common dso_local global i32 0, align 4
@test_leaf = common dso_local global i32 0, align 4
@test_root = common dso_local global i32 0, align 4
@X509_V_FLAG_CRL_CHECK = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4
@X509_V_ERR_CERT_REVOKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_basic_crl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_basic_crl() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @kBasicCRL, align 4
  %5 = call i32* @CRL_from_strings(i32 %4)
  store i32* %5, i32** %1, align 8
  %6 = load i32, i32* @kRevokedCRL, align 4
  %7 = call i32* @CRL_from_strings(i32 %6)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = call i64 @TEST_ptr(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @TEST_ptr(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load i32, i32* @test_leaf, align 4
  %17 = load i32, i32* @test_root, align 4
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @make_CRL_stack(i32* %18, i32* null)
  %20 = load i32, i32* @X509_V_FLAG_CRL_CHECK, align 4
  %21 = call i32 @verify(i32 %16, i32 %17, i32 %19, i32 %20)
  %22 = load i32, i32* @X509_V_OK, align 4
  %23 = call i64 @TEST_int_eq(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = load i32, i32* @test_leaf, align 4
  %27 = load i32, i32* @test_root, align 4
  %28 = load i32*, i32** %1, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @make_CRL_stack(i32* %28, i32* %29)
  %31 = load i32, i32* @X509_V_FLAG_CRL_CHECK, align 4
  %32 = call i32 @verify(i32 %26, i32 %27, i32 %30, i32 %31)
  %33 = load i32, i32* @X509_V_ERR_CERT_REVOKED, align 4
  %34 = call i64 @TEST_int_eq(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %25, %15, %11, %0
  %37 = phi i1 [ false, %15 ], [ false, %11 ], [ false, %0 ], [ %35, %25 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @X509_CRL_free(i32* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @X509_CRL_free(i32* %41)
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @CRL_from_strings(i32) #1

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i64 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @verify(i32, i32, i32, i32) #1

declare dso_local i32 @make_CRL_stack(i32*, i32*) #1

declare dso_local i32 @X509_CRL_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
