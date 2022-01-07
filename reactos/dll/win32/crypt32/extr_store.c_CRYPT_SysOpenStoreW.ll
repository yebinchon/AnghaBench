; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_store.c_CRYPT_SysOpenStoreW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_store.c_CRYPT_SysOpenStoreW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"(%ld, %08x, %s)\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@CERT_SYSTEM_STORE_LOCATION_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@CERT_STORE_PROV_SYSTEM_REGISTRY_W = common dso_local global i32 0, align 4
@CERT_STORE_PROV_COLLECTION = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@CERT_STORE_READONLY_FLAG = common dso_local global i32 0, align 4
@CERT_PHYSICAL_STORE_ADD_ENABLE_FLAG = common dso_local global i32 0, align 4
@CERT_STORE_NO_CRYPT_RELEASE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i32, i8*)* @CRYPT_SysOpenStoreW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CRYPT_SysOpenStoreW(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @debugstr_w(i8* %13)
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %11, i32 %12, i32 %14)
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %20 = call i32 @SetLastError(i32 %19)
  store i32* null, i32** %4, align 8
  br label %105

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @CERT_SYSTEM_STORE_LOCATION_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %27 [
    i32 132, label %25
    i32 134, label %25
    i32 135, label %25
    i32 129, label %25
    i32 128, label %25
    i32 133, label %25
    i32 130, label %25
    i32 131, label %25
  ]

25:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21
  %26 = load i64, i64* @TRUE, align 8
  store i64 %26, i64* %9, align 8
  br label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %29 = call i32 @SetLastError(i32 %28)
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %27, %25
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %103

34:                                               ; preds = %31
  %35 = load i32, i32* @CERT_STORE_PROV_SYSTEM_REGISTRY_W, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32* @CertOpenStore(i32 %35, i32 0, i32 0, i32 %36, i8* %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %102

41:                                               ; preds = %34
  %42 = load i32, i32* @CERT_STORE_PROV_COLLECTION, align 4
  %43 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %44 = call i32* @CertOpenStore(i32 %42, i32 0, i32 0, i32 %43, i8* null)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CERT_STORE_READONLY_FLAG, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @CERT_PHYSICAL_STORE_ADD_ENABLE_FLAG, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32 [ 0, %51 ], [ %53, %52 ]
  %56 = call i32 @CertAddStoreToCollection(i32* %45, i32* %46, i32 %55, i32 0)
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @CertCloseStore(i32* %57, i32 0)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @CERT_SYSTEM_STORE_LOCATION_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 134
  br i1 %62, label %63, label %90

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, -135
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, 132
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @CERT_STORE_PROV_SYSTEM_REGISTRY_W, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = call i32* @CertOpenStore(i32 %68, i32 0, i32 0, i32 %69, i8* %70)
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %63
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @CERT_STORE_READONLY_FLAG, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @CERT_PHYSICAL_STORE_ADD_ENABLE_FLAG, align 4
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i32 [ 0, %81 ], [ %83, %82 ]
  %86 = call i32 @CertAddStoreToCollection(i32* %75, i32* %76, i32 %85, i32 0)
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @CertCloseStore(i32* %87, i32 0)
  br label %89

89:                                               ; preds = %84, %63
  br label %90

90:                                               ; preds = %89, %54
  %91 = load i64, i64* %5, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @CERT_STORE_NO_CRYPT_RELEASE_FLAG, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @CryptReleaseContext(i64 %99, i32 0)
  br label %101

101:                                              ; preds = %98, %93, %90
  br label %102

102:                                              ; preds = %101, %34
  br label %103

103:                                              ; preds = %102, %31
  %104 = load i32*, i32** %8, align 8
  store i32* %104, i32** %4, align 8
  br label %105

105:                                              ; preds = %103, %18
  %106 = load i32*, i32** %4, align 8
  ret i32* %106
}

declare dso_local i32 @TRACE(i8*, i64, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @CertOpenStore(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @CertAddStoreToCollection(i32*, i32*, i32, i32) #1

declare dso_local i32 @CertCloseStore(i32*, i32) #1

declare dso_local i32 @CryptReleaseContext(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
