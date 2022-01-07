; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_field_format_public_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_field_format_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32* }

@CRYPT_OID_INFO_OID_KEY = common dso_local global i32 0, align 4
@MAX_STRING_LEN = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@IDS_FIELD_PUBLIC_KEY_FORMAT = common dso_local global i32 0, align 4
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_STRING = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*)* @field_format_public_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @field_format_public_key(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i64], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i32* null, i32** %4, align 8
  %9 = load i32, i32* @CRYPT_OID_INFO_OID_KEY, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_12__* @CryptFindOIDInfo(i32 %9, i32 %16, i32 0)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %3, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %78

20:                                               ; preds = %1
  %21 = load i32, i32* @MAX_STRING_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %5, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %6, align 8
  %25 = load i32, i32* @hInstance, align 4
  %26 = load i32, i32* @IDS_FIELD_PUBLIC_KEY_FORMAT, align 4
  %27 = call i32 @ARRAY_SIZE(i32* %24)
  %28 = call i64 @LoadStringW(i32 %25, i32 %26, i32* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %20
  %31 = call i32 @lstrlenW(i32* %24)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @lstrlenW(i32* %34)
  %36 = add nsw i32 %31, %35
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 8
  %45 = add nsw i32 %36, %44
  store i32 %45, i32* %7, align 4
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32* @HeapAlloc(i32 %46, i32 0, i32 %50)
  store i32* %51, i32** %4, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %30
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = ptrtoint i32* %57 to i64
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %58, i64* %59, align 16
  %60 = load i32, i32* @X509_ASN_ENCODING, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = call i64 @CertGetPublicKeyLength(i32 %60, %struct.TYPE_14__* %64)
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %65, i64* %66, align 8
  %67 = load i32, i32* @FORMAT_MESSAGE_FROM_STRING, align 4
  %68 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %69 = or i32 %67, %68
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %73 = bitcast i64* %72 to i32*
  %74 = call i32 @FormatMessageW(i32 %69, i32* %24, i32 0, i32 0, i32* %70, i32 %71, i32* %73)
  br label %75

75:                                               ; preds = %54, %30
  br label %76

76:                                               ; preds = %75, %20
  %77 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %77)
  br label %78

78:                                               ; preds = %76, %1
  %79 = load i32*, i32** %4, align 8
  ret i32* %79
}

declare dso_local %struct.TYPE_12__* @CryptFindOIDInfo(i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @CertGetPublicKeyLength(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @FormatMessageW(i32, i32*, i32, i32, i32*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
