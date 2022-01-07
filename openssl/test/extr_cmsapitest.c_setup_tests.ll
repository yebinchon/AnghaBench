; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmsapitest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmsapitest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@cert = common dso_local global i32* null, align 8
@privkey = common dso_local global i32 0, align 4
@test_encrypt_decrypt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = call i8* @test_get_argument(i32 0)
  store i8* %6, i8** %2, align 8
  %7 = call i32 @TEST_ptr(i8* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = call i8* @test_get_argument(i32 1)
  store i8* %10, i8** %3, align 8
  %11 = call i32 @TEST_ptr(i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %0
  store i32 0, i32* %1, align 4
  br label %55

14:                                               ; preds = %9
  %15 = load i8*, i8** %2, align 8
  %16 = call i8* @BIO_new_file(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @TEST_ptr(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %55

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @PEM_read_bio_X509(i8* %22, i32** @cert, i32* null, i32* null)
  %24 = call i32 @TEST_true(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @BIO_free(i8* %27)
  store i32 0, i32* %1, align 4
  br label %55

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @BIO_free(i8* %30)
  %32 = load i8*, i8** %3, align 8
  %33 = call i8* @BIO_new_file(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @TEST_ptr(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32*, i32** @cert, align 8
  %39 = call i32 @X509_free(i32* %38)
  store i32* null, i32** @cert, align 8
  store i32 0, i32* %1, align 4
  br label %55

40:                                               ; preds = %29
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @PEM_read_bio_PrivateKey(i8* %41, i32* @privkey, i32* null, i32* null)
  %43 = call i32 @TEST_true(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @BIO_free(i8* %46)
  %48 = load i32*, i32** @cert, align 8
  %49 = call i32 @X509_free(i32* %48)
  store i32* null, i32** @cert, align 8
  store i32 0, i32* %1, align 4
  br label %55

50:                                               ; preds = %40
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @BIO_free(i8* %51)
  %53 = load i32, i32* @test_encrypt_decrypt, align 4
  %54 = call i32 @ADD_TEST(i32 %53)
  store i32 1, i32* %1, align 4
  br label %55

55:                                               ; preds = %50, %45, %37, %26, %20, %13
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @test_get_argument(i32) #1

declare dso_local i8* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @PEM_read_bio_X509(i8*, i32**, i32*, i32*) #1

declare dso_local i32 @BIO_free(i8*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @PEM_read_bio_PrivateKey(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
