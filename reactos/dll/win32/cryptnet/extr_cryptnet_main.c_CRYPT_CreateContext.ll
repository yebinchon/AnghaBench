; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptnet/extr_cryptnet_main.c_CRYPT_CreateContext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptnet/extr_cryptnet_main.c_CRYPT_CreateContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@CERT_QUERY_OBJECT_BLOB = common dso_local global i32 0, align 4
@CERT_QUERY_FORMAT_FLAG_BINARY = common dso_local global i32 0, align 4
@CRYPT_E_NO_MATCH = common dso_local global i32 0, align 4
@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@CERT_STORE_ADD_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64, i32 (i8*, i8*, i32, i32*)*, i8**)* @CRYPT_CreateContext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_CreateContext(%struct.TYPE_8__* %0, i64 %1, i32 (i8*, i8*, i32, i32*)* %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i8*, i8*, i32, i32*)*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 (i8*, i8*, i32, i32*)* %2, i32 (i8*, i8*, i32, i32*)** %7, align 8
  store i8** %3, i8*** %8, align 8
  %14 = load i64, i64* @TRUE, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ERROR_INVALID_DATA, align 4
  %21 = call i32 @SetLastError(i32 %20)
  %22 = load i8**, i8*** %8, align 8
  store i8* null, i8** %22, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %9, align 8
  br label %131

24:                                               ; preds = %4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %63

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 0
  %34 = call i64 @decode_base64_blob(%struct.TYPE_7__* %33, %struct.TYPE_7__* %10)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32, i32* @CERT_QUERY_OBJECT_BLOB, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @CERT_QUERY_FORMAT_FLAG_BINARY, align 4
  %40 = load i8**, i8*** %8, align 8
  %41 = call i64 @CryptQueryObject(i32 %37, %struct.TYPE_7__* %10, i64 %38, i32 %39, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %40)
  store i64 %41, i64* %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CryptMemFree(i32 %43)
  br label %55

45:                                               ; preds = %29
  %46 = load i32, i32* @CERT_QUERY_OBJECT_BLOB, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 0
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* @CERT_QUERY_FORMAT_FLAG_BINARY, align 4
  %53 = load i8**, i8*** %8, align 8
  %54 = call i64 @CryptQueryObject(i32 %46, %struct.TYPE_7__* %50, i64 %51, i32 %52, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %53)
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %45, %36
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @CRYPT_E_NO_MATCH, align 4
  %60 = call i32 @SetLastError(i32 %59)
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %58, %55
  br label %130

63:                                               ; preds = %24
  %64 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %65 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %66 = call i8* @CertOpenStore(i32 %64, i32 0, i32 0, i32 %65, i32* null)
  store i8* %66, i8** %11, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %125

69:                                               ; preds = %63
  store i64 0, i64* %12, align 8
  br label %70

70:                                               ; preds = %121, %69
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %71, %75
  br i1 %76, label %77, label %124

77:                                               ; preds = %70
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %81
  %83 = call i64 @decode_base64_blob(%struct.TYPE_7__* %82, %struct.TYPE_7__* %10)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load i32, i32* @CERT_QUERY_OBJECT_BLOB, align 4
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* @CERT_QUERY_FORMAT_FLAG_BINARY, align 4
  %89 = call i64 @CryptQueryObject(i32 %86, %struct.TYPE_7__* %10, i64 %87, i32 %88, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %13)
  store i64 %89, i64* %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @CryptMemFree(i32 %91)
  br label %103

93:                                               ; preds = %77
  %94 = load i32, i32* @CERT_QUERY_OBJECT_BLOB, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %98
  %100 = load i64, i64* %6, align 8
  %101 = load i32, i32* @CERT_QUERY_FORMAT_FLAG_BINARY, align 4
  %102 = call i64 @CryptQueryObject(i32 %94, %struct.TYPE_7__* %99, i64 %100, i32 %101, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %13)
  store i64 %102, i64* %9, align 8
  br label %103

103:                                              ; preds = %93, %85
  %104 = load i64, i64* %9, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32 (i8*, i8*, i32, i32*)*, i32 (i8*, i8*, i32, i32*)** %7, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = load i32, i32* @CERT_STORE_ADD_ALWAYS, align 4
  %111 = call i32 %107(i8* %108, i8* %109, i32 %110, i32* null)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = load i64, i64* @FALSE, align 8
  store i64 %114, i64* %9, align 8
  br label %115

115:                                              ; preds = %113, %106
  br label %120

116:                                              ; preds = %103
  %117 = load i32, i32* @CRYPT_E_NO_MATCH, align 4
  %118 = call i32 @SetLastError(i32 %117)
  %119 = load i64, i64* @FALSE, align 8
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %116, %115
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %12, align 8
  br label %70

124:                                              ; preds = %70
  br label %127

125:                                              ; preds = %63
  %126 = load i64, i64* @FALSE, align 8
  store i64 %126, i64* %9, align 8
  br label %127

127:                                              ; preds = %125, %124
  %128 = load i8*, i8** %11, align 8
  %129 = load i8**, i8*** %8, align 8
  store i8* %128, i8** %129, align 8
  br label %130

130:                                              ; preds = %127, %62
  br label %131

131:                                              ; preds = %130, %19
  %132 = load i64, i64* %9, align 8
  ret i64 %132
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @decode_base64_blob(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i64 @CryptQueryObject(i32, %struct.TYPE_7__*, i64, i32, i32, i32*, i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @CryptMemFree(i32) #1

declare dso_local i8* @CertOpenStore(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
