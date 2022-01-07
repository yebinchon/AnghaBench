; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_oid.c_init_registered_oid_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_oid.c_init_registered_oid_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OIDInfo = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Software\\Microsoft\\Cryptography\\OID\\EncodingType 0\\CryptDllFindOIDInfo\00", align 1
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [84 x i8] c"adding oid %s, name %s, groupid %u, algid %u, extra %u, CNG algid %s, CNG extra %s\0A\00", align 1
@CRYPT_INSTALL_OID_INFO_BEFORE_FLAG = common dso_local global i64 0, align 8
@oidInfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_registered_oid_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_registered_oid_info() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.OIDInfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %10 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %11 = call i64 @RegOpenKeyExA(i32 %9, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 0, i32 %10, i32* %3)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %98

16:                                               ; preds = %0
  store i64 0, i64* %2, align 8
  br label %17

17:                                               ; preds = %94, %16
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %4, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i64, i64* %2, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %2, align 8
  %25 = trunc i64 %23 to i32
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = call i64 @RegEnumKeyA(i32 %22, i32 %25, i8* %21, i32 %26)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 2, i32* %8, align 4
  br label %91

32:                                               ; preds = %17
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %90

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = call %struct.OIDInfo* @read_oid_info(i32 %37, i8* %21, i64* %7)
  store %struct.OIDInfo* %38, %struct.OIDInfo** %6, align 8
  %39 = icmp ne %struct.OIDInfo* %38, null
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = load %struct.OIDInfo*, %struct.OIDInfo** %6, align 8
  %42 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @debugstr_a(i32 %44)
  %46 = load %struct.OIDInfo*, %struct.OIDInfo** %6, align 8
  %47 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @debugstr_w(i32 %49)
  %51 = load %struct.OIDInfo*, %struct.OIDInfo** %6, align 8
  %52 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.OIDInfo*, %struct.OIDInfo** %6, align 8
  %56 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.OIDInfo*, %struct.OIDInfo** %6, align 8
  %61 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.OIDInfo*, %struct.OIDInfo** %6, align 8
  %66 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @debugstr_w(i32 %68)
  %70 = load %struct.OIDInfo*, %struct.OIDInfo** %6, align 8
  %71 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @debugstr_w(i32 %73)
  %75 = call i32 @TRACE(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %50, i32 %54, i32 %59, i32 %64, i32 %69, i32 %74)
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @CRYPT_INSTALL_OID_INFO_BEFORE_FLAG, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %40
  %81 = load %struct.OIDInfo*, %struct.OIDInfo** %6, align 8
  %82 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %81, i32 0, i32 0
  %83 = call i32 @list_add_head(i32* @oidInfo, i32* %82)
  br label %88

84:                                               ; preds = %40
  %85 = load %struct.OIDInfo*, %struct.OIDInfo** %6, align 8
  %86 = getelementptr inbounds %struct.OIDInfo, %struct.OIDInfo* %85, i32 0, i32 0
  %87 = call i32 @list_add_tail(i32* @oidInfo, i32* %86)
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %36
  br label %90

90:                                               ; preds = %89, %32
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %31
  %92 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %8, align 4
  switch i32 %93, label %99 [
    i32 0, label %94
    i32 2, label %95
  ]

94:                                               ; preds = %91
  br label %17

95:                                               ; preds = %91
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @RegCloseKey(i32 %96)
  br label %98

98:                                               ; preds = %95, %15
  ret void

99:                                               ; preds = %91
  unreachable
}

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @RegEnumKeyA(i32, i32, i8*, i32) #1

declare dso_local %struct.OIDInfo* @read_oid_info(i32, i8*, i64*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
