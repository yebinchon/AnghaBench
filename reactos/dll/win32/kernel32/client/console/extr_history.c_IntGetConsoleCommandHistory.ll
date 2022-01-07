; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/console/extr_history.c_IntGetConsoleCommandHistory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/console/extr_history.c_IntGetConsoleCommandHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CsrAllocateCaptureBuffer failed!\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@CONSRV_SERVERDLL_INDEX = common dso_local global i32 0, align 4
@ConsolepGetCommandHistory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32*, i64)* @IntGetConsoleCommandHistory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IntGetConsoleCommandHistory(i32 %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %11, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @wcslen(i32* %22)
  br label %27

24:                                               ; preds = %18
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @strlen(i32* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %39 = call i32 @SetLastError(i32 %38)
  store i64 0, i64* %5, align 8
  br label %129

40:                                               ; preds = %34
  %41 = call %struct.TYPE_10__* (...) @NtCurrentPeb()
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i64 4, i64 4
  %57 = mul i64 %52, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  store i64 %61, i64* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = call i32 @CsrAllocateCaptureBuffer(i32 2, i64 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %40
  %78 = call i32 @DPRINT1(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %80 = call i32 @SetLastError(i32 %79)
  store i64 0, i64* %5, align 8
  br label %129

81:                                               ; preds = %40
  %82 = load i32, i32* %12, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = ptrtoint i32* %83 to i32
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = ptrtoint i32* %89 to i32
  %91 = call i32 @CsrCaptureMessageBuffer(i32 %82, i32 %84, i32 %87, i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = call i32 @CsrAllocateMessagePointer(i32 %92, i64 %95, i32* %97)
  %99 = ptrtoint %struct.TYPE_9__* %10 to i32
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @CONSRV_SERVERDLL_INDEX, align 4
  %102 = load i32, i32* @ConsolepGetCommandHistory, align 4
  %103 = call i32 @CSR_CREATE_API_NUMBER(i32 %101, i32 %102)
  %104 = call i32 @CsrClientCallServer(i32 %99, i32 %100, i32 %103, i32 48)
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @NT_SUCCESS(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %81
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @CsrFreeCaptureBuffer(i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @BaseSetLastNTError(i32 %113)
  store i64 0, i64* %5, align 8
  br label %129

115:                                              ; preds = %81
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @RtlCopyMemory(i32 %116, i32 %119, i64 %122)
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @CsrFreeCaptureBuffer(i32 %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %5, align 8
  br label %129

129:                                              ; preds = %115, %109, %77, %37
  %130 = load i64, i64* %5, align 8
  ret i64 %130
}

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local %struct.TYPE_10__* @NtCurrentPeb(...) #1

declare dso_local i32 @CsrAllocateCaptureBuffer(i32, i64) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @CsrCaptureMessageBuffer(i32, i32, i32, i32) #1

declare dso_local i32 @CsrAllocateMessagePointer(i32, i64, i32*) #1

declare dso_local i32 @CsrClientCallServer(i32, i32, i32, i32) #1

declare dso_local i32 @CSR_CREATE_API_NUMBER(i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @CsrFreeCaptureBuffer(i32) #1

declare dso_local i32 @BaseSetLastNTError(i32) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
