; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_CRYPT_CreateKeyProv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_cert.c_CRYPT_CreateKeyProv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"rpcrt4\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"UuidCreate\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"UuidToStringA\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"RpcStringFreeA\00", align 1
@RPC_S_OK = common dso_local global i64 0, align 8
@RPC_S_UUID_LOCAL_ONLY = common dso_local global i64 0, align 8
@MS_DEF_PROV_A = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_NEWKEYSET = common dso_local global i32 0, align 4
@AT_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CRYPT_CreateKeyProv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_CreateKeyProv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64 (i32*)*, align 8
  %4 = alloca i64 (i32*, i8**)*, align 8
  %5 = alloca i32 (i8**)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %11 = call i64 @LoadLibraryA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %78

14:                                               ; preds = %0
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @GetProcAddress(i64 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i64 (i32*)*
  store i64 (i32*)* %18, i64 (i32*)** %3, align 8
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @GetProcAddress(i64 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i64 (i32*, i8**)*
  store i64 (i32*, i8**)* %22, i64 (i32*, i8**)** %4, align 8
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @GetProcAddress(i64 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32 (i8**)*
  store i32 (i8**)* %26, i32 (i8**)** %5, align 8
  %27 = load i64 (i32*)*, i64 (i32*)** %3, align 8
  %28 = icmp ne i64 (i32*)* %27, null
  br i1 %28, label %29, label %75

29:                                               ; preds = %14
  %30 = load i64 (i32*, i8**)*, i64 (i32*, i8**)** %4, align 8
  %31 = icmp ne i64 (i32*, i8**)* %30, null
  br i1 %31, label %32, label %75

32:                                               ; preds = %29
  %33 = load i32 (i8**)*, i32 (i8**)** %5, align 8
  %34 = icmp ne i32 (i8**)* %33, null
  br i1 %34, label %35, label %75

35:                                               ; preds = %32
  %36 = load i64 (i32*)*, i64 (i32*)** %3, align 8
  %37 = call i64 %36(i32* %6)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @RPC_S_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @RPC_S_UUID_LOCAL_ONLY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %41, %35
  %46 = load i64 (i32*, i8**)*, i64 (i32*, i8**)** %4, align 8
  %47 = call i64 %46(i32* %6, i8** %8)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @RPC_S_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load i32, i32* @MS_DEF_PROV_A, align 4
  %55 = load i32, i32* @PROV_RSA_FULL, align 4
  %56 = load i32, i32* @CRYPT_NEWKEYSET, align 4
  %57 = call i64 @CryptAcquireContextA(i32* %1, i32 %53, i32 %54, i32 %55, i32 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @AT_SIGNATURE, align 4
  %63 = call i64 @CryptGenKey(i32 %61, i32 %62, i32 0, i32* %10)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @CryptDestroyKey(i32 %67)
  br label %69

69:                                               ; preds = %66, %60
  br label %70

70:                                               ; preds = %69, %51
  %71 = load i32 (i8**)*, i32 (i8**)** %5, align 8
  %72 = call i32 %71(i8** %8)
  br label %73

73:                                               ; preds = %70, %45
  br label %74

74:                                               ; preds = %73, %41
  br label %75

75:                                               ; preds = %74, %32, %29, %14
  %76 = load i64, i64* %2, align 8
  %77 = call i32 @FreeLibrary(i64 %76)
  br label %78

78:                                               ; preds = %75, %0
  %79 = load i32, i32* %1, align 4
  ret i32 %79
}

declare dso_local i64 @LoadLibraryA(i8*) #1

declare dso_local i32 @GetProcAddress(i64, i8*) #1

declare dso_local i64 @CryptAcquireContextA(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @CryptGenKey(i32, i32, i32, i32*) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i32 @FreeLibrary(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
