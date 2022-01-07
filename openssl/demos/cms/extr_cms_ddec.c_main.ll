; ModuleID = '/home/carl/AnghaBench/openssl/demos/cms/extr_cms_ddec.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/demos/cms/extr_cms_ddec.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"signer.pem\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"smencr.pem\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"smencr.out\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"encrout.txt\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Error Decrypting Data\0A\00", align 1

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
  %16 = call i32* @BIO_new_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %64

20:                                               ; preds = %2
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @PEM_read_bio_X509(i32* %21, i32* null, i32 0, i32* null)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @BIO_reset(i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @PEM_read_bio_PrivateKey(i32* %25, i32* null, i32 0, i32* null)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %20
  br label %64

33:                                               ; preds = %29
  %34 = call i32* @BIO_new_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %64

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = call i32* @PEM_read_bio_CMS(i32* %39, i32* null, i32 0, i32* null)
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %64

44:                                               ; preds = %38
  %45 = call i32* @BIO_new_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %64

49:                                               ; preds = %44
  %50 = call i32* @BIO_new_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %64

54:                                               ; preds = %49
  %55 = load i32*, i32** %12, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @CMS_decrypt(i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32 0)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %62, %53, %48, %43, %37, %32, %19
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @ERR_print_errors_fp(i32 %70)
  br label %72

72:                                               ; preds = %67, %64
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @CMS_ContentInfo_free(i32* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @X509_free(i32* %75)
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @EVP_PKEY_free(i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @BIO_free(i32* %79)
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @BIO_free(i32* %81)
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @BIO_free(i32* %83)
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @BIO_free(i32* %85)
  %87 = load i32, i32* %13, align 4
  ret i32 %87
}

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @ERR_load_crypto_strings(...) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32, i32*) #1

declare dso_local i32 @BIO_reset(i32*) #1

declare dso_local i32* @PEM_read_bio_PrivateKey(i32*, i32*, i32, i32*) #1

declare dso_local i32* @PEM_read_bio_CMS(i32*, i32*, i32, i32*) #1

declare dso_local i32 @CMS_decrypt(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @CMS_ContentInfo_free(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
