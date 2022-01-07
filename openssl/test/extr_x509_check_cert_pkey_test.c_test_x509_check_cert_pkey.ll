; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_x509_check_cert_pkey_test.c_test_x509_check_cert_pkey.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_x509_check_cert_pkey_test.c_test_x509_check_cert_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid 'type'\00", align 1
@e = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"invalid 'expected'\00", align 1
@k = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@c = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"read PEM x509 failed\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"read PEM x509 req failed\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"check private key: expected: %d, got: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_x509_check_cert_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_x509_check_cert_pkey() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @t, align 4
  %10 = call i64 @strcmp(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 1, i32* %6, align 4
  br label %21

13:                                               ; preds = %0
  %14 = load i32, i32* @t, align 4
  %15 = call i64 @strcmp(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 2, i32* %6, align 4
  br label %20

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @TEST_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %89

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i32, i32* @e, align 4
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @e, align 4
  %28 = call i64 @strcmp(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @TEST_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %89

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* @k, align 4
  %36 = call i32* @BIO_new_file(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %36, i32** %1, align 8
  %37 = call i32 @TEST_ptr(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %89

40:                                               ; preds = %34
  %41 = load i32*, i32** %1, align 8
  %42 = call i32* @PEM_read_bio_PrivateKey(i32* %41, i32* null, i32* null, i32* null)
  store i32* %42, i32** %4, align 8
  %43 = call i32 @TEST_ptr(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %89

46:                                               ; preds = %40
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @BIO_free(i32* %47)
  %49 = load i32, i32* @c, align 4
  %50 = call i32* @BIO_new_file(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %50, i32** %1, align 8
  %51 = call i32 @TEST_ptr(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %89

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %78 [
    i32 1, label %56
    i32 2, label %67
  ]

56:                                               ; preds = %54
  %57 = load i32*, i32** %1, align 8
  %58 = call i32* @PEM_read_bio_X509(i32* %57, i32* null, i32* null, i32* null)
  store i32* %58, i32** %2, align 8
  %59 = load i32*, i32** %2, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (i8*, ...) @TEST_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %89

63:                                               ; preds = %56
  %64 = load i32*, i32** %2, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @X509_check_private_key(i32* %64, i32* %65)
  store i32 %66, i32* %8, align 4
  br label %79

67:                                               ; preds = %54
  %68 = load i32*, i32** %1, align 8
  %69 = call i32* @PEM_read_bio_X509_REQ(i32* %68, i32* null, i32* null, i32* null)
  store i32* %69, i32** %3, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @TEST_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %89

74:                                               ; preds = %67
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @X509_REQ_check_private_key(i32* %75, i32* %76)
  store i32 %77, i32* %8, align 4
  br label %79

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %78, %74, %63
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @TEST_int_eq(i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i8*, ...) @TEST_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %85, i32 %86)
  br label %89

88:                                               ; preds = %79
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %84, %72, %61, %53, %45, %39, %31, %18
  %90 = load i32*, i32** %1, align 8
  %91 = call i32 @BIO_free(i32* %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @X509_free(i32* %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @X509_REQ_free(i32* %94)
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @EVP_PKEY_free(i32* %96)
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @TEST_error(i8*, ...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BIO_new_file(i32, i8*) #1

declare dso_local i32* @PEM_read_bio_PrivateKey(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @X509_check_private_key(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_X509_REQ(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @X509_REQ_check_private_key(i32*, i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @X509_REQ_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
