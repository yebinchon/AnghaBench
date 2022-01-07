; ModuleID = '/home/carl/AnghaBench/openssl/demos/cms/extr_cms_ver.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/demos/cms/extr_cms_ver.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"cacert.pem\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"smout.txt\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"smver.txt\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Verification Failure\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Verification Successful\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Error Verifying Data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 1, i32* %13, align 4
  %14 = call i32 (...) @OpenSSL_add_all_algorithms()
  %15 = call i32 (...) @ERR_load_crypto_strings()
  %16 = call i32* (...) @X509_STORE_new()
  store i32* %16, i32** %10, align 8
  %17 = call i32* @BIO_new_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %62

21:                                               ; preds = %2
  %22 = load i32*, i32** %8, align 8
  %23 = call i32* @PEM_read_bio_X509(i32* %22, i32* null, i32 0, i32* null)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %62

27:                                               ; preds = %21
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @X509_STORE_add_cert(i32* %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %62

33:                                               ; preds = %27
  %34 = call i32* @BIO_new_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %62

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = call i32* @SMIME_read_CMS(i32* %39, i32** %9)
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %62

44:                                               ; preds = %38
  %45 = call i32* @BIO_new_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %62

49:                                               ; preds = %44
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @CMS_verify(i32* %50, i32* null, i32* %51, i32* %52, i32* %53, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %59, %56, %48, %43, %37, %32, %26, %20
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @ERR_print_errors_fp(i32 %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @CMS_ContentInfo_free(i32* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @X509_free(i32* %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @BIO_free(i32* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @BIO_free(i32* %77)
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @BIO_free(i32* %79)
  %81 = load i32, i32* %13, align 4
  ret i32 %81
}

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @ERR_load_crypto_strings(...) #1

declare dso_local i32* @X509_STORE_new(...) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32, i32*) #1

declare dso_local i32 @X509_STORE_add_cert(i32*, i32*) #1

declare dso_local i32* @SMIME_read_CMS(i32*, i32**) #1

declare dso_local i32 @CMS_verify(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @CMS_ContentInfo_free(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
