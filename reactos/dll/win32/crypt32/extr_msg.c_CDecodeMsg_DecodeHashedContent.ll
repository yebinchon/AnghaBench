; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeMsg_DecodeHashedContent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeMsg_DecodeHashedContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i64 }

@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@CMSG_VERSION_PARAM = common dso_local global i32 0, align 4
@CMSG_HASH_ALGORITHM_PARAM = common dso_local global i32 0, align 4
@CMSG_INNER_CONTENT_TYPE_PARAM = common dso_local global i32 0, align 4
@CMSG_DETACHED_FLAG = common dso_local global i32 0, align 4
@CMSG_CONTENT_PARAM = common dso_local global i32 0, align 4
@CMSG_HASH_DATA_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @CDecodeMsg_DecodeHashedContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CDecodeMsg_DecodeHashedContent(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %15 = bitcast %struct.TYPE_18__** %6 to %struct.TYPE_18__*
  %16 = call i64 @CRYPT_AsnDecodePKCSDigestedData(i32 %10, i32 %13, i32 %14, i32* null, %struct.TYPE_18__* %15, i32* %7)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %100

19:                                               ; preds = %2
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CMSG_VERSION_PARAM, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 3
  %26 = call i32 @ContextPropertyList_SetProperty(i32 %22, i32 %23, i32* %25, i32 4)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = load i32, i32* @CMSG_HASH_ALGORITHM_PARAM, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = call i32 @CDecodeMsg_SaveAlgorithmID(%struct.TYPE_20__* %27, i32 %28, i32* %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CMSG_INNER_CONTENT_TYPE_PARAM, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %19
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @strlen(i64 %50)
  %52 = add nsw i32 %51, 1
  br label %54

53:                                               ; preds = %19
  br label %54

54:                                               ; preds = %53, %46
  %55 = phi i32 [ %52, %46 ], [ 0, %53 ]
  %56 = call i32 @ContextPropertyList_SetProperty(i32 %34, i32 %35, i32* %40, i32 %55)
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CMSG_DETACHED_FLAG, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %54
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = call i32 @CDecodeMsg_DecodeDataContent(%struct.TYPE_20__* %72, %struct.TYPE_14__* %75)
  br label %83

77:                                               ; preds = %64
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CMSG_CONTENT_PARAM, align 4
  %82 = call i32 @ContextPropertyList_SetProperty(i32 %80, i32 %81, i32* null, i32 0)
  br label %83

83:                                               ; preds = %77, %71
  br label %84

84:                                               ; preds = %83, %54
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CMSG_HASH_DATA_PARAM, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ContextPropertyList_SetProperty(i32 %87, i32 %88, i32* %92, i32 %96)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %99 = call i32 @LocalFree(%struct.TYPE_18__* %98)
  br label %100

100:                                              ; preds = %84, %2
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local i64 @CRYPT_AsnDecodePKCSDigestedData(i32, i32, i32, i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ContextPropertyList_SetProperty(i32, i32, i32*, i32) #1

declare dso_local i32 @CDecodeMsg_SaveAlgorithmID(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @CDecodeMsg_DecodeDataContent(%struct.TYPE_20__*, %struct.TYPE_14__*) #1

declare dso_local i32 @LocalFree(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
