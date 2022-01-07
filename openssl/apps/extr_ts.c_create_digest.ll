; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ts.c_create_digest.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ts.c_create_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"digest buffer\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"bad digest, %d bytes must be specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i8**)* @create_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_digest(i32* %0, i8* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [4096 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @EVP_MD_size(i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  %25 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %89

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @app_malloc(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = load i8**, i8*** %9, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @EVP_DigestInit(i32* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %85

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0
  %42 = call i32 @BIO_read(i32* %40, i8* %41, i32 4096)
  store i32 %42, i32* %14, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @EVP_DigestUpdate(i32* %45, i8* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %85

51:                                               ; preds = %44
  br label %39

52:                                               ; preds = %39
  %53 = load i32*, i32** %12, align 8
  %54 = load i8**, i8*** %9, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @EVP_DigestFinal(i32* %53, i8* %55, i32* null)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %85

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @EVP_MD_size(i32* %60)
  store i32 %61, i32* %10, align 4
  br label %83

62:                                               ; preds = %21
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @OPENSSL_hexstr2buf(i8* %63, i64* %15)
  %65 = load i8**, i8*** %9, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i8**, i8*** %9, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %15, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69, %62
  %75 = load i8**, i8*** %9, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @OPENSSL_free(i8* %76)
  %78 = load i8**, i8*** %9, align 8
  store i8* null, i8** %78, align 8
  %79 = load i32, i32* @bio_err, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @BIO_printf(i32 %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  store i32 0, i32* %5, align 4
  br label %89

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %83, %58, %50, %37
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @EVP_MD_CTX_free(i32* %86)
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %74, %28, %20
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i8* @app_malloc(i32, i8*) #1

declare dso_local i32 @EVP_DigestInit(i32*, i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestFinal(i32*, i8*, i32*) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i8*, i64*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i32) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
