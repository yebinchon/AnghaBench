; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_QueryContextBlob.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_QueryContextBlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i32, i32, i32, i32, i32, i8**)* }
%struct.TYPE_9__ = type { i64 (i32, i32, i32, i32, i32, i8**)* }
%struct.TYPE_8__ = type { i64 (i32, i32, i32, i32, i32, i8**)* }
%struct.TYPE_6__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@CERT_QUERY_CONTENT_FLAG_CERT = common dso_local global i32 0, align 4
@pCertInterface = common dso_local global %struct.TYPE_7__* null, align 8
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_STORE_ADD_ALWAYS = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_CERT = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_FLAG_CRL = common dso_local global i32 0, align 4
@pCRLInterface = common dso_local global %struct.TYPE_9__* null, align 8
@CERT_QUERY_CONTENT_CRL = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_FLAG_CTL = common dso_local global i32 0, align 4
@pCTLInterface = common dso_local global %struct.TYPE_8__* null, align 8
@CERT_QUERY_CONTENT_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, i32, i32*, i8**)* @CRYPT_QueryContextBlob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_QueryContextBlob(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_CERT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCertInterface, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64 (i32, i32, i32, i32, i32, i8**)*, i64 (i32, i32, i32, i32, i32, i8**)** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @X509_ASN_ENCODING, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CERT_STORE_ADD_ALWAYS, align 4
  %30 = load i8**, i8*** %10, align 8
  %31 = call i64 %20(i32 %21, i32 %22, i32 %25, i32 %28, i32 %29, i8** %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %17
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @CERT_QUERY_CONTENT_CERT, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34, %17
  br label %41

41:                                               ; preds = %40, %5
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_CRL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pCRLInterface, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64 (i32, i32, i32, i32, i32, i8**)*, i64 (i32, i32, i32, i32, i32, i8**)** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @X509_ASN_ENCODING, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CERT_STORE_ADD_ALWAYS, align 4
  %62 = load i8**, i8*** %10, align 8
  %63 = call i64 %52(i32 %53, i32 %54, i32 %57, i32 %60, i32 %61, i8** %62)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %49
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @CERT_QUERY_CONTENT_CRL, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66, %49
  br label %73

73:                                               ; preds = %72, %44, %41
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %105, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_CTL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %76
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pCTLInterface, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64 (i32, i32, i32, i32, i32, i8**)*, i64 (i32, i32, i32, i32, i32, i8**)** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @X509_ASN_ENCODING, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CERT_STORE_ADD_ALWAYS, align 4
  %94 = load i8**, i8*** %10, align 8
  %95 = call i64 %84(i32 %85, i32 %86, i32 %89, i32 %92, i32 %93, i8** %94)
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %81
  %99 = load i32*, i32** %9, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @CERT_QUERY_CONTENT_CTL, align 4
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %98, %81
  br label %105

105:                                              ; preds = %104, %76, %73
  %106 = load i64, i64* %11, align 8
  ret i64 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
