; ModuleID = '/home/carl/AnghaBench/openssl/demos/smime/extr_smdec.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/demos/smime/extr_smdec.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"signer.pem\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"smencr.txt\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"encrout.txt\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Error Signing Data\0A\00", align 1

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
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 1, i32* %12, align 4
  %13 = call i32 (...) @OpenSSL_add_all_algorithms()
  %14 = call i32 (...) @ERR_load_crypto_strings()
  %15 = call i32* @BIO_new_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %57

19:                                               ; preds = %2
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @PEM_read_bio_X509(i32* %20, i32* null, i32 0, i32* null)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @BIO_reset(i32* %22)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @PEM_read_bio_PrivateKey(i32* %24, i32* null, i32 0, i32* null)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %19
  br label %57

32:                                               ; preds = %28
  %33 = call i32* @BIO_new_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %57

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @SMIME_read_PKCS7(i32* %38, i32* null)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %57

43:                                               ; preds = %37
  %44 = call i32* @BIO_new_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %57

48:                                               ; preds = %43
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @PKCS7_decrypt(i32* %49, i32* %50, i32* %51, i32* %52, i32 0)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %57

56:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %56, %55, %47, %42, %36, %31, %18
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @ERR_print_errors_fp(i32 %63)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @PKCS7_free(i32* %66)
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @X509_free(i32* %68)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @EVP_PKEY_free(i32* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @BIO_free(i32* %72)
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @BIO_free(i32* %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @BIO_free(i32* %76)
  %78 = load i32, i32* %12, align 4
  ret i32 %78
}

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @ERR_load_crypto_strings(...) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32* @PEM_read_bio_X509(i32*, i32*, i32, i32*) #1

declare dso_local i32 @BIO_reset(i32*) #1

declare dso_local i32* @PEM_read_bio_PrivateKey(i32*, i32*, i32, i32*) #1

declare dso_local i32* @SMIME_read_PKCS7(i32*, i32*) #1

declare dso_local i32 @PKCS7_decrypt(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @PKCS7_free(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
