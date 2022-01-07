; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_x509_dup_cert_test.c_test_509_dup_cert.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_x509_dup_cert_test.c_test_509_dup_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_FILETYPE_PEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_509_dup_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_509_dup_cert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i8* @test_get_argument(i32 %8)
  store i8* %9, i8** %7, align 8
  %10 = call i32* (...) @X509_STORE_new()
  store i32* %10, i32** %5, align 8
  %11 = call i64 @TEST_ptr(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 (...) @X509_LOOKUP_file()
  %16 = call i32* @X509_STORE_add_lookup(i32* %14, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = call i64 @TEST_ptr(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %23 = call i32 @X509_load_cert_file(i32* %20, i8* %21, i32 %22)
  %24 = call i64 @TEST_true(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %30 = call i32 @X509_load_cert_file(i32* %27, i8* %28, i32 %29)
  %31 = call i64 @TEST_true(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %26, %19, %13, %1
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @X509_STORE_CTX_free(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @X509_STORE_free(i32* %37)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i8* @test_get_argument(i32) #1

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @X509_STORE_new(...) #1

declare dso_local i32* @X509_STORE_add_lookup(i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_file(...) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @X509_load_cert_file(i32*, i8*, i32) #1

declare dso_local i32 @X509_STORE_CTX_free(i32*) #1

declare dso_local i32 @X509_STORE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
