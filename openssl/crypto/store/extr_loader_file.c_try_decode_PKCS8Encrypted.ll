; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_try_decode_PKCS8Encrypted.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_loader_file.c_try_decode_PKCS8Encrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i64, i64 }

@PEM_BUFSIZE = common dso_local global i32 0, align 4
@PEM_STRING_PKCS8 = common dso_local global i32 0, align 4
@OSSL_STORE_F_TRY_DECODE_PKCS8ENCRYPTED = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PKCS8 decrypt password\00", align 1
@OSSL_STORE_R_BAD_PASSWORD_READ = common dso_local global i32 0, align 4
@PEM_STRING_PKCS8INF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i64, i8**, i32*, i32*, i8*)* @try_decode_PKCS8Encrypted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @try_decode_PKCS8Encrypted(i8* %0, i8* %1, i8* %2, i64 %3, i8** %4, i32* %5, i32* %6, i8* %7) #0 {
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
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_7__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8** %4, i8*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* null, i32** %18, align 8
  %29 = load i32, i32* @PEM_BUFSIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %19, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %20, align 8
  store i8* null, i8** %21, align 8
  store i32* null, i32** %22, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %23, align 8
  store i32* null, i32** %24, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %25, align 8
  store i8* null, i8** %26, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* @PEM_STRING_PKCS8, align 4
  %38 = call i64 @strcmp(i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32* null, i32** %9, align 8
  store i32 1, i32* %28, align 4
  br label %110

41:                                               ; preds = %35
  %42 = load i32*, i32** %15, align 8
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %8
  %44 = load i64, i64* %13, align 8
  %45 = call i32* @d2i_X509_SIG(i32* null, i8** %12, i64 %44)
  store i32* %45, i32** %18, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32* null, i32** %9, align 8
  store i32 1, i32* %28, align 4
  br label %110

48:                                               ; preds = %43
  %49 = load i32*, i32** %15, align 8
  store i32 1, i32* %49, align 4
  %50 = call %struct.TYPE_7__* (...) @BUF_MEM_new()
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %25, align 8
  %51 = icmp eq %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @OSSL_STORE_F_TRY_DECODE_PKCS8ENCRYPTED, align 4
  %54 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %55 = call i32 @OSSL_STOREerr(i32 %53, i32 %54)
  br label %105

56:                                               ; preds = %48
  %57 = load i32*, i32** %16, align 8
  %58 = load i32, i32* @PEM_BUFSIZE, align 4
  %59 = load i8*, i8** %17, align 8
  %60 = call i8* @file_get_pass(i32* %57, i8* %32, i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %59)
  store i8* %60, i8** %21, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @OSSL_STORE_F_TRY_DECODE_PKCS8ENCRYPTED, align 4
  %64 = load i32, i32* @OSSL_STORE_R_BAD_PASSWORD_READ, align 4
  %65 = call i32 @OSSL_STOREerr(i32 %63, i32 %64)
  br label %105

66:                                               ; preds = %56
  %67 = load i32*, i32** %18, align 8
  %68 = call i32 @X509_SIG_get0(i32* %67, i32** %22, %struct.TYPE_8__** %23)
  %69 = load i32*, i32** %22, align 8
  %70 = load i8*, i8** %21, align 8
  %71 = load i8*, i8** %21, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PKCS12_pbe_crypt(i32* %69, i8* %70, i32 %72, i32 %75, i32 %78, i8** %26, i32* %27, i32 0)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %66
  br label %105

82:                                               ; preds = %66
  %83 = load i8*, i8** %26, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %27, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i64 %87, i64* %91, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = call i32 @X509_SIG_free(i32* %92)
  %94 = load i32, i32* @PEM_STRING_PKCS8INF, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %96 = call i32* @ossl_store_info_new_EMBEDDED(i32 %94, %struct.TYPE_7__* %95)
  store i32* %96, i32** %24, align 8
  %97 = load i32*, i32** %24, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %82
  %100 = load i32, i32* @OSSL_STORE_F_TRY_DECODE_PKCS8ENCRYPTED, align 4
  %101 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %102 = call i32 @OSSL_STOREerr(i32 %100, i32 %101)
  br label %105

103:                                              ; preds = %82
  %104 = load i32*, i32** %24, align 8
  store i32* %104, i32** %9, align 8
  store i32 1, i32* %28, align 4
  br label %110

105:                                              ; preds = %99, %81, %62, %52
  %106 = load i32*, i32** %18, align 8
  %107 = call i32 @X509_SIG_free(i32* %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %109 = call i32 @BUF_MEM_free(%struct.TYPE_7__* %108)
  store i32* null, i32** %9, align 8
  store i32 1, i32* %28, align 4
  br label %110

110:                                              ; preds = %105, %103, %47, %40
  %111 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32*, i32** %9, align 8
  ret i32* %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32* @d2i_X509_SIG(i32*, i8**, i64) #2

declare dso_local %struct.TYPE_7__* @BUF_MEM_new(...) #2

declare dso_local i32 @OSSL_STOREerr(i32, i32) #2

declare dso_local i8* @file_get_pass(i32*, i8*, i32, i8*, i8*) #2

declare dso_local i32 @X509_SIG_get0(i32*, i32**, %struct.TYPE_8__**) #2

declare dso_local i32 @PKCS12_pbe_crypt(i32*, i8*, i32, i32, i32, i8**, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @X509_SIG_free(i32*) #2

declare dso_local i32* @ossl_store_info_new_EMBEDDED(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @BUF_MEM_free(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
