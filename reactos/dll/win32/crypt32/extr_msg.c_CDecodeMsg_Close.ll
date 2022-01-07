; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeMsg_Close.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeMsg_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, i64, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_18__, %struct.TYPE_13__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@CMSG_CRYPT_RELEASE_CONTEXT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @CDecodeMsg_Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CDecodeMsg_Close(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %4 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %3, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CMSG_CRYPT_RELEASE_CONTEXT_FLAG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @CryptReleaseContext(i64 %20, i32 0)
  br label %22

22:                                               ; preds = %17, %9, %1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %86 [
    i32 129, label %26
    i32 130, label %39
    i32 128, label %67
  ]

26:                                               ; preds = %22
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @CryptDestroyHash(i32 %36)
  br label %38

38:                                               ; preds = %32, %26
  br label %86

39:                                               ; preds = %22
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @CryptReleaseContext(i64 %51, i32 0)
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @LocalFree(i32 %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @CryptMemFree(i32 %65)
  br label %86

67:                                               ; preds = %22
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @LocalFree(i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = call i32 @CSignedMsgData_CloseHandles(%struct.TYPE_18__* %83)
  br label %85

85:                                               ; preds = %74, %67
  br label %86

86:                                               ; preds = %22, %85, %53, %38
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CryptMemFree(i32 %90)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @CryptMemFree(i32 %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ContextPropertyList_Free(i32 %99)
  ret void
}

declare dso_local i32 @CryptReleaseContext(i64, i32) #1

declare dso_local i32 @CryptDestroyHash(i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @CryptMemFree(i32) #1

declare dso_local i32 @CSignedMsgData_CloseHandles(%struct.TYPE_18__*) #1

declare dso_local i32 @ContextPropertyList_Free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
