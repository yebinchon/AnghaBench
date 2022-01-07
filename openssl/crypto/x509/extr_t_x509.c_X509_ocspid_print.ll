; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_t_x509.c_X509_ocspid_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_t_x509.c_X509_ocspid_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"        Subject OCSP hash: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\0A        Public key OCSP hash: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_ocspid_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  %15 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %104

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = call i32* @X509_get_subject_name(i32* %24)
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @i2d_X509_NAME(i32* %26, i8** null)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @OPENSSL_malloc(i32 %28)
  store i8* %29, i8** %7, align 8
  store i8* %29, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %104

32:                                               ; preds = %23
  %33 = load i32*, i32** %13, align 8
  %34 = call i32 @i2d_X509_NAME(i32* %33, i8** %7)
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (...) @EVP_sha1()
  %38 = call i32 @EVP_Digest(i8* %35, i32 %36, i8* %18, i32* null, i32 %37, i32* null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %104

41:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %18, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %104

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @OPENSSL_free(i8* %61)
  store i8* null, i8** %6, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %104

67:                                               ; preds = %60
  %68 = load i32*, i32** %5, align 8
  %69 = call i32* @X509_get0_pubkey_bitstr(i32* %68)
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %104

73:                                               ; preds = %67
  %74 = load i32*, i32** %12, align 8
  %75 = call i8* @ASN1_STRING_get0_data(i32* %74)
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @ASN1_STRING_length(i32* %76)
  %78 = call i32 (...) @EVP_sha1()
  %79 = call i32 @EVP_Digest(i8* %75, i32 %77, i8* %18, i32* null, i32 %78, i32* null)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  br label %104

82:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %98, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %18, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %104

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %83

101:                                              ; preds = %83
  %102 = load i32*, i32** %4, align 8
  %103 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %107

104:                                              ; preds = %96, %81, %72, %66, %55, %40, %31, %22
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @OPENSSL_free(i8* %105)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #2

declare dso_local i32* @X509_get_subject_name(i32*) #2

declare dso_local i32 @i2d_X509_NAME(i32*, i8**) #2

declare dso_local i8* @OPENSSL_malloc(i32) #2

declare dso_local i32 @EVP_Digest(i8*, i32, i8*, i32*, i32, i32*) #2

declare dso_local i32 @EVP_sha1(...) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i32* @X509_get0_pubkey_bitstr(i32*) #2

declare dso_local i8* @ASN1_STRING_get0_data(i32*) #2

declare dso_local i32 @ASN1_STRING_length(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
