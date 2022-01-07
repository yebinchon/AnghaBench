; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ocspapitest.c_get_cert_and_key.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ocspapitest.c_get_cert_and_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@certstr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@privkeystr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**)* @get_cert_and_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cert_and_key(i32** %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* @certstr, align 4
  %11 = call i32* @BIO_new_file(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = call i32 @TEST_ptr(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @PEM_read_bio_X509(i32* %16, i32* null, i32* null, i32* null)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @BIO_free(i32* %18)
  %20 = load i32, i32* @privkeystr, align 4
  %21 = call i32* @BIO_new_file(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %7, align 8
  %22 = call i32 @TEST_ptr(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %43

25:                                               ; preds = %15
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @PEM_read_bio_PrivateKey(i32* %26, i32* null, i32* null, i32* null)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @BIO_free(i32* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @TEST_ptr(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @TEST_ptr(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %25
  br label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = load i32**, i32*** %4, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32**, i32*** %5, align 8
  store i32* %41, i32** %42, align 8
  store i32 1, i32* %3, align 4
  br label %48

43:                                               ; preds = %37, %24
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @X509_free(i32* %44)
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @EVP_PKEY_free(i32* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %38, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BIO_new_file(i32, i8*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32* @PEM_read_bio_PrivateKey(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
