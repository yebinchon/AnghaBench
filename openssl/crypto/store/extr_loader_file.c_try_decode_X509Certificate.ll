; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_try_decode_X509Certificate.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_try_decode_X509Certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PEM_STRING_X509_TRUSTED = common dso_local global i32 0, align 4
@PEM_STRING_X509_OLD = common dso_local global i32 0, align 4
@PEM_STRING_X509 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i64, i8**, i32*, i32*, i8*)* @try_decode_X509Certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @try_decode_X509Certificate(i8* %0, i8* %1, i8* %2, i64 %3, i8** %4, i32* %5, i32* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8** %4, i8*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32 1, i32* %20, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* @PEM_STRING_X509_TRUSTED, align 4
  %26 = call i64 @strcmp(i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %20, align 4
  br label %41

29:                                               ; preds = %23
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @PEM_STRING_X509_OLD, align 4
  %32 = call i64 @strcmp(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* @PEM_STRING_X509, align 4
  %37 = call i64 @strcmp(i8* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32* null, i32** %9, align 8
  br label %66

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32*, i32** %15, align 8
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %8
  %44 = load i64, i64* %13, align 8
  %45 = call i32* @d2i_X509_AUX(i32* null, i8** %12, i64 %44)
  store i32* %45, i32** %19, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %20, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i64, i64* %13, align 8
  %52 = call i32* @d2i_X509(i32* null, i8** %12, i64 %51)
  store i32* %52, i32** %19, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %50, %43
  %55 = load i32*, i32** %15, align 8
  store i32 1, i32* %55, align 4
  %56 = load i32*, i32** %19, align 8
  %57 = call i32* @OSSL_STORE_INFO_new_CERT(i32* %56)
  store i32* %57, i32** %18, align 8
  br label %58

58:                                               ; preds = %54, %50, %47
  %59 = load i32*, i32** %18, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %19, align 8
  %63 = call i32 @X509_free(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %18, align 8
  store i32* %65, i32** %9, align 8
  br label %66

66:                                               ; preds = %64, %39
  %67 = load i32*, i32** %9, align 8
  ret i32* %67
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @d2i_X509_AUX(i32*, i8**, i64) #1

declare dso_local i32* @d2i_X509(i32*, i8**, i64) #1

declare dso_local i32* @OSSL_STORE_INFO_new_CERT(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
