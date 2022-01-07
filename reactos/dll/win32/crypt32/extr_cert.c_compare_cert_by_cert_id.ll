; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_compare_cert_by_cert_id.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_compare_cert_by_cert_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@CERT_KEY_IDENTIFIER_PROP_ID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32, i8*)* @compare_cert_by_cert_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_cert_by_cert_id(%struct.TYPE_14__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %9, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %95 [
    i32 130, label %18
    i32 128, label %44
    i32 129, label %52
  ]

18:                                               ; preds = %4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = call i32 @CertCompareCertificateName(i32 %21, i32* %25, i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %18
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = call i32 @CertCompareIntegerBlob(i32* %37, i32* %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %33, %18
  br label %97

44:                                               ; preds = %4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = call i32 @compare_cert_by_sha1_hash(%struct.TYPE_14__* %45, i32 %46, i32 %47, i32* %50)
  store i32 %51, i32* %10, align 4
  br label %97

52:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = load i32, i32* @CERT_KEY_IDENTIFIER_PROP_ID, align 4
  %55 = call i32 @CertGetCertificateContextProperty(%struct.TYPE_14__* %53, i32 %54, i32* null, i32* %11)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %59, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = call i32* @CryptMemAlloc(i32 %67)
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = load i32, i32* @CERT_KEY_IDENTIFIER_PROP_ID, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @CertGetCertificateContextProperty(%struct.TYPE_14__* %72, i32 %73, i32* %74, i32* %11)
  %76 = load i32*, i32** %12, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @memcmp(i32* %76, i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @CryptMemFree(i32* %87)
  br label %91

89:                                               ; preds = %66
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %89, %71
  br label %94

92:                                               ; preds = %58, %52
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %92, %91
  br label %97

95:                                               ; preds = %4
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %95, %94, %44, %43
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local i32 @CertCompareCertificateName(i32, i32*, i32*) #1

declare dso_local i32 @CertCompareIntegerBlob(i32*, i32*) #1

declare dso_local i32 @compare_cert_by_sha1_hash(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @CertGetCertificateContextProperty(%struct.TYPE_14__*, i32, i32*, i32*) #1

declare dso_local i32* @CryptMemAlloc(i32) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @CryptMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
