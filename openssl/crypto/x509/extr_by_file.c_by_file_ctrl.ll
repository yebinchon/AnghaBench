; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_by_file.c_by_file_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_by_file.c_by_file_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_FILETYPE_DEFAULT = common dso_local global i64 0, align 8
@X509_FILETYPE_PEM = common dso_local global i64 0, align 8
@X509_F_BY_FILE_CTRL = common dso_local global i32 0, align 4
@X509_R_LOADING_DEFAULTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64, i8**)* @by_file_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @by_file_ctrl(i32* %0, i32 %1, i8* %2, i64 %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %66 [
    i32 128, label %14
  ]

14:                                               ; preds = %5
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @X509_FILETYPE_DEFAULT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = call i32 (...) @X509_get_default_cert_file_env()
  %20 = call i8* @ossl_safe_getenv(i32 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i64, i64* @X509_FILETYPE_PEM, align 8
  %27 = call i32 @X509_load_cert_crl_file(i32* %24, i8* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %11, align 4
  br label %37

30:                                               ; preds = %18
  %31 = load i32*, i32** %6, align 8
  %32 = call i8* (...) @X509_get_default_cert_file()
  %33 = load i64, i64* @X509_FILETYPE_PEM, align 8
  %34 = call i32 @X509_load_cert_crl_file(i32* %31, i8* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %30, %23
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @X509_F_BY_FILE_CTRL, align 4
  %42 = load i32, i32* @X509_R_LOADING_DEFAULTS, align 4
  %43 = call i32 @X509err(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %37
  br label %65

45:                                               ; preds = %14
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @X509_FILETYPE_PEM, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* @X509_FILETYPE_PEM, align 8
  %53 = call i32 @X509_load_cert_crl_file(i32* %50, i8* %51, i64 %52)
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %11, align 4
  br label %64

56:                                               ; preds = %45
  %57 = load i32*, i32** %6, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @X509_load_cert_file(i32* %57, i8* %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %56, %49
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %5, %65
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local i8* @ossl_safe_getenv(i32) #1

declare dso_local i32 @X509_get_default_cert_file_env(...) #1

declare dso_local i32 @X509_load_cert_crl_file(i32*, i8*, i64) #1

declare dso_local i8* @X509_get_default_cert_file(...) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @X509_load_cert_file(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
