; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeMsg_FinalizeHashedContent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeMsg_FinalizeHashedContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__, i32, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@CMSG_HASH_ALGORITHM_PARAM = common dso_local global i32 0, align 4
@CMSG_CRYPT_RELEASE_CONTEXT_FLAG = common dso_local global i32 0, align 4
@CMSG_DETACHED_FLAG = common dso_local global i32 0, align 4
@CMSG_CONTENT_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32*)* @CDecodeMsg_FinalizeHashedContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CDecodeMsg_FinalizeHashedContent(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = load i32, i32* @CMSG_HASH_ALGORITHM_PARAM, align 4
  %12 = call i64 @CryptMsgGetParam(%struct.TYPE_18__* %10, i32 %11, i32 0, %struct.TYPE_17__* null, i32* %6)
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_17__* @CryptMemAlloc(i32 %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = load i32, i32* @CMSG_HASH_ALGORITHM_PARAM, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = call i64 @CryptMsgGetParam(%struct.TYPE_18__* %15, i32 %16, i32 0, %struct.TYPE_17__* %17, i32* %6)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CertOIDToAlgId(i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @I_CryptGetDefaultCryptProv(i32 %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load i32, i32* @CMSG_CRYPT_RELEASE_CONTEXT_FLAG, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %42
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %40, %31
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = call i64 @CryptCreateHash(i32 %52, i32 %53, i32 0, i32 0, i32* %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %49
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CMSG_DETACHED_FLAG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  br label %85

79:                                               ; preds = %60
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CMSG_CONTENT_PARAM, align 4
  %84 = call i64 @ContextPropertyList_FindProperty(i32 %82, i32 %83, %struct.TYPE_16__* %9)
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %79, %68
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @CryptHashData(i32 %92, i32 %94, i32 %96, i32 0)
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %88, %85
  br label %99

99:                                               ; preds = %98, %49
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = call i32 @CryptMemFree(%struct.TYPE_17__* %100)
  %102 = load i64, i64* %8, align 8
  ret i64 %102
}

declare dso_local i64 @CryptMsgGetParam(%struct.TYPE_18__*, i32, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_17__* @CryptMemAlloc(i32) #1

declare dso_local i32 @CertOIDToAlgId(i32) #1

declare dso_local i32 @I_CryptGetDefaultCryptProv(i32) #1

declare dso_local i64 @CryptCreateHash(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ContextPropertyList_FindProperty(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i64 @CryptHashData(i32, i32, i32, i32) #1

declare dso_local i32 @CryptMemFree(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
