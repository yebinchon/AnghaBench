; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_filestore.c_CRYPT_FileOpenStore.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_filestore.c_CRYPT_FileOpenStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"(%ld, %08x, %p)\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@CERT_STORE_DELETE_FLAG = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@CERT_STORE_READONLY_FLAG = common dso_local global i32 0, align 4
@CERT_FILE_STORE_COMMIT_ENABLE_FLAG = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@CERT_STORE_SAVE_AS_STORE = common dso_local global i32 0, align 4
@CERT_STORE_NO_CRYPT_RELEASE_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CRYPT_FileOpenStore(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %14, i32 %15, i8* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %22 = call i32 @SetLastError(i32 %21)
  store i32* null, i32** %4, align 8
  br label %98

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CERT_STORE_DELETE_FLAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @E_INVALIDARG, align 4
  %30 = call i32 @SetLastError(i32 %29)
  store i32* null, i32** %4, align 8
  br label %98

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @CERT_STORE_READONLY_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @CERT_FILE_STORE_COMMIT_ENABLE_FLAG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @E_INVALIDARG, align 4
  %43 = call i32 @SetLastError(i32 %42)
  store i32* null, i32** %4, align 8
  br label %98

44:                                               ; preds = %36, %31
  %45 = call i32 (...) @GetCurrentProcess()
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = call i32 (...) @GetCurrentProcess()
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @CERT_STORE_READONLY_FLAG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @GENERIC_READ, align 4
  br label %59

55:                                               ; preds = %44
  %56 = load i32, i32* @GENERIC_READ, align 4
  %57 = load i32, i32* @GENERIC_WRITE, align 4
  %58 = or i32 %56, %57
  br label %59

59:                                               ; preds = %55, %53
  %60 = phi i32 [ %54, %53 ], [ %58, %55 ]
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i64 @DuplicateHandle(i32 %45, i32 %47, i32 %48, i32* %9, i32 %60, i32 %61, i32 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %59
  %65 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %66 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %67 = call i64 @CertOpenStore(i32 %65, i32 0, i32 0, i32 %66, i32* null)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @CRYPT_ReadSerializedStoreFromFile(i32 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @CERT_STORE_SAVE_AS_STORE, align 4
  %80 = call i32* @CRYPT_CreateFileStore(i32 %76, i64 %77, i32 %78, i32 %79)
  store i32* %80, i32** %8, align 8
  %81 = load i64, i64* %5, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @CERT_STORE_NO_CRYPT_RELEASE_FLAG, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @CryptReleaseContext(i64 %89, i32 0)
  br label %91

91:                                               ; preds = %88, %83, %75
  br label %92

92:                                               ; preds = %91, %70
  br label %93

93:                                               ; preds = %92, %64
  br label %94

94:                                               ; preds = %93, %59
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %95)
  %97 = load i32*, i32** %8, align 8
  store i32* %97, i32** %4, align 8
  br label %98

98:                                               ; preds = %94, %41, %28, %20
  %99 = load i32*, i32** %4, align 8
  ret i32* %99
}

declare dso_local i32 @TRACE(i8*, i32*, ...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @DuplicateHandle(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i64 @CertOpenStore(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @CRYPT_ReadSerializedStoreFromFile(i32, i64) #1

declare dso_local i32* @CRYPT_CreateFileStore(i32, i64, i32, i32) #1

declare dso_local i32 @CryptReleaseContext(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
