; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_danetest.c_run_tlsatest.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_danetest.c_run_tlsatest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tlsafile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@CAfile = common dso_local global i32 0, align 4
@basedomain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_tlsatest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_tlsatest() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @tlsafile, align 4
  %5 = call i32* @BIO_new_file(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %2, align 8
  %6 = call i32 @TEST_ptr(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %0
  %9 = call i32 (...) @TLS_client_method()
  %10 = call i32* @SSL_CTX_new(i32 %9)
  store i32* %10, i32** %1, align 8
  %11 = call i32 @TEST_ptr(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %8
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @SSL_CTX_dane_enable(i32* %14)
  %16 = call i32 @TEST_int_gt(i32 %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @CAfile, align 4
  %21 = call i32 @SSL_CTX_load_verify_file(i32* %19, i32 %20)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 (...) @EVP_sha512()
  %27 = call i32 @SSL_CTX_dane_mtype_set(i32* %25, i32 %26, i32 2, i32 1)
  %28 = call i32 @TEST_int_gt(i32 %27, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 (...) @EVP_sha256()
  %33 = call i32 @SSL_CTX_dane_mtype_set(i32* %31, i32 %32, i32 1, i32 2)
  %34 = call i32 @TEST_int_gt(i32 %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @basedomain, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @tlsafile, align 4
  %41 = call i32 @test_tlsafile(i32* %37, i32 %38, i32* %39, i32 %40)
  %42 = call i32 @TEST_int_gt(i32 %41, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36, %30, %24, %18, %13, %8, %0
  br label %46

45:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @BIO_free(i32* %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @SSL_CTX_free(i32* %49)
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BIO_new_file(i32, i8*) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @SSL_CTX_dane_enable(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @SSL_CTX_load_verify_file(i32*, i32) #1

declare dso_local i32 @SSL_CTX_dane_mtype_set(i32*, i32, i32, i32) #1

declare dso_local i32 @EVP_sha512(...) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32 @test_tlsafile(i32*, i32, i32*, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
