; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_client_cert_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_client_cert_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cert = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@privkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32**)* @client_cert_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_cert_cb(i32* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @SSL_get_peer_certificate(i32* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @TEST_ptr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

18:                                               ; preds = %3
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @X509_free(i32* %19)
  %21 = load i32, i32* @cert, align 4
  %22 = call i32* @BIO_new_file(i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @TEST_ptr(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %61

27:                                               ; preds = %18
  %28 = load i32*, i32** %11, align 8
  %29 = call i32* @PEM_read_bio_X509(i32* %28, i32* null, i32* null, i32* null)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @BIO_free(i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @TEST_ptr(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %61

36:                                               ; preds = %27
  %37 = load i32, i32* @privkey, align 4
  %38 = call i32* @BIO_new_file(i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @TEST_ptr(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @X509_free(i32* %43)
  store i32 0, i32* %4, align 4
  br label %61

45:                                               ; preds = %36
  %46 = load i32*, i32** %11, align 8
  %47 = call i32* @PEM_read_bio_PrivateKey(i32* %46, i32* null, i32* null, i32* null)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @BIO_free(i32* %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @TEST_ptr(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @X509_free(i32* %54)
  store i32 0, i32* %4, align 4
  br label %61

56:                                               ; preds = %45
  %57 = load i32*, i32** %8, align 8
  %58 = load i32**, i32*** %6, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32**, i32*** %7, align 8
  store i32* %59, i32** %60, align 8
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %53, %42, %35, %26, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32* @SSL_get_peer_certificate(i32*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32* @BIO_new_file(i32, i8*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32* @PEM_read_bio_PrivateKey(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
