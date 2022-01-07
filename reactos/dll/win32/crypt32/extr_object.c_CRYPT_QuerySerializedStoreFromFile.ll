; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_QuerySerializedStoreFromFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_QuerySerializedStoreFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_SERIALIZED_STORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*, i32*)* @CRYPT_QuerySerializedStoreFromFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_QuerySerializedStoreFromFile(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @debugstr_w(i32 %15)
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @GENERIC_READ, align 4
  %20 = load i32, i32* @FILE_SHARE_READ, align 4
  %21 = load i32, i32* @OPEN_EXISTING, align 4
  %22 = call i64 @CreateFileW(i32 %18, i32 %19, i32 %20, i32* null, i32 %21, i32 0, i32* null)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %5
  %27 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %28 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %29 = call i32 @CertOpenStore(i32 %27, i32 0, i32 0, i32 %28, i32* null)
  store i32 %29, i32* %13, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @CRYPT_ReadSerializedStoreFromFile(i64 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @X509_ASN_ENCODING, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @CERT_QUERY_CONTENT_SERIALIZED_STORE, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @CertDuplicateStore(i32 %51)
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %26
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @CertCloseStore(i32 %56, i32 0)
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @CloseHandle(i64 %58)
  br label %60

60:                                               ; preds = %55, %5
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %12, align 4
  ret i32 %63
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @CertOpenStore(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CRYPT_ReadSerializedStoreFromFile(i64, i32) #1

declare dso_local i32 @CertDuplicateStore(i32) #1

declare dso_local i32 @CertCloseStore(i32, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
