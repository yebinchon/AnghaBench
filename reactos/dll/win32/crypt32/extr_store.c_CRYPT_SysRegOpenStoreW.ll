; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_store.c_CRYPT_SysRegOpenStoreW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_store.c_CRYPT_SysRegOpenStoreW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPT_SysRegOpenStoreW.fmt = internal constant [6 x i8] c"%s\\%s\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"(%ld, %08x, %s)\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@CERT_SYSTEM_STORE_LOCATION_MASK = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH = common dso_local global i8* null, align 8
@rootW = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"CERT_SYSTEM_STORE_CURRENT_SERVICE, %s: stub\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"CERT_SYSTEM_STORE_SERVICES, %s: stub\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"CERT_SYSTEM_STORE_USERS, %s: stub\0A\00", align 1
@CERT_GROUP_POLICY_SYSTEM_STORE_REGPATH = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"CERT_SYSTEM_STORE_LOCAL_MACHINE_ENTERPRISE, %s: stub\0A\00", align 1
@CERT_STORE_READONLY_FLAG = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@CERT_STORE_OPEN_EXISTING_FLAG = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@REG_OPENED_EXISTING_KEY = common dso_local global i32 0, align 4
@ERROR_FILE_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i8*)* @CRYPT_SysRegOpenStoreW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CRYPT_SysRegOpenStoreW(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %8, align 8
  store i32* null, i32** %10, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @debugstr_w(i8* %20)
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %21)
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @E_INVALIDARG, align 4
  %27 = call i32 @SetLastError(i32 %26)
  store i32* null, i32** %4, align 8
  br label %146

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CERT_SYSTEM_STORE_LOCATION_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %67 [
    i32 132, label %32
    i32 134, label %42
    i32 135, label %45
    i32 129, label %49
    i32 128, label %53
    i32 133, label %57
    i32 130, label %60
    i32 131, label %63
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i8*, i8** @CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH, align 8
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @rootW, align 4
  %37 = call i32 @lstrcmpiW(i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = call i32 (...) @CRYPT_ImportSystemRootCertsToReg()
  br label %41

41:                                               ; preds = %39, %32
  br label %70

42:                                               ; preds = %28
  %43 = load i32, i32* @HKEY_CURRENT_USER, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i8*, i8** @CERT_LOCAL_MACHINE_SYSTEM_STORE_REGPATH, align 8
  store i8* %44, i8** %12, align 8
  br label %70

45:                                               ; preds = %28
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @debugstr_w(i8* %46)
  %48 = call i32 @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32* null, i32** %4, align 8
  br label %146

49:                                               ; preds = %28
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @debugstr_w(i8* %50)
  %52 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  store i32* null, i32** %4, align 8
  br label %146

53:                                               ; preds = %28
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @debugstr_w(i8* %54)
  %56 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  store i32* null, i32** %4, align 8
  br label %146

57:                                               ; preds = %28
  %58 = load i32, i32* @HKEY_CURRENT_USER, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i8*, i8** @CERT_GROUP_POLICY_SYSTEM_STORE_REGPATH, align 8
  store i8* %59, i8** %12, align 8
  br label %70

60:                                               ; preds = %28
  %61 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i8*, i8** @CERT_GROUP_POLICY_SYSTEM_STORE_REGPATH, align 8
  store i8* %62, i8** %12, align 8
  br label %70

63:                                               ; preds = %28
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @debugstr_w(i8* %64)
  %66 = call i32 @FIXME(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  store i32* null, i32** %4, align 8
  br label %146

67:                                               ; preds = %28
  %68 = load i32, i32* @E_INVALIDARG, align 4
  %69 = call i32 @SetLastError(i32 %68)
  store i32* null, i32** %4, align 8
  br label %146

70:                                               ; preds = %60, %57, %42, %41
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @lstrlenW(i8* %71)
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @lstrlenW(i8* %73)
  %75 = add nsw i32 %72, %74
  %76 = add nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 1
  %79 = trunc i64 %78 to i32
  %80 = call i64 @CryptMemAlloc(i32 %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %144

83:                                               ; preds = %70
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @CERT_STORE_READONLY_FLAG, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @KEY_READ, align 4
  br label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @KEY_ALL_ACCESS, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  store i32 %93, i32* %15, align 4
  %94 = load i64, i64* %9, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @wsprintfW(i64 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @CRYPT_SysRegOpenStoreW.fmt, i64 0, i64 0), i8* %95, i8* %96)
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @CERT_STORE_OPEN_EXISTING_FLAG, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load i32, i32* %11, align 4
  %104 = load i64, i64* %9, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @RegOpenKeyExW(i32 %103, i64 %104, i32 0, i32 %105, i32* %14)
  store i32 %106, i32* %13, align 4
  br label %128

107:                                              ; preds = %92
  %108 = load i32, i32* %11, align 4
  %109 = load i64, i64* %9, align 8
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @RegCreateKeyExW(i32 %108, i64 %109, i32 0, i32* null, i32 0, i32 %110, i32* null, i32* %14, i32* %16)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @REG_OPENED_EXISTING_KEY, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @RegCloseKey(i32 %124)
  %126 = load i32, i32* @ERROR_FILE_EXISTS, align 4
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %123, %119, %114, %107
  br label %128

128:                                              ; preds = %127, %102
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32* @CRYPT_RegOpenStore(i32 %132, i32 %133, i32 %134)
  store i32* %135, i32** %10, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @RegCloseKey(i32 %136)
  br label %141

138:                                              ; preds = %128
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @SetLastError(i32 %139)
  br label %141

141:                                              ; preds = %138, %131
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @CryptMemFree(i64 %142)
  br label %144

144:                                              ; preds = %141, %70
  %145 = load i32*, i32** %10, align 8
  store i32* %145, i32** %4, align 8
  br label %146

146:                                              ; preds = %144, %67, %63, %53, %49, %45, %25
  %147 = load i32*, i32** %4, align 8
  ret i32* %147
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @lstrcmpiW(i8*, i32) #1

declare dso_local i32 @CRYPT_ImportSystemRootCertsToReg(...) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @CryptMemAlloc(i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @wsprintfW(i64, i8*, i8*, i8*) #1

declare dso_local i32 @RegOpenKeyExW(i32, i64, i32, i32, i32*) #1

declare dso_local i32 @RegCreateKeyExW(i32, i64, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32* @CRYPT_RegOpenStore(i32, i32, i32) #1

declare dso_local i32 @CryptMemFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
