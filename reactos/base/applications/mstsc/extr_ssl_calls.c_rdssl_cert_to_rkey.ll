; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_cert_to_rkey.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_ssl_calls.c_rdssl_cert_to_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MS_ENHANCED_PROV = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@NTE_BAD_KEYSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i32] [i32 77, i32 83, i32 84, i32 83, i32 67, i32 0], align 4
@CRYPT_NEWKEYSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"CryptAcquireContext call failed with %lx\0A\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@PKCS_7_ASN_ENCODING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"CryptImportPublicKeyInfoEx call failed with %lx\0A\00", align 1
@PUBLICKEYBLOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"CryptExportKey call failed with %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rdssl_cert_to_rkey(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @MS_ENHANCED_PROV, align 4
  %13 = load i32, i32* @PROV_RSA_FULL, align 4
  %14 = call i64 @CryptAcquireContext(i32* %6, i8* null, i32 %12, i32 %13, i32 0)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = call i64 (...) @GetLastError()
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @NTE_BAD_KEYSET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @MS_ENHANCED_PROV, align 4
  %24 = load i32, i32* @PROV_RSA_FULL, align 4
  %25 = load i32, i32* @CRYPT_NEWKEYSET, align 4
  %26 = call i64 @CryptAcquireContext(i32* %6, i8* bitcast ([6 x i32]* @.str to i8*), i32 %23, i32 %24, i32 %25)
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %22, %17
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = call i64 (...) @GetLastError()
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  store i32* null, i32** %3, align 8
  br label %92

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @X509_ASN_ENCODING, align 4
  %38 = load i32, i32* @PKCS_7_ASN_ENCODING, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i64 @CryptImportPublicKeyInfoEx(i32 %36, i32 %39, i32* %43, i32 0, i32 0, i32* null, i32* %7)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %35
  %48 = call i64 (...) @GetLastError()
  store i64 %48, i64* %11, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @CryptReleaseContext(i32 %49, i32 0)
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  store i32* null, i32** %3, align 8
  br label %92

53:                                               ; preds = %35
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PUBLICKEYBLOB, align 4
  %56 = call i64 @CryptExportKey(i32 %54, i32 0, i32 %55, i32 0, i32* null, i64* %10)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = call i64 (...) @GetLastError()
  store i64 %60, i64* %11, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @CryptDestroyKey(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @CryptReleaseContext(i32 %63, i32 0)
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  store i32* null, i32** %3, align 8
  br label %92

67:                                               ; preds = %53
  %68 = load i64, i64* %10, align 8
  %69 = call i32* @g_malloc(i64 %68, i32 0)
  store i32* %69, i32** %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @PUBLICKEYBLOB, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = call i64 @CryptExportKey(i32 %70, i32 0, i32 %71, i32 0, i32* %72, i64* %10)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %67
  %77 = call i64 (...) @GetLastError()
  store i64 %77, i64* %11, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @g_free(i32* %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @CryptDestroyKey(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @CryptReleaseContext(i32 %82, i32 0)
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  store i32* null, i32** %3, align 8
  br label %92

86:                                               ; preds = %67
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @CryptDestroyKey(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @CryptReleaseContext(i32 %89, i32 0)
  %91 = load i32*, i32** %9, align 8
  store i32* %91, i32** %3, align 8
  br label %92

92:                                               ; preds = %86, %76, %59, %47, %31
  %93 = load i32*, i32** %3, align 8
  ret i32* %93
}

declare dso_local i64 @CryptAcquireContext(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @CryptImportPublicKeyInfoEx(i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

declare dso_local i64 @CryptExportKey(i32, i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i32* @g_malloc(i64, i32) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
