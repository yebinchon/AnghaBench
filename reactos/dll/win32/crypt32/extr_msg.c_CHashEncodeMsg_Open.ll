; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CHashEncodeMsg_Open.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CHashEncodeMsg_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32*, i64 }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@E_INVALIDARG = common dso_local global i32 0, align 4
@CRYPT_E_UNKNOWN_ALGO = common dso_local global i32 0, align 4
@CMSG_CRYPT_RELEASE_CONTEXT_FLAG = common dso_local global i32 0, align 4
@CHashEncodeMsg_Close = common dso_local global i32 0, align 4
@CHashEncodeMsg_GetParam = common dso_local global i32 0, align 4
@CHashEncodeMsg_Update = common dso_local global i32 0, align 4
@CRYPT_DefaultMsgControl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32, i8*, i32, i32)* @CHashEncodeMsg_Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @CHashEncodeMsg_Open(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %11, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 24
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @E_INVALIDARG, align 4
  %23 = call i32 @SetLastError(i32 %22)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %91

24:                                               ; preds = %4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @CertOIDToAlgId(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @CRYPT_E_UNKNOWN_ALGO, align 4
  %33 = call i32 @SetLastError(i32 %32)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %91

34:                                               ; preds = %24
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  br label %56

43:                                               ; preds = %34
  %44 = load i32, i32* %13, align 4
  %45 = call i64 @I_CryptGetDefaultCryptProv(i32 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @E_INVALIDARG, align 4
  %50 = call i32 @SetLastError(i32 %49)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %91

51:                                               ; preds = %43
  %52 = load i32, i32* @CMSG_CRYPT_RELEASE_CONTEXT_FLAG, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %51, %39
  %57 = call %struct.TYPE_11__* @CryptMemAlloc(i32 32)
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %10, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = bitcast %struct.TYPE_11__* %61 to i32*
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @CHashEncodeMsg_Close, align 4
  %66 = load i32, i32* @CHashEncodeMsg_GetParam, align 4
  %67 = load i32, i32* @CHashEncodeMsg_Update, align 4
  %68 = load i32, i32* @CRYPT_DefaultMsgControl, align 4
  %69 = call i32 @CryptMsgBase_Init(i32* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = call i32 @CryptCreateHash(i64 %79, i32 %80, i32 0, i32 0, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %60
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %87 = call i32 @CryptMsgClose(%struct.TYPE_11__* %86)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  br label %88

88:                                               ; preds = %85, %60
  br label %89

89:                                               ; preds = %88, %56
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %5, align 8
  br label %91

91:                                               ; preds = %89, %48, %31, %21
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %92
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CertOIDToAlgId(i32) #1

declare dso_local i64 @I_CryptGetDefaultCryptProv(i32) #1

declare dso_local %struct.TYPE_11__* @CryptMemAlloc(i32) #1

declare dso_local i32 @CryptMsgBase_Init(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CryptCreateHash(i64, i32, i32, i32, i32*) #1

declare dso_local i32 @CryptMsgClose(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
