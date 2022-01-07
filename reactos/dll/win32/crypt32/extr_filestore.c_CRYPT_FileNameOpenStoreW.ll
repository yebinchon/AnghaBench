; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_filestore.c_CRYPT_FileNameOpenStoreW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_filestore.c_CRYPT_FileNameOpenStoreW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"(%ld, %08x, %s)\0A\00", align 1
@ERROR_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@CERT_STORE_READONLY_FLAG = common dso_local global i32 0, align 4
@CERT_FILE_STORE_COMMIT_ENABLE_FLAG = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@CREATE_NEW = common dso_local global i32 0, align 4
@CERT_STORE_OPEN_EXISTING_FLAG = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@OPEN_ALWAYS = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@CERT_QUERY_OBJECT_FILE = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_FLAG_CERT = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_FLAG_SERIALIZED_STORE = common dso_local global i32 0, align 4
@CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED = common dso_local global i32 0, align 4
@CERT_QUERY_FORMAT_FLAG_ALL = common dso_local global i32 0, align 4
@CERT_STORE_SAVE_AS_PKCS7 = common dso_local global i32 0, align 4
@CERT_STORE_SAVE_AS_STORE = common dso_local global i32 0, align 4
@CRYPT_FileNameOpenStoreW.spc = internal constant [4 x i8] c"spc\00", align 1
@CRYPT_FileNameOpenStoreW.p7c = internal constant [4 x i8] c"p7c\00", align 1
@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@CERT_STORE_NO_CRYPT_RELEASE_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CRYPT_FileNameOpenStoreW(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @debugstr_w(i8* %22)
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %21, i32 %23)
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %29 = call i32 @SetLastError(i32 %28)
  store i32* null, i32** %4, align 8
  br label %165

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CERT_STORE_READONLY_FLAG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @CERT_FILE_STORE_COMMIT_ENABLE_FLAG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @E_INVALIDARG, align 4
  %42 = call i32 @SetLastError(i32 %41)
  store i32* null, i32** %4, align 8
  br label %165

43:                                               ; preds = %35, %30
  %44 = load i32, i32* @GENERIC_READ, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @CERT_FILE_STORE_COMMIT_ENABLE_FLAG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @GENERIC_WRITE, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @CREATE_NEW, align 4
  store i32 %59, i32* %11, align 4
  br label %70

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @CERT_STORE_OPEN_EXISTING_FLAG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @OPEN_EXISTING, align 4
  store i32 %66, i32* %11, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @OPEN_ALWAYS, align 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %67, %65
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @FILE_SHARE_READ, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %76 = call i64 @CreateFileW(i8* %71, i32 %72, i32 %73, i32* null, i32 %74, i32 %75, i32* null)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %163

80:                                               ; preds = %70
  store i32* null, i32** %13, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @GetFileSize(i64 %81, i32* null)
  store i32 %82, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %80
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @CloseHandle(i64 %86)
  %88 = load i32, i32* @CERT_QUERY_OBJECT_FILE, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_CERT, align 4
  %91 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_SERIALIZED_STORE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @CERT_QUERY_FORMAT_FLAG_ALL, align 4
  %96 = call i64 @CryptQueryObject(i32 %88, i8* %89, i32 %94, i32 %95, i32 0, i32* null, i32* %16, i32* null, i32** %13, i32* null, i32* null)
  store i64 %96, i64* %17, align 8
  %97 = load i64, i64* %17, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %85
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @CERT_STORE_SAVE_AS_PKCS7, align 4
  store i32 %104, i32* %15, align 4
  br label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @CERT_STORE_SAVE_AS_STORE, align 4
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @FILE_SHARE_READ, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %113 = call i64 @CreateFileW(i8* %108, i32 %109, i32 %110, i32* null, i32 %111, i32 %112, i32* null)
  store i64 %113, i64* %12, align 8
  br label %114

114:                                              ; preds = %107, %85
  br label %142

115:                                              ; preds = %80
  %116 = load i8*, i8** %9, align 8
  %117 = call i8* @strrchrW(i8* %116, i8 signext 46)
  store i8* %117, i8** %18, align 8
  %118 = load i8*, i8** %18, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load i8*, i8** %18, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %18, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = call i32 @lstrcmpiW(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @CRYPT_FileNameOpenStoreW.spc, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i8*, i8** %18, align 8
  %128 = call i32 @lstrcmpiW(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @CRYPT_FileNameOpenStoreW.p7c, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126, %120
  %131 = load i32, i32* @CERT_STORE_SAVE_AS_PKCS7, align 4
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %130, %126
  br label %133

133:                                              ; preds = %132, %115
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* @CERT_STORE_SAVE_AS_STORE, align 4
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %136, %133
  %139 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %140 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %141 = call i32* @CertOpenStore(i32 %139, i32 0, i32 0, i32 %140, i32* null)
  store i32* %141, i32** %13, align 8
  br label %142

142:                                              ; preds = %138, %114
  %143 = load i32*, i32** %13, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %162

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = load i32*, i32** %13, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32* @CRYPT_CreateFileStore(i32 %146, i32* %147, i64 %148, i32 %149)
  store i32* %150, i32** %8, align 8
  %151 = load i64, i64* %5, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %145
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @CERT_STORE_NO_CRYPT_RELEASE_FLAG, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = load i64, i64* %5, align 8
  %160 = call i32 @CryptReleaseContext(i64 %159, i32 0)
  br label %161

161:                                              ; preds = %158, %153, %145
  br label %162

162:                                              ; preds = %161, %142
  br label %163

163:                                              ; preds = %162, %70
  %164 = load i32*, i32** %8, align 8
  store i32* %164, i32** %4, align 8
  br label %165

165:                                              ; preds = %163, %40, %27
  %166 = load i32*, i32** %4, align 8
  ret i32* %166
}

declare dso_local i32 @TRACE(i8*, i64, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @CryptQueryObject(i32, i8*, i32, i32, i32, i32*, i32*, i32*, i32**, i32*, i32*) #1

declare dso_local i8* @strrchrW(i8*, i8 signext) #1

declare dso_local i32 @lstrcmpiW(i8*, i8*) #1

declare dso_local i32* @CertOpenStore(i32, i32, i32, i32, i32*) #1

declare dso_local i32* @CRYPT_CreateFileStore(i32, i32*, i64, i32) #1

declare dso_local i32 @CryptReleaseContext(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
