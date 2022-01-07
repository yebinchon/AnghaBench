; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_rsa.c_SSL_use_RSAPrivateKey_file.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_rsa.c_SSL_use_RSAPrivateKey_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SSL_F_SSL_USE_RSAPRIVATEKEY_FILE = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@ERR_R_SYS_LIB = common dso_local global i32 0, align 4
@SSL_FILETYPE_ASN1 = common dso_local global i32 0, align 4
@ERR_R_ASN1_LIB = common dso_local global i32 0, align 4
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@ERR_R_PEM_LIB = common dso_local global i32 0, align 4
@SSL_R_BAD_SSL_FILETYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_use_RSAPrivateKey_file(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %11 = call i32 (...) @BIO_s_file()
  %12 = call i32* @BIO_new(i32 %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @SSL_F_SSL_USE_RSAPRIVATEKEY_FILE, align 4
  %17 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %18 = call i32 @SSLerr(i32 %16, i32 %17)
  br label %68

19:                                               ; preds = %3
  %20 = load i32*, i32** %9, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @BIO_read_filename(i32* %20, i8* %21)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @SSL_F_SSL_USE_RSAPRIVATEKEY_FILE, align 4
  %26 = load i32, i32* @ERR_R_SYS_LIB, align 4
  %27 = call i32 @SSLerr(i32 %25, i32 %26)
  br label %68

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SSL_FILETYPE_ASN1, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @d2i_RSAPrivateKey_bio(i32* %34, i32* null)
  store i32* %35, i32** %10, align 8
  br label %55

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* @ERR_R_PEM_LIB, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @PEM_read_bio_RSAPrivateKey(i32* %42, i32* null, i32 %45, i32 %48)
  store i32* %49, i32** %10, align 8
  br label %54

50:                                               ; preds = %36
  %51 = load i32, i32* @SSL_F_SSL_USE_RSAPRIVATEKEY_FILE, align 4
  %52 = load i32, i32* @SSL_R_BAD_SSL_FILETYPE, align 4
  %53 = call i32 @SSLerr(i32 %51, i32 %52)
  br label %68

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32*, i32** %10, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @SSL_F_SSL_USE_RSAPRIVATEKEY_FILE, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @SSLerr(i32 %59, i32 %60)
  br label %68

62:                                               ; preds = %55
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @SSL_use_RSAPrivateKey(%struct.TYPE_4__* %63, i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @RSA_free(i32* %66)
  br label %68

68:                                               ; preds = %62, %58, %50, %24, %15
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @BIO_free(i32* %69)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_file(...) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i64 @BIO_read_filename(i32*, i8*) #1

declare dso_local i32* @d2i_RSAPrivateKey_bio(i32*, i32*) #1

declare dso_local i32* @PEM_read_bio_RSAPrivateKey(i32*, i32*, i32, i32) #1

declare dso_local i32 @SSL_use_RSAPrivateKey(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
