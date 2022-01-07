; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_QueryEmbeddedMessageObject.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_QueryEmbeddedMessageObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 (%struct.TYPE_9__*, i64*, i32, i32*, i32*)*, i8*, i64, i32* }
%struct.TYPE_10__ = type { i32*, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CERT_QUERY_OBJECT_FILE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"don't know what to do for type %d embedded signed messages\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@CERT_QUERY_OBJECT_BLOB = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED = common dso_local global i32 0, align 4
@CERT_QUERY_FORMAT_FLAG_BINARY = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_PKCS7_SIGNED_EMBED = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i64, i64*, i64*, i32*, i32*)* @CRYPT_QueryEmbeddedMessageObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_QueryEmbeddedMessageObject(i64 %0, i8* %1, i64 %2, i64* %3, i64* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_9__, align 8
  %20 = alloca %struct.TYPE_9__, align 8
  %21 = alloca %struct.TYPE_10__, align 8
  %22 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %18, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i64 @debugstr_w(i8* %24)
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @CERT_QUERY_OBJECT_FILE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %7
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @WARN(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @E_INVALIDARG, align 4
  %34 = call i32 @SetLastError(i32 %33)
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %8, align 8
  br label %124

36:                                               ; preds = %7
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* @GENERIC_READ, align 4
  %39 = load i32, i32* @FILE_SHARE_READ, align 4
  %40 = load i32, i32* @OPEN_EXISTING, align 4
  %41 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %42 = call i64 @CreateFileW(i8* %37, i32 %38, i32 %39, i32* null, i32 %40, i32 %41, i32* null)
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %120

46:                                               ; preds = %36
  %47 = load i8*, i8** %10, align 8
  %48 = load i64, i64* %16, align 8
  %49 = call i64 @CryptSIPRetrieveSubjectGuid(i8* %47, i64 %48, i32* %17)
  store i64 %49, i64* %18, align 8
  %50 = load i64, i64* %18, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %117

52:                                               ; preds = %46
  %53 = call i32 @memset(%struct.TYPE_9__* %19, i32 0, i32 40)
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 40, i32* %54, align 8
  %55 = call i64 @CryptSIPLoad(i32* %17, i32 0, %struct.TYPE_9__* %19)
  store i64 %55, i64* %18, align 8
  %56 = load i64, i64* %18, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %116

58:                                               ; preds = %52
  %59 = call i32 @memset(%struct.TYPE_9__* %20, i32 0, i32 40)
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 40, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  store i32* %17, i32** %61, align 8
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  store i64 %62, i64* %63, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %67 = load i64 (%struct.TYPE_9__*, i64*, i32, i32*, i32*)*, i64 (%struct.TYPE_9__*, i64*, i32, i32*, i32*)** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %69 = call i64 %67(%struct.TYPE_9__* %20, i64* %22, i32 0, i32* %68, i32* null)
  store i64 %69, i64* %18, align 8
  %70 = load i64, i64* %18, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %115

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32* @CryptMemAlloc(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32* %75, i32** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %110

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %82 = load i64 (%struct.TYPE_9__*, i64*, i32, i32*, i32*)*, i64 (%struct.TYPE_9__*, i64*, i32, i32*, i32*)** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 %82(%struct.TYPE_9__* %20, i64* %22, i32 0, i32* %83, i32* %85)
  store i64 %86, i64* %18, align 8
  %87 = load i64, i64* %18, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %80
  %90 = load i32, i32* @CERT_QUERY_OBJECT_BLOB, align 4
  %91 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED, align 4
  %92 = load i32, i32* @CERT_QUERY_FORMAT_FLAG_BINARY, align 4
  %93 = load i64*, i64** %12, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = call i64 @CRYPT_QueryMessageObject(i32 %90, %struct.TYPE_10__* %21, i32 %91, i32 %92, i64* %93, i32* null, i32* null, i32* %94, i32* %95)
  store i64 %96, i64* %18, align 8
  %97 = load i64, i64* %18, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %89
  %100 = load i64*, i64** %13, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i64, i64* @CERT_QUERY_CONTENT_PKCS7_SIGNED_EMBED, align 8
  %104 = load i64*, i64** %13, align 8
  store i64 %103, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %99, %89
  br label %106

106:                                              ; preds = %105, %80
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @CryptMemFree(i32* %108)
  br label %114

110:                                              ; preds = %72
  %111 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %112 = call i32 @SetLastError(i32 %111)
  %113 = load i64, i64* @FALSE, align 8
  store i64 %113, i64* %18, align 8
  br label %114

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %114, %58
  br label %116

116:                                              ; preds = %115, %52
  br label %117

117:                                              ; preds = %116, %46
  %118 = load i64, i64* %16, align 8
  %119 = call i32 @CloseHandle(i64 %118)
  br label %120

120:                                              ; preds = %117, %36
  %121 = load i64, i64* %18, align 8
  %122 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %121)
  %123 = load i64, i64* %18, align 8
  store i64 %123, i64* %8, align 8
  br label %124

124:                                              ; preds = %120, %30
  %125 = load i64, i64* %8, align 8
  ret i64 %125
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @debugstr_w(i8*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @CryptSIPRetrieveSubjectGuid(i8*, i64, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @CryptSIPLoad(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32* @CryptMemAlloc(i32) #1

declare dso_local i64 @CRYPT_QueryMessageObject(i32, %struct.TYPE_10__*, i32, i32, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CryptMemFree(i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
