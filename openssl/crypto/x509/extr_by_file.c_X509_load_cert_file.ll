; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_by_file.c_X509_load_cert_file.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_by_file.c_X509_load_cert_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@X509_F_X509_LOAD_CERT_FILE = common dso_local global i32 0, align 4
@ERR_R_SYS_LIB = common dso_local global i32 0, align 4
@X509_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PEM_R_NO_START_LINE = common dso_local global i64 0, align 8
@ERR_R_PEM_LIB = common dso_local global i32 0, align 4
@X509_FILETYPE_ASN1 = common dso_local global i32 0, align 4
@ERR_R_ASN1_LIB = common dso_local global i32 0, align 4
@X509_R_BAD_X509_FILETYPE = common dso_local global i32 0, align 4
@X509_R_NO_CERTIFICATE_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_load_cert_file(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %12 = call i32 (...) @BIO_s_file()
  %13 = call i32* @BIO_new(i32 %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @BIO_read_filename(i32* %17, i8* %18)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @X509_F_X509_LOAD_CERT_FILE, align 4
  %23 = load i32, i32* @ERR_R_SYS_LIB, align 4
  %24 = call i32 @X509err(i32 %22, i32 %23)
  br label %102

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @X509_FILETYPE_PEM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @PEM_read_bio_X509_AUX(i32* %31, i32* null, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = call i32 (...) @ERR_peek_last_error()
  %37 = call i64 @ERR_GET_REASON(i32 %36)
  %38 = load i64, i64* @PEM_R_NO_START_LINE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (...) @ERR_clear_error()
  br label %63

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @X509_F_X509_LOAD_CERT_FILE, align 4
  %47 = load i32, i32* @ERR_R_PEM_LIB, align 4
  %48 = call i32 @X509err(i32 %46, i32 %47)
  br label %102

49:                                               ; preds = %30
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @X509_STORE_add_cert(i32 %52, i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %102

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @X509_free(i32* %61)
  store i32* null, i32** %11, align 8
  br label %30

63:                                               ; preds = %43
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %7, align 4
  br label %94

65:                                               ; preds = %25
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @X509_FILETYPE_ASN1, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load i32*, i32** %8, align 8
  %71 = call i32* @d2i_X509_bio(i32* %70, i32* null)
  store i32* %71, i32** %11, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @X509_F_X509_LOAD_CERT_FILE, align 4
  %76 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %77 = call i32 @X509err(i32 %75, i32 %76)
  br label %102

78:                                               ; preds = %69
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @X509_STORE_add_cert(i32 %81, i32* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  br label %102

87:                                               ; preds = %78
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %7, align 4
  br label %93

89:                                               ; preds = %65
  %90 = load i32, i32* @X509_F_X509_LOAD_CERT_FILE, align 4
  %91 = load i32, i32* @X509_R_BAD_X509_FILETYPE, align 4
  %92 = call i32 @X509err(i32 %90, i32 %91)
  br label %102

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %63
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* @X509_F_X509_LOAD_CERT_FILE, align 4
  %99 = load i32, i32* @X509_R_NO_CERTIFICATE_FOUND, align 4
  %100 = call i32 @X509err(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %94
  br label %102

102:                                              ; preds = %101, %89, %86, %74, %57, %45, %21
  %103 = load i32*, i32** %11, align 8
  %104 = call i32 @X509_free(i32* %103)
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @BIO_free(i32* %105)
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_file(...) #1

declare dso_local i64 @BIO_read_filename(i32*, i8*) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32* @PEM_read_bio_X509_AUX(i32*, i32*, i32*, i8*) #1

declare dso_local i64 @ERR_GET_REASON(i32) #1

declare dso_local i32 @ERR_peek_last_error(...) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @X509_STORE_add_cert(i32, i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32* @d2i_X509_bio(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
